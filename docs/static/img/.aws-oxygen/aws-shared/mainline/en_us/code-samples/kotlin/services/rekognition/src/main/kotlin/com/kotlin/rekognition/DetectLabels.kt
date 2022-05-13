/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.Image
import aws.sdk.kotlin.services.rekognition.model.DetectLabelsRequest
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
            sourceImage - the path to the source image (for example, C:\AWS\pic1.png). 
    """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val sourceImage = args[0]
    detectImageLabels(sourceImage)
    }

suspend fun detectImageLabels(sourceImage: String) {

        val souImage = Image {
            bytes = (File(sourceImage).readBytes())
        }
        val request = DetectLabelsRequest {
            image = souImage
            maxLabels = 10
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
          val response = rekClient.detectLabels(request)
          response.labels?.forEach { label ->
               println("${label.name} : ${label.confidence}")
        }
      }
}
