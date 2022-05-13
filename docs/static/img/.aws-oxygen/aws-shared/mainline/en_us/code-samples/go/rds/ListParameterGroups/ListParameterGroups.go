// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/rds"
)

// GetParameterGroups retrieves your Amazon RDS parameter groups
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
// Output:
//     If success, a list of the parameter groups and nil
//     Otherwise, nil and an error from the call to DescribeDBParameterGroups
func GetParameterGroups(sess *session.Session) (*rds.DescribeDBParameterGroupsOutput, error) {
    svc := rds.New(sess)

    result, err := svc.DescribeDBParameterGroups(nil)
    if err != nil {
        return nil, err
    }

    return result, nil
}

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    result, err := GetParameterGroups(sess)
    if err != nil {
        fmt.Println("Got an error retrieving parameter groups:")
        fmt.Println(err)
        return
    }

    if len(result.DBParameterGroups) < 1 {
        fmt.Println("Could not find any parameter groups")
        return
    }

    for _, p := range result.DBParameterGroups {
        fmt.Println("* " + *p.DBParameterGroupName + " with description: " + *p.Description)
    }
}
