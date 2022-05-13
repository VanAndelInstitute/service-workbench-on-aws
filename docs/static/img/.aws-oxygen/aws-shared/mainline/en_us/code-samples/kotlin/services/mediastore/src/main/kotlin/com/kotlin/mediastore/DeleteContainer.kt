
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.mediastore

import aws.sdk.kotlin.services.mediastore.MediaStoreClient
import aws.sdk.kotlin.services.mediastore.model.DeleteContainerRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>){

    val usage = """
    
        Usage: 
            <containerName> 

        Where:
            containerName - the name of the container to delete.
    """

       if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val containerName = args[0]
    deleteMediaContainer(containerName)
    }

suspend fun deleteMediaContainer(containerNameVal: String?) {

        val request = DeleteContainerRequest {
            containerName = containerNameVal
        }

        MediaStoreClient { region = "us-west-2" }.use { mediaStoreClient ->
            mediaStoreClient.deleteContainer(request)
            println("The $containerNameVal was deleted")
        }
 }
