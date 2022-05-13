// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/kms"
    "github.com/aws/aws-sdk-go/service/kms/kmsiface"
)

// EncryptText encrypts some text using an AWS Key Management Service (AWS KMS) key (KMS key).
// Inputs:
//     svc is an AWS KMS service client
//     keyID is the ID of a KMS key
// Output:
//     If success, information about the encrypted text and nil
//     Otherwise, nil and an error from the call to Encrypt
func EncryptText(svc kmsiface.KMSAPI, keyID, text *string) (*kms.EncryptOutput, error) {
    result, err := svc.Encrypt(&kms.EncryptInput{
        KeyId:     keyID,
        Plaintext: []byte(*text),
    })
    if err != nil {
        return nil, err
    }

    return result, nil
}

func main() {
    keyID := flag.String("k", "", "The ID of a KMS key")
    text := flag.String("t", "", "The text to encrypt")
    flag.Parse()

    if *keyID == "" || *text == "" {
        fmt.Println("You must supply the ID of a KMS key and some text")
        fmt.Println("-k KEY-ID -t \"text\"")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := kms.New(sess)

    result, err := EncryptText(svc, keyID, text)
    if err != nil {
        fmt.Println("Got error encrypting data:")
        fmt.Println(err)
        return
    }

    fmt.Println("Blob (base-64 byte array):")
    fmt.Println(result.CiphertextBlob)
}
