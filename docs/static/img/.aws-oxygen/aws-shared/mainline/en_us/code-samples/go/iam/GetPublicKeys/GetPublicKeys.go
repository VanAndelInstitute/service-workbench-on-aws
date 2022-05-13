// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/iam"
    "github.com/aws/aws-sdk-go/service/iam/iamiface"
)

// GetPublicKeyBodies retrieves the bodies of the user's public SSH keys
// Inputs:
//     svc is an IAM service client
//     userName is the name of an IAM user
// Output:
//     If success, the list of public SSH key bodies and nil
//     Otherwise, nil and an error from the call to ListSSHPublicKeys
func GetPublicKeyBodies(svc iamiface.IAMAPI, userName *string) ([]*string, error) {
    var bodies []*string

    result, err := svc.ListSSHPublicKeys(&iam.ListSSHPublicKeysInput{
        UserName: userName,
    })
    if err != nil {
        return bodies, err
    }

    for _, key := range result.SSHPublicKeys {
        // Get an SSH public key.
        keyResult, err := svc.GetSSHPublicKey(&iam.GetSSHPublicKeyInput{
            UserName:       userName,
            SSHPublicKeyId: key.SSHPublicKeyId,
            Encoding:       aws.String("SSH"),
        })
        if err != nil {
            continue
        }

        // append to list
        bodies = append(bodies, keyResult.SSHPublicKey.SSHPublicKeyBody)
    }

    return bodies, nil
}

func main() {
    userName := flag.String("u", "", "The name of the user")
    flag.Parse()

    if *userName == "" {
        fmt.Println("You must supply the name of a user (-u USER-NAME)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    bodies, err := GetPublicKeyBodies(svc, userName)
    if err != nil {
        fmt.Println("Got an error retrieving the public keys:")
        fmt.Println(err)
        return
    }

    if len(bodies) < 1 {
        fmt.Println("User " + *userName + " had no public SSH keys")
        return
    }

    fmt.Println("Public SSH key bodies for " + *userName)

    for _, body := range bodies {
        fmt.Printf(*body)
        fmt.Println("")
    }
}
