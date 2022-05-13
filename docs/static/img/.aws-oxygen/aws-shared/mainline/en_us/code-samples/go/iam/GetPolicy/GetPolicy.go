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

// GetPolicyDescription retrieves the description of the policy with the specified ARN
// Inputs:
//     svc is the IAM service client
//     arn is the ARN of the policy
// Output:
//     If success, the description of the policy and nil
//     Otherwise, an empty string and an error from the call to GetPolicy
func GetPolicyDescription(svc iamiface.IAMAPI, arn *string) (string, error) {
    result, err := svc.GetPolicy(&iam.GetPolicyInput{
        PolicyArn: arn,
    })
    if err != nil {
        return "", err
    }

    if result.Policy == nil {
        return "Policy nil", nil
    }

    if result.Policy.Description != nil {
        return *result.Policy.Description, nil
    }

    return "Description nil", nil
}

func main() {
    policyArn := flag.String("a", "", "The ARN of the policy to retrieve")
    flag.Parse()

    if *policyArn == "" {
        fmt.Println("You must supply the ARN of the policy to retrieve (-a POLICY-ARN)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    description, err := GetPolicyDescription(svc, policyArn)
    if err != nil {
        fmt.Println("Got an error retrieving the description:")
        fmt.Println(err)
        return
    }

    fmt.Println("Description:")
    fmt.Println(description)
}
