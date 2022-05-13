
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.athena

import aws.sdk.kotlin.services.athena.AthenaClient
import aws.sdk.kotlin.services.athena.model.DeleteNamedQueryRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <queryId> 

    Where:
        queryId - the id of the Amazon Athena query (for example, b34e7780-903b-4842-9d2c-6c99bebc82aa).
    """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }
    val queryId = args[0]
    deleteQueryName(queryId)
}

suspend fun deleteQueryName(sampleNamedQueryId: String?) {

    val request = DeleteNamedQueryRequest {
        namedQueryId = sampleNamedQueryId
    }

    AthenaClient { region = "us-west-2" }.use { athenaClient->
        athenaClient.deleteNamedQuery(request)
        println("$sampleNamedQueryId was deleted!")
    }
}
