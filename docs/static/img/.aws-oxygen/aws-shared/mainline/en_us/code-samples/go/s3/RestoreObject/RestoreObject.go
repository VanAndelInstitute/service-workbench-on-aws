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

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
    "github.com/aws/aws-sdk-go/service/s3/s3iface"
)

// RestoreItem restores an item to a bucket for a number of days
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
//     item is the name of the bucket object to delete
// Output:
//     If success, nil
//     Otherwise, an error from the call to DeleteObject or WaitUntilObjectNotExists
func RestoreItem(svc s3iface.S3API, bucket *string, item *string, days *int64) error {
    _, err := svc.RestoreObject(&s3.RestoreObjectInput{
        Bucket: bucket,
        Key:    item,
        RestoreRequest: &s3.RestoreRequest{
            Days: days,
        },
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The bucket to which the object is restored")
    item := flag.String("i", "", "The object to restore")
    days := flag.Int64("d", 30, "The number of days to restore it from Glacier")
    flag.Parse()

    if *bucket == "" || *item == "" {
        fmt.Println("You must supply the bucket (-b BUCKET), and item to restore (-i ITEM")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := s3.New(sess)

    err := RestoreItem(svc, bucket, item, days)
    if err != nil {
        fmt.Println("Got an error restoring the item:")
        fmt.Println(err)
        return
    }

    fmt.Println("Restored " + *item + " to " + *bucket)
}
