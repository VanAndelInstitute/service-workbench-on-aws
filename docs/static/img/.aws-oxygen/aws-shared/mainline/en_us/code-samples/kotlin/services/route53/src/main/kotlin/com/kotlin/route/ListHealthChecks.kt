
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.route

import aws.sdk.kotlin.services.route53.Route53Client
import aws.sdk.kotlin.services.route53.model.ListHealthChecksRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listAllHealthChecks()
}

suspend fun listAllHealthChecks() {

        val requestOb = ListHealthChecksRequest{
            this.maxItems = 10
        }

        Route53Client { region = "AWS_GLOBAL" }.use { route53Client ->
          val response = route53Client.listHealthChecks(requestOb)
            response.healthChecks?.forEach { check ->
                    println("The health check id is ${check.id}")
                    println("The health threshold is ${check.healthCheckConfig?.healthThreshold}")
                    println("The type is ${check.healthCheckConfig?.type.toString()}")
            }
        }
 }
