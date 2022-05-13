
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.cloudformation

import aws.sdk.kotlin.services.cloudformation.CloudFormationClient
import aws.sdk.kotlin.services.cloudformation.model.DeleteStackRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <stackName>

    Where:
        stackName - the name of the AWS CloudFormation stack. 
    """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
    }

    val stackName =  args[0]
    deleteSpecificTemplate(stackName)
 }

suspend fun deleteSpecificTemplate(stackNameVal: String?) {

    val request =  DeleteStackRequest {
        stackName = stackNameVal
    }

    CloudFormationClient { region = "us-east-1" }.use { cfClient ->
         cfClient.deleteStack(request)
         println("The AWS CloudFormation stack was successfully deleted!")
    }
}
