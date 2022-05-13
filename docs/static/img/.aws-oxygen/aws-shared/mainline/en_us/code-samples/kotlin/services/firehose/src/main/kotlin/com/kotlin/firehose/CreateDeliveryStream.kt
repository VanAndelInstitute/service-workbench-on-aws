
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.firehose

import aws.sdk.kotlin.services.firehose.FirehoseClient
import aws.sdk.kotlin.services.firehose.model.ExtendedS3DestinationConfiguration
import aws.sdk.kotlin.services.firehose.model.CreateDeliveryStreamRequest
import aws.sdk.kotlin.services.firehose.model.DeliveryStreamType
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
        <bucketARN> <roleARN> <streamName> 

    Where:
        bucketARN - the ARN of the Amazon S3 bucket where the data stream is written. 
        roleARN - the ARN of the IAM role that has the permissions that Kinesis Data Firehose needs. 
        streamName - the name of the delivery stream. 
    """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
    }

    val bucketARN = args[0]
    val roleARN = args[1]
    val streamName = args[2]
    createStream(bucketARN, roleARN, streamName)
}

suspend fun createStream(bucketARNVal: String?, roleARNVal: String?, streamName: String?) {

        val destinationConfiguration = ExtendedS3DestinationConfiguration {
            bucketArn = bucketARNVal
            roleArn = roleARNVal
        }

       val request = CreateDeliveryStreamRequest {
           deliveryStreamName = streamName
           extendedS3DestinationConfiguration = destinationConfiguration
           deliveryStreamType = DeliveryStreamType.DirectPut
       }

       FirehoseClient { region = "us-west-2" }.use { firehoseClient ->
        val streamResponse = firehoseClient.createDeliveryStream(request)
        println("Delivery Stream ARN is ${streamResponse.deliveryStreamArn}")
       }
}
