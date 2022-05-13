
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.ListTagsForResourceRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        Usage: <topicArn>
    
        Where:
            topicArn - the ARN of the topic from which tags are listed.
        """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val topicArn = args[0]
    listTopicTags(topicArn)
}

suspend fun listTopicTags(topicArn: String?) {

    val tagsForResourceRequest = ListTagsForResourceRequest {
        resourceArn = topicArn
    }

    SnsClient { region = "us-east-1" }.use { snsClient ->
        val response = snsClient.listTagsForResource(tagsForResourceRequest)
        println("Tags for topic $topicArn are "+response.tags)
    }
}
