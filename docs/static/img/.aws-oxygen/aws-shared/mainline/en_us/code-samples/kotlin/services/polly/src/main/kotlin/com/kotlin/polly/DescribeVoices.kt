
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.polly

import aws.sdk.kotlin.services.polly.PollyClient
import aws.sdk.kotlin.services.polly.model.DescribeVoicesRequest
import aws.sdk.kotlin.services.polly.model.LanguageCode
import aws.sdk.kotlin.services.polly.model.PollyException
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    describeVoice()
}

suspend fun describeVoice() {

         PollyClient { region = "us-west-2" }.use { polly ->
          val enUsVoicesResult = polly.describeVoices(DescribeVoicesRequest{
              languageCode = LanguageCode.fromValue("en-US")
          })
          val voices = enUsVoicesResult.voices
          if (voices != null) {
                for (voice in voices) {
                    println("The ID of the voice is ${voice.id}")
                    println("The gender of the voice is ${voice.gender}")
                }
            }
          }
 }
