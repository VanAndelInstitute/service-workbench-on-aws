
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sage

import aws.sdk.kotlin.services.sagemaker.SageMakerClient
import aws.sdk.kotlin.services.sagemaker.model.DescribeTrainingJobRequest
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
        <trainingJobName>

    Where:
        trainingJobName - the name of the training job.

    """

    if (args.size != 1) {
       println(usage)
       exitProcess(1)
    }

    val trainingJobName = args[0]
    describeTrainJob(trainingJobName)
   }

suspend fun describeTrainJob(trainingJobNameVal: String?) {

    val request = DescribeTrainingJobRequest {
            trainingJobName = trainingJobNameVal
    }

    SageMakerClient { region = "us-west-2" }.use { sageMakerClient ->
      val jobResponse = sageMakerClient.describeTrainingJob(request)
      println("The job status is ${jobResponse.trainingJobStatus}")
    }
}
