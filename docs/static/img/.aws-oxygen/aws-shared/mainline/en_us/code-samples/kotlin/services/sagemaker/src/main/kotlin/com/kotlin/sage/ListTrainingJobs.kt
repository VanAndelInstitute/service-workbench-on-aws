
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sage

import aws.sdk.kotlin.services.sagemaker.SageMakerClient
import aws.sdk.kotlin.services.sagemaker.model.ListTrainingJobsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main() {
    listJobs()
   }

suspend fun listJobs() {

    SageMakerClient { region = "us-west-2" }.use { sageMakerClient ->
        val response = sageMakerClient.listTrainingJobs(ListTrainingJobsRequest{ })
        response.trainingJobSummaries?.forEach { item ->
                println("Name is ${item.trainingJobName}")
                println("Status is ${item.trainingJobStatus.toString()}")

        }
    }
}
