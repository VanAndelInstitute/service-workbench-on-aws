
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.GetSamplingRulesRequest

suspend fun main() {

    getRules()
}

suspend fun getRules() {

        XRayClient { region = "us-east-1" }.use { xRayClient ->
            val response = xRayClient.getSamplingRules( GetSamplingRulesRequest{} )
            response.samplingRuleRecords?.forEach { record ->
                    println("The rule name is ${record.samplingRule?.ruleName}")
                    println("The related service is: ${record.samplingRule?.serviceName}")
            }

        }
 }
