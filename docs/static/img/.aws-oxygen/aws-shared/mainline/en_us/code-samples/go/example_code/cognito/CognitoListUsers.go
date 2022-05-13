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
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/cognitoidentityprovider"

    "flag"
    "fmt"
    "os"
)

func main() {
    userPoolIDPtr := flag.String("p", "", "The ID of the user pool")

    flag.Parse()

    if *userPoolIDPtr == "" {
        fmt.Println("You must supply a user pool ID")
        fmt.Println("Usage: go run CreateUser.go -p USER-POOL-ID")
        os.Exit(1)
    }

    // Initialize a session that the SDK will use to load
    // credentials from the shared credentials file ~/.aws/credentials.
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    cognitoClient := cognitoidentityprovider.New(sess)

    results, err := cognitoClient.ListUsers(
        &cognitoidentityprovider.ListUsersInput{
            UserPoolId: userPoolIDPtr})
    if err != nil {
        fmt.Println("Got error listing users")
        os.Exit(1)
    }

    // Show their names an email addresses
    for _, user := range results.Users {
        attributes := user.Attributes

        for _, a := range attributes {
            if *a.Name == "name" {
                fmt.Println("Name:  " + *a.Value)
            } else if *a.Name == "email" {
                fmt.Println("Email: " + *a.Value)
            }
        }

        fmt.Println("")
    }
}
