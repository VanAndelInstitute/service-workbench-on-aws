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

// AttachDynamoFullPolicy attaches a DynamoDB full-access policy to an IAM role
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     roleName is the name of the IAM role
// Output:
//     If success, nil
//     Otherwise, an error from the call to AttachRolePolicy
func AttachDynamoFullPolicy(svc iamiface.IAMAPI, roleName *string) error {
    policyArn := "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"

    _, err := svc.AttachRolePolicy(&iam.AttachRolePolicyInput{
        PolicyArn: &policyArn,
        RoleName:  roleName,
    })
    return err
}

func main() {
    roleName := flag.String("r", "", "The name of the IAM role")
    flag.Parse()

    if *roleName == "" {
        fmt.Println("You must supply a role name (-r ROLE)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    err := AttachDynamoFullPolicy(svc, roleName)
    if err != nil {
        fmt.Println("Unable to attach DynamoDB full-access role policy to role")
        return
    }
    fmt.Println("Role attached successfully")
}
