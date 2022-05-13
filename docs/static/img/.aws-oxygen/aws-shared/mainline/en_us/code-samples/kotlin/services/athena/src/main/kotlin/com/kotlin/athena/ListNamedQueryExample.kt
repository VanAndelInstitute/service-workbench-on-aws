
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.athena

import aws.sdk.kotlin.services.athena.AthenaClient
import aws.sdk.kotlin.services.athena.model.ListNamedQueriesRequest

suspend fun main() {
    listNamedQueries()
}

suspend fun listNamedQueries() {

        val request = ListNamedQueriesRequest{
            this.maxResults = 10
        }

        AthenaClient { region = "us-west-2" }.use { athenaClient ->
            val responses = athenaClient.listNamedQueries(request)
            responses.namedQueryIds?.forEach { queries ->
                println("Retrieved account alias $queries")
            }
        }
}
