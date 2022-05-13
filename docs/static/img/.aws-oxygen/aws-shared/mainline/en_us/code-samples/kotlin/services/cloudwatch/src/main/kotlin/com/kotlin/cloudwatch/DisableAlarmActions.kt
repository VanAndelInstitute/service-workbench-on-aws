
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch

import aws.sdk.kotlin.services.cloudwatch.CloudWatchClient
import aws.sdk.kotlin.services.cloudwatch.model.DisableAlarmActionsRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage  = """

    Usage:
        <alarmName> 

    Where:
        alarmName - an alarm name to use.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val alarmName = args[0]
    disableActions(alarmName)
   }

suspend fun disableActions(alarmName: String) {

    val request = DisableAlarmActionsRequest {
        alarmNames = listOf(alarmName)
    }
    CloudWatchClient { region = "us-east-1" }.use { cwClient ->
        cwClient.disableAlarmActions(request)
        println("Successfully disabled actions on alarm ${alarmName}")
    }
}
