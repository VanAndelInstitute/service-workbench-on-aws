// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/ses"
    "github.com/aws/aws-sdk-go/service/ses/sesiface"
)

// GetStatistics retrieves the send statistics for an Amazon SES service
// Inputs:
//     svc is an Amazon SES service client
// Output:
//     If success, statistics about the Amazon SES send operations and nil
//     Otherwise, nil and an error from the call to GetSendStatistics
func GetStatistics(svc sesiface.SESAPI) (*ses.GetSendStatisticsOutput, error) {
    result, err := svc.GetSendStatistics(nil)

    return result, err
}

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := ses.New(sess)

    result, err := GetStatistics(svc)
    if err != nil {
        fmt.Println("Got an error retrieving SES send statistics")
        fmt.Println(err)
        return
    }

    dps := result.SendDataPoints

    fmt.Println("Got", len(dps), "datapoints")
    fmt.Println("")

    for _, dp := range dps {
        fmt.Println("Timestamp: ", dp.Timestamp)
        fmt.Println("Attempts:  ", aws.Int64Value(dp.DeliveryAttempts))
        fmt.Println("Bounces:   ", aws.Int64Value(dp.Bounces))
        fmt.Println("Complaints:", aws.Int64Value(dp.Complaints))
        fmt.Println("Rejects:   ", aws.Int64Value(dp.Rejects))
        fmt.Println("")
    }
}
