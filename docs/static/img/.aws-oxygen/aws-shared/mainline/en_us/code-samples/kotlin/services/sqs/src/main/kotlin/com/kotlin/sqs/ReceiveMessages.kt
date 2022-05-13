
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sqs

import aws.sdk.kotlin.services.sqs.SqsClient
import aws.sdk.kotlin.services.sqs.model.ReceiveMessageRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {


    val usage = """
        Usage: 
            <queueName> <tagName>
        Where:
           queueURL - the URL of the queue from which messages are retrieved.
      """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val queueUrl = args[0]
    receiveMessages(queueUrl)
    println("The AWS SQS operation example is complete!")
    }

suspend fun receiveMessages(queueUrlVal: String?) {

    println("Retrieving messages from $queueUrlVal")

    val receiveMessageRequest = ReceiveMessageRequest {
        queueUrl = queueUrlVal
        maxNumberOfMessages =5
    }

    SqsClient { region = "us-east-1" }.use { sqsClient ->
        val response =  sqsClient.receiveMessage(receiveMessageRequest)
        response.messages?.forEach { message ->
             println(message.body)
        }
    }
}
