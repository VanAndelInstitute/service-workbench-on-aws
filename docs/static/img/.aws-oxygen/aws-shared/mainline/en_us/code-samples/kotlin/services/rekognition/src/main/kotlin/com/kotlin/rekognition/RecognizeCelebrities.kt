/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.RecognizeCelebritiesRequest
import aws.sdk.kotlin.services.rekognition.model.Image
import java.io.File
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
            <sourceImage> 

        Where:
            "sourceImage - the name of the image  (for example, people.png).
    """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
    }

    val sourceImage = args[0]
    recognizeAllCelebrities(sourceImage)
   }

suspend fun recognizeAllCelebrities(sourceImage: String?) {

        val souImage = Image {
            bytes = (File(sourceImage).readBytes())
        }

        val request = RecognizeCelebritiesRequest{
            image = souImage
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
          val response = rekClient.recognizeCelebrities(request)
          response.celebrityFaces?.forEach { celebrity ->
                println("Celebrity recognized: ${celebrity.name}")
                println("Celebrity ID:${celebrity.id}")
                println("Further information (if available):")
                celebrity.urls?.forEach { url ->
                      println(url)
                }
             }
          println("${response.unrecognizedFaces?.size} face(s) were unrecognized.")
        }
  }
