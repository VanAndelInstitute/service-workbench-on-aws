
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.CreateSamplingRuleRequest
import aws.sdk.kotlin.services.xray.model.CreateSamplingRuleResponse
import aws.sdk.kotlin.services.xray.model.SamplingRule
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

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
    createRule(ruleName)
}

suspend fun createRule(ruleNameVal: String?) {


        val rule = SamplingRule {
            ruleName = ruleNameVal
                priority = 1
                httpMethod = "*"
                serviceType = "*"
                serviceName = "*"
                urlPath = "*"
                version = 1
                host = "*"
                resourceArn = "*"
        }

        val ruleRequest = CreateSamplingRuleRequest {
            samplingRule = rule
        }

        XRayClient { region = "us-east-1" }.use { xRayClient ->
            val ruleResponse: CreateSamplingRuleResponse = xRayClient.createSamplingRule(ruleRequest)
            println("The ARN of the new rule is ${ruleResponse.samplingRuleRecord?.samplingRule?.ruleArn}")
        }
 }
