/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

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
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
)

// SetBucketPublic give everyone access to a bucket
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
// Output:
//     If success, nil
//     Otherwise, an error from the call to PutBucketAcl
func SetBucketPublic(sess *session.Session, bucket *string) error {
    svc := s3.New(sess)

    params := &s3.PutBucketAclInput{
        Bucket: bucket,
        ACL:    aws.String("public-read"),
    }

    _, err := svc.PutBucketAcl(params)
    if err != nil {
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The name of the bucket")
    flag.Parse()

    if *bucket == "" {
        fmt.Println("You must supply the name of a bucket (-b BUCKET)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := SetBucketPublic(sess, bucket)
    if err != nil {
        fmt.Println("Could not set public access to bucket " + *bucket)
        return
    }

    fmt.Println("Bucket " + *bucket + " is now public")
}
