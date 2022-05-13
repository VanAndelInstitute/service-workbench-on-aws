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
    "os"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/s3"
    "github.com/aws/aws-sdk-go/service/s3/s3manager"
)

// DownloadObject downloads a file from a bucket
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     filename is the name of the file
//     bucket is the name of the bucket
// Output:
//     If success, nil
//     Otherwise, an error from the call to Create or Download
func DownloadObject(sess *session.Session, filename *string, bucket *string) error {
    file, err := os.Create(*filename)
    if err != nil {
        return err
    }

    defer file.Close()
    
    downloader := s3manager.NewDownloader(sess)

    _, err = downloader.Download(file,
        &s3.GetObjectInput{
            Bucket: bucket,
            Key:    filename,
        })
    if err != nil {
        return err
    }

    return nil
}

func main() {
    bucket := flag.String("b", "", "The bucket to download from")
    filename := flag.String("f", "", "The name of the file to download")
    flag.Parse()

    if *bucket == "" || *filename == "" {
        fmt.Println("You must specify a bucket name (-b BUCKET) and filename (-f FILENAME")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    err := DownloadObject(sess, filename, bucket)
    if err != nil {
        fmt.Println("Got error downloading " + *filename + ":")
        fmt.Println(err)
        return
    }

    fmt.Println("Downloaded " + *filename)
}
