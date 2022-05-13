// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/ec2"
    "github.com/aws/aws-sdk-go/service/ec2/ec2iface"
)

// RemoveKeyPair deletes a new Amazon Elastic Compute Cloud (Amazon EC2) key pair.
// Inputs:
//     svc is an Amazon EC2 service client
//     keyName is the name of the key pair
// Output:
//     If success, nil
//     Otherwise, an error from the call to DeleteKeyPair
func RemoveKeyPair(svc ec2iface.EC2API, keyName *string) error {
    _, err := svc.DeleteKeyPair(&ec2.DeleteKeyPairInput{
        KeyName: keyName,
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    keyName := flag.String("k", "", "The name of the key pair")
    flag.Parse()

    if *keyName == "" {
        fmt.Println("You must supply the name of the key pair (-k KEY-NAME)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := ec2.New(sess)

    // Deletes a key pair with the given name
    err := RemoveKeyPair(svc, keyName)
    if err != nil {
        fmt.Println("Got an error deleting the key pair:")
        fmt.Println(err)
        return
    }

    fmt.Println("Deleted key pair")
}
