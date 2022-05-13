
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sage

import aws.sdk.kotlin.services.sagemaker.SageMakerClient
import aws.sdk.kotlin.services.sagemaker.model.ListModelsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
    suspend fun main() {

     listAllModels()
    }

    suspend fun listAllModels() {

         val request = ListModelsRequest {
                maxResults = 15
         }
        SageMakerClient { region = "us-west-2" }.use { sageMakerClient ->
           val response = sageMakerClient.listModels(request)
           response.models?.forEach { item ->
              println("Model name is ${item.modelName}")
           }
        }
   }

