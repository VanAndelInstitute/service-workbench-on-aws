
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sqs

import aws.sdk.kotlin.services.sqs.SqsClient
import aws.sdk.kotlin.services.sqs.model.PurgeQueueRequest
import aws.sdk.kotlin.services.sqs.model.DeleteQueueRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {


    val usage = """
        Usage: 
            <queueUrl>
        Where:
           queueUrl - the URL of the queue from which messages are deleted. 
         """

      if (args.size != 1) {
         println(usage)
          exitProcess(0)
     }

    val queueUrl = args[0]
    deleteMessages(queueUrl)
    deleteQueue(queueUrl)
}

suspend fun deleteMessages(queueUrlVal: String) {
    println("Delete Messages from $queueUrlVal")


    val purgeRequest = PurgeQueueRequest{
       queueUrl = queueUrlVal
    }

    SqsClient { region = "us-east-1" }.use { sqsClient ->
        sqsClient.purgeQueue(purgeRequest)
        println("Messages are successfully deleted from $queueUrlVal")
    }
}


suspend fun deleteQueue(queueUrlVal: String) {

    val request = DeleteQueueRequest{
        queueUrl=queueUrlVal
    }

    SqsClient { region = "us-east-1" }.use { sqsClient ->
        sqsClient.deleteQueue(request)
        println("$queueUrlVal was deleted!")
    }
}
