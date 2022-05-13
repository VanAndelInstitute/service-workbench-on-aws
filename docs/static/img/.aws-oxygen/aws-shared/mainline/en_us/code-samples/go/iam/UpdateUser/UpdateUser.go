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

// RenameUser changes the name for an IAM user.
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     userName is the name of the user
//     newName is the new user name
// Output:
//     If success, nil
//     Otherwise, an error from the call to CreateUser
func RenameUser(svc iamiface.IAMAPI, userName, newName *string) error {
    _, err := svc.UpdateUser(&iam.UpdateUserInput{
        UserName:    userName,
        NewUserName: newName,
    })
    return err
}

func main() {
    userName := flag.String("u", "", "The name of the user")
    newName := flag.String("n", "", "The new name of the user")
    flag.Parse()

    if *userName == "" || *newName == "" {
        fmt.Println("You must supply a user name and new name (-u USERNAME -n NEW-NAME)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    err := RenameUser(svc, userName, newName)
    if err != nil {
        fmt.Println("Got an error updating user " + *userName)
    }

    fmt.Println("Updated user " + *userName)
}
