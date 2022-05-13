
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.SubscribeRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        
        Usage: 
            <topicArn> <phoneNumber>

        Where:
            topicArn - the ARN of the topic to publish.
            phoneNumber - a mobile phone number that receives notifications (for example, +1XXX5550100).
            """

     if (args.size != 2) {
         println(usage)
         exitProcess(0)
     }

    val topicArn = args[0]
    val phoneNumber = args[1]
    subTextSNS(topicArn, phoneNumber)
}

suspend fun subTextSNS( topicArnVal: String?, phoneNumber: String?) {

    val request = SubscribeRequest {
        protocol ="sms"
        endpoint = phoneNumber
        returnSubscriptionArn = true
        topicArn = topicArnVal
    }

    SnsClient { region = "us-east-1" }.use { snsClient ->
        val result = snsClient.subscribe(request)
        println("The subscription Arn is ${result.subscriptionArn}")
    }
}
