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
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/cloudwatch"
)

// DisableAlarm disables an alarm
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     alarmName is the name of the alarm
// Output:
//     If successful, nil
//     Otherwise, the error from a call to DisableAlarmActions
func DisableAlarm(sess *session.Session, alarmName *string) error {
    // Create new CloudWatch client.
    svc := cloudwatch.New(sess)

    _, err := svc.DisableAlarmActions(&cloudwatch.DisableAlarmActionsInput{
        AlarmNames: []*string{
            alarmName,
        },
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    alarmName := flag.String("a", "", "The name of the alarm to disable")
    flag.Parse()

    if *alarmName == "" {
        fmt.Println("You must supply an alarm name to disable")
        return
    }

    // Initialize a session that the SDK uses to load
    // credentials from the shared credentials file ~/.aws/credentials
    // and configuration from the shared configuration file ~/.aws/config.
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := DisableAlarm(sess, alarmName)
    if err != nil {
        fmt.Println("Could not disable alarm " + *alarmName)
    } else {
        fmt.Println("Disabled alarm " + *alarmName)
    }
}
