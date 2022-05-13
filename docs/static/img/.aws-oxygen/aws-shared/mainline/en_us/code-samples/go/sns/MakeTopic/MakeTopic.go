// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/sns"
    "github.com/aws/aws-sdk-go/service/sns/snsiface"
)

// MakeTopic creates an Amazon SNS topic
// Inputs:
//     svc is an Amazon SNS service client
//     topic is the name of the topic
// Output:
//     If success, information about the topics and nil
//     Otherwise, nil and an error from the call to CreateTopic
func MakeTopic(svc snsiface.SNSAPI, topic *string) (*sns.CreateTopicOutput, error) {
    results, err := svc.CreateTopic(&sns.CreateTopicInput{
        Name: topic,
    })

    return results, err
}

func main() {
    topic := flag.String("t", "", "The name of the topic")
    flag.Parse()

    if *topic == "" {
        fmt.Println("You must supply the name of the topic")
        fmt.Println("-t TOPIC")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := sns.New(sess)

    results, err := MakeTopic(svc, topic)
    if err != nil {
        fmt.Println(err.Error())
        return
    }

    fmt.Println(*results.TopicArn)
}
