/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.rekognition

import aws.sdk.kotlin.services.rekognition.RekognitionClient
import aws.sdk.kotlin.services.rekognition.model.Image
import aws.sdk.kotlin.services.rekognition.model.DetectModerationLabelsRequest
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
        Usage: <sourceImage> 

        Where:
            "sourceImage - the path to the image (for example, C:\\AWS\\pic1.png).
        """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val sourceImage = args[0]
    detectModLabels( sourceImage)
}

suspend fun detectModLabels(sourceImage: String) {

        val myImage = Image {
            this.bytes = (File(sourceImage).readBytes())
        }

        val request = DetectModerationLabelsRequest {
            image = myImage
            minConfidence = 60f
        }

        RekognitionClient { region = "us-east-1" }.use { rekClient ->
          val response = rekClient.detectModerationLabels(request)
          response.moderationLabels?.forEach { label ->
              println("Label: ${label.name} - Confidence: ${label.confidence} % Parent: ${label.parentName}")
           }
       }
}
