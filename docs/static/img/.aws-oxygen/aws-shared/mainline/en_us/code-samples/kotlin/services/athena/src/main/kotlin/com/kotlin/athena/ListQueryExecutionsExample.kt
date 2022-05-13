
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.athena

import aws.sdk.kotlin.services.athena.AthenaClient
import aws.sdk.kotlin.services.athena.model.ListQueryExecutionsRequest

suspend fun main() {
   listQueryIds()
}

 suspend fun listQueryIds() {

        val request = ListQueryExecutionsRequest{
            maxResults = 10
        }

        AthenaClient { region = "us-west-2" }.use { athenaClient ->
                val response =  athenaClient.listQueryExecutions(request)
                response.queryExecutionIds?.forEach { queries ->
                   println("The value is $queries")
                }
           }
       }
