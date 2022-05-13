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

// DeleteServerCert deletes an IAM server certificate.
// Inputs:
//     svc is an IAM service client
//     certName is the name of the service certificate
// Output:
//     If success, nil
//     Otherwise, an error from the call to DeleteServerCertificate
func DeleteServerCert(svc iamiface.IAMAPI, certName *string) error {
    _, err := svc.DeleteServerCertificate(&iam.DeleteServerCertificateInput{
        ServerCertificateName: certName,
    })

    return err
}

func main() {
    certName := flag.String("c", "", "The name of the certificate")
    flag.Parse()

    if *certName == "" {
        fmt.Println("You must supply the name of a certificate (-c CERT-NAME)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := iam.New(sess)

    err := DeleteServerCert(svc, certName)
    if err != nil {
        fmt.Println("Got an error deleting the server certificate:")
        fmt.Println(err)
        return
    }

    fmt.Println("Deleted the server certificate " + *certName)
}
