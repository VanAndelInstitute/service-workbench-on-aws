/*
   Copyright 2010-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.

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
    "os"
    "strconv"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/sqs"
)

// Creates a new SQS queue with long polling enabled. If the Queue already exists
// no error will be returned.
//
// Usage:
//    go run sqs_longpolling_create_queue.go -n queue_name -t timeout
func main() {
    namePtr := flag.String("n", "", "Queue name")
    timeoutPtr := flag.Int("t", 20, "(Optional) Timeout in seconds for long polling")

    flag.Parse()

    if *namePtr == "" {
        flag.PrintDefaults()
        exitErrorf("Queue name required")
    }

    // Initialize a session that the SDK will use to load
    // credentials from the shared credentials file. (~/.aws/credentials).
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := sqs.New(sess)

    // Create the Queue with long polling enabled
    result, err := svc.CreateQueue(&sqs.CreateQueueInput{
        QueueName: namePtr,
        Attributes: aws.StringMap(map[string]string{
            "ReceiveMessageWaitTimeSeconds": strconv.Itoa(*timeoutPtr),
        }),
    })
    if err != nil {
        exitErrorf("Unable to create queue %q, %v.", *namePtr, err)
    }

    fmt.Printf("Successfully created queue %q. URL: %s\n", *namePtr,
        aws.StringValue(result.QueueUrl))

}

func exitErrorf(msg string, args ...interface{}) {
    fmt.Fprintf(os.Stderr, msg+"\n", args...)
    os.Exit(1)
}
