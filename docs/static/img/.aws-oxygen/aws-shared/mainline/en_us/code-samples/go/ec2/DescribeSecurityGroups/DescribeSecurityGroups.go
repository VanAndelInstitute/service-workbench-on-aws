// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/ec2"
)

// GetSecurityGroupInfo retrieves information about your Amazon Elastic Compute Cloud (Amazon EC2) security groups.
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
// Output:
//     If success, a list of the Amazon EC2 security groups and nil
//     Otherwise, nil and an error from the call to DescribeSecurityGroups
func GetSecurityGroupInfo(sess *session.Session) (*ec2.DescribeSecurityGroupsOutput, error) {
    svc := ec2.New(sess)

    result, err := svc.DescribeSecurityGroups(nil)
    if err != nil {
        return nil, err
    }

    return result, nil
}

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    result, err := GetSecurityGroupInfo(sess)
    if err != nil {
        fmt.Println("Got an error retrieving information about your security groups:")
        fmt.Println(err)
        return
    }

    for _, group := range result.SecurityGroups {
        fmt.Println(*group.GroupName)
        fmt.Println("  Description: " + *group.Description)
        fmt.Println("  Group ID:   " + *group.GroupId)
        fmt.Println("")
    }

    fmt.Println("Found", len(result.SecurityGroups), "security groups")
}
