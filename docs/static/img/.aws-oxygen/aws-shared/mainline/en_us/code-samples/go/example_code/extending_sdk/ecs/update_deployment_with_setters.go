/*
   Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.

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
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/ecs"

    "fmt"
)

func main() {
    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := ecs.New(sess)

    resp, err := svc.UpdateService((&ecs.UpdateServiceInput{}).
        SetService("myService").
        SetDeploymentConfiguration((&ecs.DeploymentConfiguration{}).
            SetMinimumHealthyPercent(80),
        ),
    )
    if err != nil {
        fmt.Println("Error calling UpdateService:")
        fmt.Println(err.Error())
    } else {
        fmt.Println(resp)
    }
}
