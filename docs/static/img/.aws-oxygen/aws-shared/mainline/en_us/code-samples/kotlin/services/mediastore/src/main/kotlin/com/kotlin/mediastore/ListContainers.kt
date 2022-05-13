
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.mediastore

import aws.sdk.kotlin.services.mediastore.MediaStoreClient
import aws.sdk.kotlin.services.mediastore.model.ListContainersRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){
    listAllContainers()
}

suspend fun listAllContainers() {

         MediaStoreClient { region = "us-west-2" }.use { mediaStoreClient ->
            val response = mediaStoreClient.listContainers(ListContainersRequest{})
            response.containers?.forEach { container ->
                    println("Container name is ${container.name}")
            }
        }
 }
