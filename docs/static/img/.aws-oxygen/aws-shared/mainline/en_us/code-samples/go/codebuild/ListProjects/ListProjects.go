// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/codebuild"
)

// GetProjects retrieves a list of your AWS CodeBuild projects
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
// Output:
//     If success, the list of the projects and nil
//     Otherwise, nil and an error from the call to ListProjects
func GetProjects(sess *session.Session) (*codebuild.ListProjectsOutput, error) {
    svc := codebuild.New(sess)

    // Get the list of projects
    result, err := svc.ListProjects(
        &codebuild.ListProjectsInput{
            SortBy:    aws.String("NAME"),
            SortOrder: aws.String("ASCENDING"),
        })

    return result, err
}

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    result, err := GetProjects(sess)
    if err != nil {
        fmt.Println("Got an error listing projects:")
        fmt.Println(err)
        return
    }

    for _, p := range result.Projects {
        fmt.Println(*p)
    }
}
