/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

   This file is licensed under the Apache License, Version 2.0 (the "License").
   You may not use this file except in compliance with the License. A copy of
   the License is located at

    http://aws.amazon.com/apache2.0/

   This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied. See the License for the
   specific language governing permissions and limitations under the License.
*/
package main

import (
    "encoding/json"
    "flag"
    "fmt"
    "io/ioutil"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/cloudwatchevents"
)

// Event represents the information for a new event
type Event struct {
    Details []struct {
        Key   string `json:"Key"`
        Value string `json:"Value"`
    } `json:"Details"`
    DetailType string `json:"DetailType"`
    Source     string `json:"Source"`
}

var eventFile = "event.json"

func getEventInfo() (Event, error) {
    var e Event

    content, err := ioutil.ReadFile(eventFile)
    if err != nil {
        return e, err
    }

    // Convert []byte to string
    text := string(content)

    // Marshall JSON string in text into global struct
    err = json.Unmarshal([]byte(text), &e)
    if err != nil {
        return e, err
    }

    // Make sure we got the info we need
    if e.DetailType == "" {
        e.DetailType = "appRequestSubmitted"
    }

    if e.Source == "" {
        e.Source = "com.mycompany.myapp"
    }

    if e.Details == nil {
        d := []byte(`"{ "key1": "value1", "key2": "value2" }`)
        e.DetailType = string(d[:])
    }

    return e, nil
}

// CreateEvent creates an event
func CreateEvent(sess *session.Session, lambdaARN *string, event Event) error {
    myDetails := "{ "
    for _, d := range event.Details {
        myDetails = myDetails + "\"" + d.Key + "\": \"" + d.Value + "\","
    }

    myDetails = myDetails + " }"

    svc := cloudwatchevents.New(sess)

    _, err := svc.PutEvents(&cloudwatchevents.PutEventsInput{
        Entries: []*cloudwatchevents.PutEventsRequestEntry{
            &cloudwatchevents.PutEventsRequestEntry{
                Detail:     aws.String(myDetails),
                DetailType: aws.String(event.DetailType),
                Resources: []*string{
                    lambdaARN,
                },
                Source: aws.String(event.Source),
            },
        },
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    lambdaARN := flag.String("l", "", "The ARN of the Lambda function")
    flag.Parse()

    if *lambdaARN == "" {
        fmt.Println("You must supply a Lambda ARN with -l LAMBDA-ARN")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    event, err := getEventInfo()
    if err != nil {
        fmt.Println("Got an error calling getEventInfo:")
        fmt.Println(err)
        return
    }

    err = CreateEvent(sess, lambdaARN, event)
    if err != nil {
        fmt.Println("Could not create event:")
        fmt.Println(err)
        return
    }

    fmt.Println("Created event")
}
