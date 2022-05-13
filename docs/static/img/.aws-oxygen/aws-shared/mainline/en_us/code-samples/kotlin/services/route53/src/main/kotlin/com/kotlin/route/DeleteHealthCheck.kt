
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.route

import aws.sdk.kotlin.services.route53.Route53Client
import aws.sdk.kotlin.services.route53.model.DeleteHealthCheckRequest
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
        <id> 

    Where:
        id - the health check id. 
    """

      if (args.size != 1) {
          println(usage)
          exitProcess(0)
     }

    val id = args[0]
    delHealthCheck(id)
}

 suspend fun delHealthCheck(id: String?) {

           val delRequest = DeleteHealthCheckRequest {
                healthCheckId = id
            }

            Route53Client { region = "AWS_GLOBAL" }.use { route53Client ->
                route53Client.deleteHealthCheck(delRequest)
                println("The HealthCheck with id $id was deleted")
            }
 }
