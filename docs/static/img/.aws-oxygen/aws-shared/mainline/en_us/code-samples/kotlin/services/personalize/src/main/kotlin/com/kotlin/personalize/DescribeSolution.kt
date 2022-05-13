
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.personalize

import aws.sdk.kotlin.services.personalize.PersonalizeClient
import aws.sdk.kotlin.services.personalize.model.DescribeSolutionRequest
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
        <solutionArn>

    Where:
         solutionArn - the ARN of the solution to describe.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val solutionArn = args[0]
    describeSpecificSolution(solutionArn)
    }

suspend  fun describeSpecificSolution(solutionArnVal: String?) {

        val request =  DescribeSolutionRequest {
            solutionArn= solutionArnVal
        }

        PersonalizeClient { region = "us-east-1" }.use { personalizeClient ->
            val response = personalizeClient.describeSolution(request)
            println("The solution name is ${response.solution?.name}")
        }
  }
