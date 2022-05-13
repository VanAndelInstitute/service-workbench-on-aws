
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.cloudformation

import aws.sdk.kotlin.services.cloudformation.CloudFormationClient
import aws.sdk.kotlin.services.cloudformation.model.GetTemplateRequest
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
        exitProcess(1)
    }

    val stackName = args[0]
    getSpecificTemplate(stackName)
 }

suspend fun getSpecificTemplate( stackNameVal: String) {

        val request = GetTemplateRequest {
            stackName = stackNameVal
        }

        CloudFormationClient { region = "us-east-1" }.use { cfClient ->
         val response = cfClient.getTemplate(request)
         val body = response.templateBody
         println(body)
        }
}
