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
    "strings"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
)

// CreateBucketAndObject creates an Amazon S3 bucket and a dummy object in that bucket
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
//     key is the name of the object
// Output:
//     If success, nil
//     Otherwise, an error from the call to CreateBucket, WaitUntilBucketExists, or PutObject
func CreateBucketAndObject(sess *session.Session, bucket *string, key *string) error {
    svc := s3.New(sess)

    _, err := svc.CreateBucket(&s3.CreateBucketInput{
        Bucket: bucket,
    })
    if err != nil {
        fmt.Println("Got error trying to create bucket:")
        return err
    }

    err = svc.WaitUntilBucketExists(&s3.HeadBucketInput{Bucket: bucket})
    if err != nil {
        fmt.Println("Got error waiting for bucket:")
        return err
    }

    _, err = svc.PutObject(&s3.PutObjectInput{
        Body:   strings.NewReader("Hello World!"),
        Bucket: bucket,
        Key:    key,
    })
    if err != nil {
        fmt.Println("Got error putting object in bucket:")
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The name of the bucket")
    key := flag.String("k", "TestFile.txt", "The name of the object (key)")
    flag.Parse()

    if *bucket == "" {
        fmt.Println("You must supply the name of the bucket (-b BUCKET)")
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := CreateBucketAndObject(sess, bucket, key)
    if err != nil {
        fmt.Println("err")
        return
    }

    fmt.Println("Successfully created bucket " + *bucket + " and uploaded data with key " + *key)
}
