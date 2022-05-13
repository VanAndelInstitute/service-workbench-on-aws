// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/workdocs"
    "github.com/aws/aws-sdk-go/service/workdocs/workdocsiface"
)

// ShowUserDocs lists the Amazon WorkDocs docs for a user.
// Inputs:
//     svc is an Amazon WorkDocs service client
//     orgID is the ID of the organization to which the user belongs
//     user is the name of the user
// Output:
//     If success, a list of documents and nil
//     Otherwise, nil and an error from the call to DescribeUsers or DescribeFolderContents
func ShowUserDocs(svc workdocsiface.WorkDocsAPI, orgID, user *string) (*workdocs.DescribeFolderContentsOutput, error) {
    result, err := svc.DescribeUsers(&workdocs.DescribeUsersInput{
        OrganizationId: orgID,
        Query:          user,
    })
    if err != nil {
        return nil, err
    }

    for _, user := range result.Users {
        result, err := svc.DescribeFolderContents(&workdocs.DescribeFolderContentsInput{
            FolderId: user.RootFolderId,
        })

        return result, err
    }

    return nil, nil
}

func main() {
    userName := flag.String("u", "", "The name of the user")
    orgID := flag.String("o", "", "Your organization ID")

    flag.Parse()

    if *userName == "" || *orgID == "" {
        fmt.Println("You must supply the ID of the organization and a user name")
        fmt.Println("-o ORG-ID -u USER-NAME")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := workdocs.New(sess)

    result, err := ShowUserDocs(svc, orgID, userName)
    if err != nil {
        fmt.Println("Got an error retrieving the docs:")
        fmt.Println(err)
        return
    }

    fmt.Println(*userName + " docs:")
    fmt.Println("")

    for _, doc := range result.Documents {
        fmt.Println(*doc.LatestVersionMetadata.Name)
        fmt.Println("  Size:         ", *doc.LatestVersionMetadata.Size, "(bytes)")
        fmt.Println("  Last modified:", *doc.LatestVersionMetadata.ModifiedTimestamp)
        fmt.Println("")
    }
}
