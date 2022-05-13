
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.route

import aws.sdk.kotlin.services.route53.Route53Client
import aws.sdk.kotlin.services.route53.model.DeleteHostedZoneRequest
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
        <hostedZoneId> 

    Where:
        hostedZoneId - the hosted zone id.
    """

      if (args.size != 1) {
          println(usage)
          exitProcess(0)
      }

    val hostedZoneId = args[0]
    delHostedZone(hostedZoneId)
    }

suspend fun delHostedZone(hostedZoneId: String?) {

         val deleteHostedZoneRequestRequest = DeleteHostedZoneRequest {
                id = hostedZoneId
          }

        Route53Client { region = "AWS_GLOBAL" }.use { route53Client ->
            route53Client.deleteHostedZone(deleteHostedZoneRequestRequest)
            println("The hosted zone with id $hostedZoneId was deleted")
        }
}
