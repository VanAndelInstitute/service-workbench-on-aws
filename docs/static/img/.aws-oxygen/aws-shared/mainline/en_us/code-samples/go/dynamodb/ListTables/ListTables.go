// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved. // SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/dynamodb"
)

// GetTables retrieves a list of your Amazon DynamoDB tables
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     limit is the maximum number of tables to return
// Output:
//     If success, a list of the tables and nil
//     Otherwise, nil and an error from the call to ListTables
func GetTables(sess *session.Session, limit *int64) ([]*string, error) {
    svc := dynamodb.New(sess)

    result, err := svc.ListTables(&dynamodb.ListTablesInput{
        Limit: limit,
    })
    if err != nil {
        return nil, err
    }

    return result.TableNames, nil
}

func main() {
    limit := flag.Int64("l", 100, "How many tables to return")
    flag.Parse()

    if *limit < int64(0) {
        *limit = int64(10)
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    tables, err := GetTables(sess, limit)
    if err != nil {
        fmt.Println("Got an error retrieving table names:")
        fmt.Println(err)
        return
    }

    // Get up to limit tables
    for _, n := range tables {
        fmt.Println(*n)
    }
}
