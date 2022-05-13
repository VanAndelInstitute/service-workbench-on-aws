
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.pinpoint

import aws.sdk.kotlin.services.pinpoint.PinpointClient
import aws.sdk.kotlin.services.pinpoint.model.DeleteEndpointRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */


suspend fun main(args: Array<String>) {

    val usage = """
    Usage: <appId> <endpointId>

    Where:
         appId - the id of the application.
         endpointId - the id of the endpoint to delete.
      """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val appId = args[0]
    val endpointId = args[1]
    deletePinEncpoint(appId, endpointId)
    }

suspend fun deletePinEncpoint(appIdVal: String?, endpointIdVal: String?) {

        val deleteEndpointRequest = DeleteEndpointRequest {
                applicationId =  appIdVal
                endpointId = endpointIdVal
        }

       PinpointClient { region = "us-west-2" }.use { pinpoint ->
            val result = pinpoint.deleteEndpoint(deleteEndpointRequest)
            val id = result.endpointResponse?.id
            println("The deleted endpoint is  $id")
        }
 }
