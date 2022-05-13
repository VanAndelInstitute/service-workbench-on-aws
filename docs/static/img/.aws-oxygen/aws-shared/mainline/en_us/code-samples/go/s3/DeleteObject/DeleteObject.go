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
)

// DeleteItem deletes an item from a bucket
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     bucket is the name of the bucket
//     item is the name of the bucket object to delete
// Output:
//     If success, nil
//     Otherwise, an error from the call to DeleteObject or WaitUntilObjectNotExists
func DeleteItem(sess *session.Session, bucket *string, item *string) error {
    svc := s3.New(sess)

    _, err := svc.DeleteObject(&s3.DeleteObjectInput{
        Bucket: bucket,
        Key:    item,
    })
    if err != nil {
        return err
    }

    err = svc.WaitUntilObjectNotExists(&s3.HeadObjectInput{
        Bucket: bucket,
        Key:    item,
    })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The bucket from which the object is deleted")
    item := flag.String("i", "", "The object to delete")
    flag.Parse()

    if *bucket == "" || *item == "" {
        fmt.Println("You must supply the bucket (-b BUCKET), and item to delete (-i ITEM")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := DeleteItem(sess, bucket, item)
    if err != nil {
        fmt.Println("Got an error deleting item:")
        fmt.Println(err)
        return
    }

    fmt.Println("Deleted " + *item + " from " + *bucket)
}

