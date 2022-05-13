
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.CreateTopicRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    
        Usage: 
            <topicName> 

        Where:
            topicName - the name of the topic to create (for example, mytopic).
        """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val topicName = args[0]
    val topicArn = createSNSTopic(topicName)
    println("The ARN of the new topic is $topicArn")
}

suspend fun createSNSTopic(topicName: String): String {

       val request = CreateTopicRequest {
            name = topicName
        }

       SnsClient { region = "us-east-1" }.use { snsClient ->
        val result = snsClient.createTopic(request)
        return result.topicArn.toString()
       }
 }
