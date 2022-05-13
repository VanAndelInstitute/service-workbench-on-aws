/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kinesis

import aws.sdk.kotlin.services.kinesis.KinesisClient
import aws.sdk.kotlin.services.kinesis.model.ListShardsRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>){

    val usage = """
    Usage: <streamName>

    Where:
        streamName - The Amazon Kinesis data stream (for example, StockTradeStream)
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val streamName: String = args[0]
    listKinShards(streamName)
    }

suspend fun listKinShards(name: String?) {

     val request = ListShardsRequest {
         streamName = name
     }

    KinesisClient { region = "us-east-1" }.use { kinesisClient ->
        val response = kinesisClient.listShards(request)
        response.shards?.forEach { shard ->
            println("Shard id is ${shard.shardId}")
       }
    }
}
