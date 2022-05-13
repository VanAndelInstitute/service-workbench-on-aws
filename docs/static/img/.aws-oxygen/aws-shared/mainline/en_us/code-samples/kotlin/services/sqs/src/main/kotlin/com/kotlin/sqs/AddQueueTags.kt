
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sqs

import aws.sdk.kotlin.services.sqs.SqsClient
import aws.sdk.kotlin.services.sqs.model.GetQueueUrlRequest
import aws.sdk.kotlin.services.sqs.model.TagQueueRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        Usage: 
            <queueName>
        Where:
            queueName - the name of the queue.

        """

      if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val queueName = args[0]
    addTags(queueName)

}

suspend fun addTags(queueNameVal: String) {

        val urlRequest = GetQueueUrlRequest {
            queueName = queueNameVal
        }

        SqsClient { region = "us-east-1" }.use { sqsClient ->
          val getQueueUrlResponse = sqsClient.getQueueUrl(urlRequest)
          val queueUrlVal = getQueueUrlResponse.queueUrl

          val addedTags = mutableMapOf<String, String>()
          addedTags["Team"] = "Development"
          addedTags["Priority"] = "Beta"
          addedTags["Accounting ID"] = "456def"

          val tagQueueRequest = TagQueueRequest {
            queueUrl = queueUrlVal
            tags = addedTags
          }

          sqsClient.tagQueue(tagQueueRequest)
          println("Tags have been applied to $queueNameVal")
        }
}
