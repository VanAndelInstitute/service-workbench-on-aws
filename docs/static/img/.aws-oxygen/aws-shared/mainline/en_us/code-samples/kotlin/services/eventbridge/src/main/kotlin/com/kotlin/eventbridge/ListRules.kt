
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.eventbridge

import aws.sdk.kotlin.services.eventbridge.EventBridgeClient
import aws.sdk.kotlin.services.eventbridge.model.ListRulesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
     listAllRules()
}

suspend  fun listAllRules() {

          val request = ListRulesRequest {
              eventBusName = "default"
              limit = 10
          }

          EventBridgeClient { region = "us-west-2" }.use { eventBrClient ->
            val response = eventBrClient.listRules(request)
            response.rules?.forEach { rule ->
                println("The rule name is ${rule.name}")
                println("The rule ARN is ${rule.arn}")
            }
          }
 }
