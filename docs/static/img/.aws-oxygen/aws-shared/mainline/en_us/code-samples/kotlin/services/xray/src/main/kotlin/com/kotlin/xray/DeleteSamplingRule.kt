
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.DeleteSamplingRuleRequest
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
    deleteRule(ruleName)
   }

suspend fun deleteRule(ruleNameVal: String?) {

        val ruleRequest = DeleteSamplingRuleRequest {
            ruleName = ruleNameVal
        }

        XRayClient { region = "us-east-1" }.use { xRayClient ->
            xRayClient.deleteSamplingRule(ruleRequest)
            println("$ruleNameVal was deleted")
        }
 }
