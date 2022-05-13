
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.CreateCollectionRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>){

    val usage = """
        Usage: 
            <collectionName> 

        Where:
            collectionName - the name of the collection. 
    """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val collectionName = args[0]
    createMyCollection(collectionName)
}

 suspend fun createMyCollection(collectionIdVal: String) {

        val request = CreateCollectionRequest {
            collectionId = collectionIdVal
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
            val response = rekClient.createCollection(request)
            println("Collection ARN is ${response.collectionArn}")
            println("Status code is ${response.statusCode}" )
        }
    }
