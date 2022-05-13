
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.stepfunctions

import  aws.sdk.kotlin.services.sfn.SfnClient
import aws.sdk.kotlin.services.sfn.model.DeleteStateMachineRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>){

    val usage = """
      Usage:
         <stateMachineName>
      Where:
         stateMachineArn - The ARN of the state machine to delete.

    """

    if (args.size != 1) {
       println(usage)
       exitProcess(0)
    }

     val stateMachineARN = args[0]
     deleteMachine(stateMachineARN)
}

suspend fun deleteMachine(stateMachineArnVal: String) {
        val deleteStateMachineRequest = DeleteStateMachineRequest {
            stateMachineArn = stateMachineArnVal
        }

        SfnClient { region = "us-east-1" }.use { sfnClient ->
            sfnClient.deleteStateMachine(deleteStateMachineRequest)
            println("$stateMachineArnVal was successfully deleted.")
        }
 }
