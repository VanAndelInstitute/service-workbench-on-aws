// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/codebuild"
    "github.com/aws/aws-sdk-go/service/codebuild/codebuildiface"
)

// BldProject builds an AWS CodeBuild project
// Inputs:
//     svc is a CodeBuild service client
//     proj is the name of the project
// Output:
//     If success, nil
//     Otherwise, an error from the call to StartBuild
func BldProject(svc codebuildiface.CodeBuildAPI, project *string) error {
    _, err := svc.StartBuild(&codebuild.StartBuildInput{
        ProjectName: project,
    })
    if err != nil {
        return err
    }

    return nil
}
func main() {
    project := flag.String("p", "", "The name of the project")
    flag.Parse()

    if *project == "" {
        fmt.Println("You must supply the name of the project to build")
        return
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := codebuild.New(sess)

    err := BldProject(svc, project)
    if err != nil {
        fmt.Println("Got an error building the project")
        fmt.Println(err)
        return
    }

    fmt.Println("Started build for project ", *project)
}
