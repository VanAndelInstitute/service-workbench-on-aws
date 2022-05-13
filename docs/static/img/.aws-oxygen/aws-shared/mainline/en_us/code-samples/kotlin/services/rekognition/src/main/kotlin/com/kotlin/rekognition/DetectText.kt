/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.Image
import aws.sdk.kotlin.services.rekognition.model.DetectTextRequest
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
           sourceImage - the name of the image in an Amazon S3 bucket (for example, people.png). 
    """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
    }

    val sourceImage = args[0]
    detectTextLabels(sourceImage)
}

suspend fun detectTextLabels(sourceImage: String?) {

        val souImage = Image {
            bytes = (File(sourceImage).readBytes())
        }

        val request = DetectTextRequest {
            image = souImage
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
          val response = rekClient.detectText(request)
          response.textDetections?.forEach { text ->
                 println("Detected: ${text.detectedText}")
                println("Confidence: ${text.confidence}")
                println("Id: ${text.id}")
                println("Parent Id:  ${text.parentId}")
                println("Type: ${text.type}")
          }
        }
}
