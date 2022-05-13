
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sage

import aws.sdk.kotlin.services.sagemaker.SageMakerClient
import aws.sdk.kotlin.services.sagemaker.model.DeleteModelRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <modelName>

    Where:
        modelName - The name of the model.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(1)
    }

    val modelName = args[0]
    deleteSagemakerModel(modelName)
    }

suspend fun deleteSagemakerModel(modelNameVal: String?) {

     val request = DeleteModelRequest {
            modelName = modelNameVal
     }

    SageMakerClient { region = "us-west-2" }.use { sageMakerClient ->
        sageMakerClient.deleteModel(request)
    }
}
