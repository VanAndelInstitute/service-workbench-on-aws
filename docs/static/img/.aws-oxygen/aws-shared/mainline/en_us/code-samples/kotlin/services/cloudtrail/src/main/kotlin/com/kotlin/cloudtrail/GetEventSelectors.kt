
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudtrail

import aws.sdk.kotlin.services.cloudtrail.CloudTrailClient
import aws.sdk.kotlin.services.cloudtrail.model.GetEventSelectorsRequest
import kotlin.system.exitProcess

suspend fun main(args: Array<String>) {

    val usage = """

    Usage:
        <trailName>  

    Where:
        trailName - the name of the trail. 
      
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val trailName = args[0]
    getSelectors(trailName)
}

    suspend  fun getSelectors(trailNameVal: String) {

        val request = GetEventSelectorsRequest {
            trailName =trailNameVal
        }

        CloudTrailClient { region = "us-east-1" }.use { cloudTrail ->

            val response = cloudTrail.getEventSelectors(request)
            response.eventSelectors?.forEach { selector ->
                println("The type is ${selector.readWriteType.toString()}")
            }
        }
 }
