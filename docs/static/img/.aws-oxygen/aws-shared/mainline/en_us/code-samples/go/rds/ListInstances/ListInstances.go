// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/rds"
)

// GetInstances retrieves a list of your Amazon RDS instances
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
// Output:
//     If success, the list of instances and nil
//     Otherwise, nil and an error from the call to DescribeDBInstances
func GetInstances(sess *session.Session) (*rds.DescribeDBInstancesOutput, error) {
    svc := rds.New(sess)

    result, err := svc.DescribeDBInstances(nil)
    if err != nil {
        return nil, err
    }

    return result, nil
}

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    result, err := GetInstances(sess)
    if err != nil {
        fmt.Println("Got an error retrieving instances:")
        fmt.Println(err)
        return
    }

    if len(result.DBInstances) < 1 {
        fmt.Println("Could not find any instances")
        return
    }

    fmt.Println("Instances:")

    for _, d := range result.DBInstances {
        fmt.Println("* " + *d.DBInstanceIdentifier + " created on " + d.InstanceCreateTime.Format("2006-01-02 15:04:05 Monday"))
    }
}
