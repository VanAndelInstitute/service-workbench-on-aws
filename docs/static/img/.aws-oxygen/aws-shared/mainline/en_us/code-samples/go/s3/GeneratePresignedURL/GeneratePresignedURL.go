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
    "time"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
)

// GetPresignedURL creates a presigned URL for a bucket object
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
//     key is the key of the object
// Output:
//     If success, the presigned URL, which is valid for 15 minutes, for the object and nil
//     Otherwise, an empty string and an error from the call to GetObjectRequest or Presign
func GetPresignedURL(sess *session.Session, bucket, key *string) (string, error) {
    svc := s3.New(sess)

    req, _ := svc.GetObjectRequest(&s3.GetObjectInput{
        Bucket: bucket,
        Key:    key,
    })
    urlStr, err := req.Presign(15 * time.Minute)
    if err != nil {
        return "", err
    }

    return urlStr, nil
}

func main() {
    bucket := flag.String("b", "", "The bucket")
    key := flag.String("k", "", "The object key")
    flag.Parse()

    if *bucket == "" || *key == "" {
        fmt.Println("You must supply a bucket name (-b BUCKET) and object key (-k KEY)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    urlStr, err := GetPresignedURL(sess, bucket, key)
    if err != nil {
        fmt.Println("Got an error retrieving a presigned URL:")
        fmt.Println(err)
        return
    }

    fmt.Println("The presigned URL: " + urlStr + " is valid for 15 minutes")
}
