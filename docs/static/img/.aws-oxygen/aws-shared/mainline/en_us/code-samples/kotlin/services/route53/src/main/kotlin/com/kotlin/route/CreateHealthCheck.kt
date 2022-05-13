
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.route

import aws.sdk.kotlin.services.route53.Route53Client
import aws.sdk.kotlin.services.route53.model.HealthCheckConfig
import aws.sdk.kotlin.services.route53.model.HealthCheckType
import aws.sdk.kotlin.services.route53.model.CreateHealthCheckRequest
import java.util.UUID
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
        <domainName> 

    Where:
        domainName - the fully qualified domain name. 
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val domainName = args[0]
    val id = createCheck(domainName)
    println("The health check id is $id")
    }

suspend fun createCheck(domainName: String?): String? {

            // You must use a unique CallerReference string.
            val callerReferenceVal = UUID.randomUUID().toString()

            val config = HealthCheckConfig {
                fullyQualifiedDomainName =domainName
                port =80
                type = HealthCheckType.Http
            }

            val healthCheckRequest = CreateHealthCheckRequest {
                callerReference = callerReferenceVal
                healthCheckConfig = config
            }

            Route53Client { region = "AWS_GLOBAL" }.use { route53Client ->
              val healthResponse = route53Client.createHealthCheck(healthCheckRequest)
              return healthResponse.healthCheck?.id
        }
      }
