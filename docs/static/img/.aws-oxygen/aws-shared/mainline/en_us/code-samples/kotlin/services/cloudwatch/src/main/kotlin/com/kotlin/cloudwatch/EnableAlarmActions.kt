
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch

import aws.sdk.kotlin.services.cloudwatch.CloudWatchClient
import aws.sdk.kotlin.services.cloudwatch.model.EnableAlarmActionsRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """

    Usage:
        <alarmName> 

    Where:
        alarmName - an alarm name to enable.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val alarmName = args[0]
    enableActions(alarmName)
}

suspend fun enableActions(alarm: String) {

    val request = EnableAlarmActionsRequest {
        alarmNames = listOf(alarm)
    }

    CloudWatchClient { region = "us-east-1" }.use { cwClient ->
        cwClient.enableAlarmActions(request)
        println( "Successfully enabled actions on alarm $alarm")
    }
}
