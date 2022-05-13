
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.route

import aws.sdk.kotlin.services.route53.Route53Client
import aws.sdk.kotlin.services.route53.model.GetHealthCheckStatusRequest
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
        <healthCheckId> 

    Where:
         healthCheckId - the health check id.
    """

      if (args.size != 1) {
          println(usage)
          exitProcess(0)
      }

    val healthCheckId = args[0]
    getHealthStatus( healthCheckId)
    }

suspend  fun getHealthStatus(healthCheckIdVal: String?) {

        val statusRequest = GetHealthCheckStatusRequest {
                healthCheckId = healthCheckIdVal
        }

       Route53Client { region = "AWS_GLOBAL" }.use { route53Client ->
          val response = route53Client.getHealthCheckStatus(statusRequest)
          response.healthCheckObservations?.forEach { observation ->
                  println("(The health check observation status is ${observation.statusReport?.status}")
         }
       }
 }
