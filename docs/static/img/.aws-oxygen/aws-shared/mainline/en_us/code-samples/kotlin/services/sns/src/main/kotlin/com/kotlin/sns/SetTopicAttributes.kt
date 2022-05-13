
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sns

import aws.sdk.kotlin.services.sns.SnsClient
import aws.sdk.kotlin.services.sns.model.SetTopicAttributesRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
      Usage: 
        <attribute> <topicArn> <value>

      Where:
        attribute - the attribute action to use. Valid parameters are: Policy | DisplayName | DeliveryPolicy .
        topicArn - The ARN of the topic. 
        value - the value for the attribute.
    """

      if (args.size < 3) {
          println(usage)
          exitProcess(0)
      }

    val attribute = args[0]
    val topicArn = args[1]
    val value = args[2]
    setTopAttr(attribute, topicArn, value)
}

suspend fun setTopAttr(attribute: String?, topicArnVal: String?, value: String?) {

        val request = SetTopicAttributesRequest {
            attributeName = attribute
            attributeValue = value
            topicArn = topicArnVal
        }

       SnsClient { region = "us-east-1" }.use { snsClient ->
        snsClient.setTopicAttributes(request)
        println("Topic ${request.topicArn} was updated.")
       }
}
