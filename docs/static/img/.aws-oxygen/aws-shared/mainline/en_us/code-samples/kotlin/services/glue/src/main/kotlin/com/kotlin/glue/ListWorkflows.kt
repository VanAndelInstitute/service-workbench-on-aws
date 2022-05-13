/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.glue

import aws.sdk.kotlin.services.glue.GlueClient
import aws.sdk.kotlin.services.glue.model.ListWorkflowsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listAllWorkflows()
  }

suspend fun listAllWorkflows() {

    val request = ListWorkflowsRequest {
        maxResults =10
    }

    GlueClient { region = "us-east-1" }.use { glueClient ->
          val response = glueClient.listWorkflows(request)
          response.workflows?.forEach { workflow ->
           println("Workflow name is: $workflow")
        }
    }
}
