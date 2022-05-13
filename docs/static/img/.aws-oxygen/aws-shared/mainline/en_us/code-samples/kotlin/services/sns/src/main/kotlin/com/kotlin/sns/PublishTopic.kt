
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.PublishRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
          Usage: 
            <message> <topicArn>

        Where:
            message - the message text to send.
            topicArn - the ARN of the topic to publish.
            """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val message = args[0]
    val topicArn = args[1]
    pubTopic(topicArn, message)
}

suspend fun pubTopic(topicArnVal: String, messageVal: String) {

    val request = PublishRequest{
        message = messageVal
        topicArn = topicArnVal
     }

    SnsClient { region = "us-east-1" }.use { snsClient ->
        val result = snsClient.publish(request)
        println("${result.messageId} message sent.")
    }
}
