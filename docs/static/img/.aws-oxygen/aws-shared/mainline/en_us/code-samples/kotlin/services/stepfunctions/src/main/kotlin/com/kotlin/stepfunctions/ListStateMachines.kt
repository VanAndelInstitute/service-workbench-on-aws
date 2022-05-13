
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.stepfunctions

import  aws.sdk.kotlin.services.sfn.SfnClient
import aws.sdk.kotlin.services.sfn.model.ListStateMachinesRequest

suspend fun main() {
    listMachines()
}

suspend fun listMachines() {

       SfnClient { region = "us-east-1" }.use { sfnClient ->
         val response = sfnClient.listStateMachines(ListStateMachinesRequest{})
          response.stateMachines?.forEach { machine ->
                    println("The name of the state machine is ${machine.name}")
                    println("The ARN value is ${machine.stateMachineArn}")
                }
        }
 }
