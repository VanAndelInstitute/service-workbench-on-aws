/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.ListFacesRequest
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
             <collectionId>

        Where:
            collectionId - the name of the collection. 
        """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val collectionId = args[0]
    listFacesCollection(collectionId)
}

suspend fun listFacesCollection(collectionIdVal: String?) {

        val request = ListFacesRequest {
            collectionId = collectionIdVal
            maxResults =10
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
        val response = rekClient.listFaces(request)
        response.faces?.forEach { face ->
                println("Confidence level there is a face: ${face.confidence}")
                println("The face Id value is ${face.faceId}")
            }
       }
  }
