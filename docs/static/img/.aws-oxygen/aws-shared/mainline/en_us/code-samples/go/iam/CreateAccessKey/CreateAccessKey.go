// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/iam"
    "github.com/aws/aws-sdk-go/service/iam/iamiface"
)

// MakeAccessKey creates a new access key for the user userName
// Inputs:
//     svc is an IAM service client
//     userName is the name of the user
// Output:
//     If success, the new access key and nil
//     Otherwise, an empty string and an error from the call to CreateAccessKey
func MakeAccessKey(svc iamiface.IAMAPI, userName *string) (*iam.CreateAccessKeyOutput, error) {
    result, err := svc.CreateAccessKey(&iam.CreateAccessKeyInput{
        UserName: userName,
    })
    if err != nil {
        return nil, err
    }

    return result, nil
}

func main() {
    userName := flag.String("u", "", "The name of the user")
    flag.Parse()

    if *userName == "" {
        fmt.Println("You must supply a user name (-u USER)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    result, err := MakeAccessKey(svc, userName)
    if err != nil {
        fmt.Println("Got an error creating a new access key")
        fmt.Println(err)
        return
    }

    fmt.Println("Created new access key with ID: " + *result.AccessKey.AccessKeyId + " and secret key: " + *result.AccessKey.SecretAccessKey)
}
