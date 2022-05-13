
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch

import aws.sdk.kotlin.services.cloudwatchlogs.CloudWatchLogsClient
import aws.sdk.kotlin.services.cloudwatchlogs.model.DeleteSubscriptionFilterRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """

    Usage:
        <filter> <pattern>

    Where:
        filter - a filter name (for example, myfilter).
        pattern - a filter pattern (for example, ERROR).
        
    """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
     }

    val filter = args[0]
    val pattern = args[1]
    deleteSubFilter(filter, pattern)
   }

suspend fun deleteSubFilter( filter: String?, logGroup: String?) {

     val request = DeleteSubscriptionFilterRequest {
         filterName = filter
         logGroupName = logGroup
     }

     CloudWatchLogsClient { region = "us-west-2" }.use { logs ->
        logs.deleteSubscriptionFilter(request)
        println( "Successfully deleted CloudWatch logs subscription filter named $filter")
    }
}
