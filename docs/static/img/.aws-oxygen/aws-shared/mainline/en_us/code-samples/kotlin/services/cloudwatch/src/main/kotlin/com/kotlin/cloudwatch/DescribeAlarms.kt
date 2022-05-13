
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudwatch


import aws.sdk.kotlin.services.cloudwatch.CloudWatchClient
import aws.sdk.kotlin.services.cloudwatch.model.DescribeAlarmsRequest

suspend fun main() {
    desCWAlarms()
}

suspend fun desCWAlarms() {

    CloudWatchClient { region = "us-east-1" }.use { cwClient ->
           val response = cwClient.describeAlarms(DescribeAlarmsRequest {})
           response.metricAlarms?.forEach { alarm ->
               println("Retrieved alarm ${alarm.alarmName}")
           }
    }
 }
