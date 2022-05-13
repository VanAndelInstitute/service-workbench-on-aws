
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.PublishRequest
import kotlin.system.exitProcess


suspend fun main(args:Array<String>) {

    val usage = """
    
        Usage: 
            <message> <phoneNumber>

        Where:
            message - the message text to send.
            phoneNumber - the mobile phone number to which a message is sent (for example, +1XXX5550100). 
        """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val message = args[0]
    val phoneNumber = args[1]
    pubTextSMS(message, phoneNumber)
}

suspend fun pubTextSMS(messageVal: String?, phoneNumberVal: String?) {

        val request = PublishRequest {
            message = messageVal
            phoneNumber = phoneNumberVal
        }

        SnsClient { region = "us-east-1" }.use { snsClient ->
          val result = snsClient.publish(request)
          println("${result.messageId} message sent.")
        }
}
