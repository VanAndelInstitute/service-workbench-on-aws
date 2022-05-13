
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.stepfunctions

import  aws.sdk.kotlin.services.sfn.SfnClient
import aws.sdk.kotlin.services.sfn.model.GetExecutionHistoryRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>){

    val usage = """
      Usage:
         <exeARN> 
    Where:
        exeARN - The Amazon Resource Name (ARN) of the execution.

    """

    if (args.size != 1) {
       println(usage)
       exitProcess(0)
     }

    val exeARN = args[0]
    val smARN = getExeHistory(exeARN)
    println("The ARN of the new state machine is $smARN")
    }

suspend fun getExeHistory(exeARN: String?) {

    val historyRequest = GetExecutionHistoryRequest {
        executionArn = exeARN
        maxResults = 10
    }

    SfnClient { region = "us-east-1" }.use { sfnClient ->
        val response = sfnClient.getExecutionHistory(historyRequest)
        response.events?.forEach { event ->
            println("The event type is ${event.type.toString()}")
        }
    }
 }
