
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.cloudformation

import aws.sdk.kotlin.services.cloudformation.CloudFormationClient
import aws.sdk.kotlin.services.cloudformation.model.DescribeStacksResponse
import aws.sdk.kotlin.services.cloudformation.model.DescribeStacksRequest

suspend fun main() {
     describeAllStacks()
}

suspend fun describeAllStacks() {

       CloudFormationClient { region = "us-east-1" }.use { cfClient ->
          val stacksResponse: DescribeStacksResponse = cfClient.describeStacks(DescribeStacksRequest{})
          stacksResponse.stacks?.forEach { stack ->
            println("The stack description is ${stack.description}")
            println("The stack Id is ${stack.stackId}" )
         }
       }
}
