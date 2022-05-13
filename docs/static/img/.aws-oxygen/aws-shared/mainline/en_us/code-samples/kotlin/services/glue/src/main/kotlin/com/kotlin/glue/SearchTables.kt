/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.glue

import aws.sdk.kotlin.services.glue.GlueClient
import aws.sdk.kotlin.services.glue.model.SearchTablesRequest
import aws.sdk.kotlin.services.glue.model.ResourceShareType
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <text>
    Where:
        text - a string used for a text search. 
    """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
    }

    val text = args[0]
    searchGlueTable(text)
 }

suspend fun searchGlueTable(text: String?) {

    val request = SearchTablesRequest {
        searchText = text
        resourceShareType = ResourceShareType.fromValue("All")
        maxResults = 10
    }

    GlueClient { region = "us-west-2" }.use { glueClient ->
          val response = glueClient.searchTables(request)
          response.tableList?.forEach { table ->
                println("Table name is ${table.name}")
                println("Database name is ${table.databaseName}")
         }
    }
}
