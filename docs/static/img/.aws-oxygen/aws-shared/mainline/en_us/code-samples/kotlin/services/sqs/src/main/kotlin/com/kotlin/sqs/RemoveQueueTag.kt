
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sqs

import aws.sdk.kotlin.services.sqs.SqsClient
import aws.sdk.kotlin.services.sqs.model.GetQueueUrlRequest
import aws.sdk.kotlin.services.sqs.model.UntagQueueRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {


    val usage = """
        Usage: 
            <queueName> <tagName>
        Where:
           queueName - the name of the queue from which tags are removed.
           tagName - the name of the tag to remove.

        """

    if (args.size != 2) {
         println(usage)
         exitProcess(0)
     }

    val queueName = args[0]
    val tagName = args[1]
    removeTag(queueName, tagName)
}

suspend fun removeTag(queueNameVal: String, tagName: String) {

    val urlRequest = GetQueueUrlRequest {
        queueName = queueNameVal
    }

    SqsClient { region = "us-east-1" }.use { sqsClient ->
        val getQueueUrlResponse = sqsClient.getQueueUrl(urlRequest)
        val queueUrlVal = getQueueUrlResponse.queueUrl

        val untagQueueRequest = UntagQueueRequest {
            queueUrl = queueUrlVal
            tagKeys = listOf(tagName)
        }

        sqsClient.untagQueue(untagQueueRequest)
        println("The $tagName tag was removed from  $queueNameVal")
    }
}
