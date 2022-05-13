
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.dynamodb

import aws.sdk.kotlin.services.dynamodb.DynamoDbClient
import aws.sdk.kotlin.services.dynamodb.model.ListTablesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main() {

    listAllTables()
}

suspend fun listAllTables() {

    DynamoDbClient { region = "us-east-1" }.use { ddb ->
            val response = ddb.listTables(ListTablesRequest {})
            response.tableNames?.forEach { tableName ->
                 println("Table name is $tableName")
            }
        }
  }
