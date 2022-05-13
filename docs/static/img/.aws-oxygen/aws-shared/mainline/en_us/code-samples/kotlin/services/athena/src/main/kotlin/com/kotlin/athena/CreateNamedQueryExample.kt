
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.athena

import aws.sdk.kotlin.services.athena.AthenaClient
import aws.sdk.kotlin.services.athena.model.CreateNamedQueryRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <queryString> <namedQuery> <database>

    Where:
        queryString - the query string to use (for example, "SELECT * FROM mydatabase"; ).
        namedQuery - the name of the query to create. 
        database - the name of the database to use (for example, mydatabase ).
        
    """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
    }

    val queryString = args[0]
    val namedQuery = args[1]
    val database = args[2]
    val id = createNamedQuery(queryString, namedQuery, database)
    println("The query ID is $id")
}

    suspend  fun createNamedQuery(queryStringVal:String, namedQuery:String, databaseVal:String ):String? {

            AthenaClient { region = "us-west-2" }.use { athenaClient->
            val resp =  athenaClient.createNamedQuery(CreateNamedQueryRequest {
                database = databaseVal
                queryString = queryStringVal
                description = "Created via the AWS SDK for Kotlin"
                this.name = namedQuery
            })
            return resp.namedQueryId
        }
    }
