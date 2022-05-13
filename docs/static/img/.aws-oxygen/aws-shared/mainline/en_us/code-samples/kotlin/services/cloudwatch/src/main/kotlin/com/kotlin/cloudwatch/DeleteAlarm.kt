
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch

import aws.sdk.kotlin.services.cloudwatch.CloudWatchClient
import aws.sdk.kotlin.services.cloudwatch.model.DeleteAlarmsRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage  = """

    Usage:
        <alarmName>  

    Where:
        alarmName - an alarm name to delete.
     """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val alarmName = args[0]
    deleteCWAlarm(alarmName)
}

suspend fun deleteCWAlarm(alarmNameVal: String) {

    val request = DeleteAlarmsRequest {
        alarmNames = listOf(alarmNameVal)
    }

    CloudWatchClient { region = "us-east-1" }.use { cwClient ->
            cwClient.deleteAlarms(request)
            println("Successfully deleted alarm $alarmNameVal")
    }
}
