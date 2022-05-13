
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.comprehend

import aws.sdk.kotlin.services.comprehend.ComprehendClient
import aws.sdk.kotlin.services.comprehend.model.DetectDominantLanguageRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main() {

    val text = "Il pleut aujourd'hui à Seattle"
    detectTheDominantLanguage(text)
}

suspend fun detectTheDominantLanguage(textVal: String) {

    val request =  DetectDominantLanguageRequest {
        text = textVal
    }
    ComprehendClient { region = "us-east-1" }.use { comClient ->
            val response = comClient.detectDominantLanguage(request)
            response.languages?.forEach { lang ->
                println("Language is ${lang.languageCode}")
            }
    }
}
