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
    "encoding/json"
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
)

// AddKmsBucketPolicy adds a policy to enable KMS encryption by default on a bucket
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
// Output:
//     If success, nil
//     Otherwise, an error from the call to json.Marshall or PutBucketPolicy
func AddKmsBucketPolicy(sess *session.Session, bucket *string) error {
    svc := s3.New(sess)

    PolicyDoc := map[string]interface{}{
        "Version": "2012-10-17",
        "Statement": []map[string]interface{}{
            {
                "Sid":       "DenyIncorrectEncryptionHeader",
                "Effect":    "Deny",
                "Principal": "*",
                "Action":    "s3:PutObject",
                "Resource":  "arn:aws:s3:::" + *bucket + "/*",
                "Condition": map[string]interface{}{
                    "StringNotEquals": map[string]interface{}{
                        "s3:x-amz-server-side-encryption": "aws:kms",
                    },
                },
            },
            {
                "Sid":       "DenyUnEncryptedObjectUploads",
                "Effect":    "Deny",
                "Principal": "*",
                "Action":    "s3:PutObject",
                "Resource":  "arn:aws:s3:::" + *bucket + "/*",
                "Condition": map[string]interface{}{
                    "Null": map[string]interface{}{
                        "s3:x-amz-server-side-encryption": "true",
                    },
                },
            },
        },
    }

    policy, err := json.Marshal(PolicyDoc)
    if err != nil {
        return err
    }

    _, err = svc.PutBucketPolicy(&s3.PutBucketPolicyInput{
        Bucket: bucket,
        Policy: aws.String(string(policy)),
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The bucket to encrypt")
    flag.Parse()

    if *bucket == "" {
        fmt.Println("You must supply a bucket name (-b BUCKET)")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := AddKmsBucketPolicy(sess, bucket)
    if err != nil {
        fmt.Println("Got an error adding policy to bucket " + *bucket + ":")
        fmt.Println(err)
        return
    }

    fmt.Println("Set policy for " + *bucket)
}
