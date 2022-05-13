
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.personalize

import aws.sdk.kotlin.services.personalize.PersonalizeClient
import aws.sdk.kotlin.services.personalize.model.ListSolutionsRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>){

    val usage = """
    Usage:
        <datasetGroupArn>

    Where:
        datasetGroupArn - The ARN of the data set group.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val datasetGroupArn = args[0]
    listAllSolutions(datasetGroupArn)
    }

suspend fun listAllSolutions(datasetGroupArnValue: String?) {

          val request = ListSolutionsRequest{
              maxResults = 10
              datasetGroupArn = datasetGroupArnValue
          }
          PersonalizeClient { region = "us-east-1" }.use { personalizeClient ->
            val response = personalizeClient.listSolutions(request)
            response.solutions?.forEach { solution ->
                    println("The solution ARN is ${solution.solutionArn}")
                    println("The solution name is ${solution.name}")
            }
         }
 }
