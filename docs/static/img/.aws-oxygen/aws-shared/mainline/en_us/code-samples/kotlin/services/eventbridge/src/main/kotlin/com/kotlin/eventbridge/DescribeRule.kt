
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.eventbridge

import aws.sdk.kotlin.services.eventbridge.EventBridgeClient
import aws.sdk.kotlin.services.eventbridge.model.DescribeRuleRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>) {

    val usage = """
    
    Usage:
        <ruleName> 

    Where:
        ruleName - the name of the rule. 
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val ruleName = args[0]
    describeSpecificRule(ruleName)
    }

suspend fun describeSpecificRule(ruleName: String) {

           val request = DescribeRuleRequest {
               name = ruleName
               eventBusName = "default"
           }

           EventBridgeClient { region = "us-west-2" }.use { eventBrClient ->
              val ruleResponse = eventBrClient.describeRule(request)
              println("The rule ARN is ${ruleResponse.arn}")
              println("The rule description is ${ruleResponse.description}")
           }
}
