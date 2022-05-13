
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.UnsubscribeRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        Usage: 
            <subscriptionArn>

        Where:
            subscriptionArn - the ARN of the subscription.
        """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val subArn = args[0]
    unSub(subArn)
}

suspend fun unSub(subscriptionArnVal: String) {

       val request = UnsubscribeRequest {
           subscriptionArn = subscriptionArnVal
        }

       SnsClient { region = "us-east-1" }.use { snsClient ->
         snsClient.unsubscribe(request)
         println("Subscription was removed for ${request.subscriptionArn}")
       }
}
