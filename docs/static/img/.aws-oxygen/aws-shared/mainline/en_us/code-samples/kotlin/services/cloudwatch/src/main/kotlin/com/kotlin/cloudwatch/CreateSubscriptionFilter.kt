
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch

import aws.sdk.kotlin.services.cloudwatchlogs.CloudWatchLogsClient
import aws.sdk.kotlin.services.cloudwatchlogs.model.PutSubscriptionFilterRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """

    Usage:
        <filter> <pattern> <logGroup> <functionArn> 

    Where:
        filter - a filter name (for example, myfilter).
        pattern - a filter pattern (for example, ERROR).
        logGroup - a log group name (testgroup).
        functionArn - an AWS Lambda function ARN (for example, arn:aws:lambda:us-west-2:xxxxxx047983:function:lamda1) .
    """

    if (args.size != 4) {
        println(usage)
        exitProcess(0)
    }
    val filter =  args[0]
    val pattern = args[1]
    val logGroup = args[2]
    val functionArn = args[3]
    putSubFilters(filter, pattern, logGroup, functionArn)
  }

suspend fun putSubFilters(filter: String, pattern: String, logGroup: String, functionArn: String) {

    val request = PutSubscriptionFilterRequest {
        filterName = filter
        filterPattern = pattern
        logGroupName = logGroup
        destinationArn = functionArn
    }

    CloudWatchLogsClient { region = "us-west-2" }.use { cwlClient ->
            cwlClient.putSubscriptionFilter(request)
            println("Successfully created CloudWatch logs subscription filter named $filter")
           }
    }
