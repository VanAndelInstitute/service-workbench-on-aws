
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.DeleteTopicRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    
        Usage: 
            <topicName> 

        Where:
            topicArn - the ARN of the topic to delete.
        """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val topicArn = args[0]
    deleteSNSTopic(topicArn)
}

suspend fun deleteSNSTopic(topicArnVal: String) {

    val request = DeleteTopicRequest {
        topicArn = topicArnVal
    }

    SnsClient { region = "us-east-1" }.use { snsClient ->
      snsClient.deleteTopic(request)
      println("$topicArnVal was successfully deleted.")
    }
}
