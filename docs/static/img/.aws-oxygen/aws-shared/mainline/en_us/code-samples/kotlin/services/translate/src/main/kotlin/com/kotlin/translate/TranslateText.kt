
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.translate

import aws.sdk.kotlin.services.translate.TranslateClient
import aws.sdk.kotlin.services.translate.model.TranslateTextRequest

suspend fun main(){
    textTranslate()
}

suspend fun textTranslate() {

        val textRequest = TranslateTextRequest {
            sourceLanguageCode = "en"
            targetLanguageCode = "fr"
            text = "Its a sunny day today"
        }

        TranslateClient { region = "us-west-2" }.use { translateClient ->
            val textResponse = translateClient.translateText(textRequest)
            println(textResponse.translatedText)
        }
 }
