
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.dynamodb

import aws.sdk.kotlin.services.dynamodb.DynamoDbClient
import aws.sdk.kotlin.services.dynamodb.model.DescribeTableRequest
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
        <tableName>

    Where:
        tableName - the Amazon DynamoDB table to get information about (for example, Music3).
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val tableName = args[0]
    describeDymamoDBTable(tableName)
}

suspend fun describeDymamoDBTable(tableNameVal: String?) {

    val request = DescribeTableRequest {
        tableName= tableNameVal
    }

    DynamoDbClient { region = "us-east-1" }.use { ddb ->
            val tableInfo = ddb.describeTable(request)
            println("Table name ${tableInfo.table?.tableName}")
            println("Table Arn:  ${tableInfo.table?.tableArn}")
            println("Table Status: ${tableInfo.table?.tableStatus}")
            println("Item count:  ${tableInfo.table?.itemCount}")
            println("Size (bytes): ${tableInfo.table?.tableSizeBytes}")
        }
 }
