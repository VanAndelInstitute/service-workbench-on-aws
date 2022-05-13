
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.stepfunctions

import aws.sdk.kotlin.services.sfn.SfnClient
import aws.sdk.kotlin.services.sfn.model.ListActivitiesRequest

suspend fun main() {
    listAllActivites()
}

suspend fun listAllActivites() {

        val activitiesRequest = ListActivitiesRequest {
            maxResults = 10
        }

        SfnClient { region = "us-east-1" }.use { sfnClient ->
            val response = sfnClient.listActivities(activitiesRequest)
            response.activities?.forEach { item ->
                    println("The activity ARN is ${item.activityArn}")
                    println("The activity name is ${item.name}")
            }
        }
}
