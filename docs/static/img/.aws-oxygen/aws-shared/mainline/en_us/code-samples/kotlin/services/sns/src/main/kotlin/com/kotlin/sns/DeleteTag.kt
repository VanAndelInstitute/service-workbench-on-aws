
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.UntagResourceRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        Usage: 
            <topicArn> <tagKey>

        Where:
            topicArn - the ARN of the topic to which tags are removed.
            tagKey - the key of the tag to delete.
          
        """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
     }

    val topicArn = args[0]
    val tagKey = args[1]
    removeTag(topicArn, tagKey)
}

suspend fun removeTag(topicArn: String, tagKey: String) {


    val resourceRequest = UntagResourceRequest {
        resourceArn = topicArn
        tagKeys = listOf(tagKey)
    }
    SnsClient { region = "us-east-1" }.use { snsClient ->
        snsClient.untagResource(resourceRequest)
        println("$tagKey was deleted from $topicArn")
    }
}
