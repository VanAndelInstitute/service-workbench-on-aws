
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
            SubscribeEmail  <topicArn> <email>

        Where:
            topicArn - the ARN of the topic to subscribe.
            email - the email address to use.
        """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
     }

    val topicArn = args[0]
    val email = args[1]
    val subscriptionArn = subEmail(topicArn, email)
    println("Subscription ARN is $subscriptionArn")
    }

suspend fun subEmail(topicArnVal: String, email: String) : String {

    val request = SubscribeRequest {
        protocol = "email"
        endpoint = email
        returnSubscriptionArn = true
        topicArn = topicArnVal
    }

    SnsClient { region = "us-east-1" }.use { snsClient ->
        val result = snsClient.subscribe(request)
        return result.subscriptionArn.toString()
    }
}
