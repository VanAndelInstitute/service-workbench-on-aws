
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.firehose

import aws.sdk.kotlin.services.firehose.FirehoseClient
import aws.sdk.kotlin.services.firehose.model.ListDeliveryStreamsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listStreams()
}

suspend fun listStreams() {

     FirehoseClient { region = "us-west-2" }.use { firehoseClient ->
        val response = firehoseClient.listDeliveryStreams(ListDeliveryStreamsRequest{})
        response.deliveryStreamNames?.forEach { item ->
            println("The delivery stream name is $item")
        }

    }
}
