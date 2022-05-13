
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.stepfunctions

import aws.sdk.kotlin.services.sfn.SfnClient
import aws.sdk.kotlin.services.sfn.model.ExecutionStatus
import aws.sdk.kotlin.services.sfn.model.ListExecutionsRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>){

    val usage = """
      Usage:
         <stateMachineARN> 
    Where:
        stateMachineARN - The ARN of the state machine.
    """

    if (args.size != 1) {
       println(usage)
       exitProcess(0)
     }

    val stateMachineARN = args[0]
    getFailedExes(stateMachineARN)
    }

suspend fun getFailedExes(stateMachineARN: String?) {

        val executionsRequest = ListExecutionsRequest {
            maxResults= 10
            stateMachineArn = stateMachineARN
            statusFilter = ExecutionStatus.Failed
        }

        SfnClient { region = "us-east-1" }.use { sfnClient ->
            val response = sfnClient.listExecutions(executionsRequest)
            response.executions?.forEach { item ->
                   println("The Amazon Resource Name (ARN) of the failed execution is ${item.executionArn}.")
            }
        }
 }
