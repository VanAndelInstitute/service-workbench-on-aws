/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.ListCollectionsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){

    listAllCollections()
}

suspend fun listAllCollections() {

        val request = ListCollectionsRequest {
            maxResults = 10
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
          val response = rekClient.listCollections(request)
          response.collectionIds?.forEach { resultId ->
            println(resultId)
          }
        }
}
