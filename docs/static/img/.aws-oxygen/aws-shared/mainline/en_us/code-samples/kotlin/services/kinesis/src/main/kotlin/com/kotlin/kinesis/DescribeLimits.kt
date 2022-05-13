/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kinesis

import aws.sdk.kotlin.services.kinesis.KinesisClient
import aws.sdk.kotlin.services.kinesis.model.DescribeLimitsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun  main(){

    describeKinLimits()
    }

suspend fun describeKinLimits() {

    KinesisClient { region = "us-east-1" }.use { kinesisClient ->
        val response = kinesisClient.describeLimits(DescribeLimitsRequest{})
        println("Number of open shards is ${response.openShardCount}")
        println("Maximum shards allowed is ${response.shardLimit}")

    }
}
