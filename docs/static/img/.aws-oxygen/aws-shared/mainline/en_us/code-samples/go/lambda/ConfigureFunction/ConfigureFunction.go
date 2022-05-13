// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/lambda"
    "github.com/aws/aws-sdk-go/service/lambda/lambdaiface"
)

// AddPerm enables an Amazon S3 bucket to send notifications to an AWS Lambda function.
// Inputs:
//     svc is a Lambda service client
//     function is the name of the Lambda function
//     s3ARN is the Amazon Resource Name (ARN) of the Amazon S3 bucket
// Output:
//     If success, nil
//     Otherwise, an error from the call to AddPermission
func AddPerm(svc lambdaiface.LambdaAPI, function, s3ARN *string) error {
    _, err := svc.AddPermission(&lambda.AddPermissionInput{
        Action:       aws.String("lambda:InvokeFunction"),
        FunctionName: function,
        Principal:    aws.String("s3.amazonaws.com"),
        SourceArn:    s3ARN,
        StatementId:  aws.String("lambda_s3_notification"),
    })
    return err
}

func main() {
    function := flag.String("f", "", "The name of the Lambda function")
    s3ARN := flag.String("a", "", "The ARN of the Amazon S3 bucket sending a notification to the function")
    flag.Parse()

    if *function == "" || *s3ARN == "" {
        fmt.Println("You must supply the name of a Lambda function and the ARN of an S3 bucket")
        fmt.Println("-f FUNCTION -a ARN")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := lambda.New(sess)

    err := AddPerm(svc, function, s3ARN)
    if err != nil {
        fmt.Println("Got an error configuring the function for notifications:")
        fmt.Println(err)
        return
    }

    fmt.Println("Configured the function for notifications")
}
