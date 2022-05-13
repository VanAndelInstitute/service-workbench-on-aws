/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.emr

import aws.sdk.kotlin.services.emr.EmrClient
import aws.sdk.kotlin.services.emr.model.HadoopJarStepConfig
import aws.sdk.kotlin.services.emr.model.StepConfig
import aws.sdk.kotlin.services.emr.model.AddJobFlowStepsRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have set up your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>) {

    val usage = """
        Usage:
            <jar> <myClass> <jobFlowId>

        Where:
            jar - a path to a JAR file run during the step. 
            myClass - the name of the main class in the specified Java file. 
            jobFlowId - The id of the job flow.. 
        """

      if (args.size != 3) {
          println(usage)
          exitProcess(0)
      }

    val jar = args[0]
    val myClass = args[1]
    val jobFlowId = args[2]
    addNewStep(jobFlowId, jar, myClass)

}

suspend fun addNewStep(jobFlowIdVal: String?, jarVal: String?, myClass: String?) {

        val jarStepConfig = HadoopJarStepConfig {
            jar = jarVal
            mainClass = myClass
        }

        val stepConfig = StepConfig {
            hadoopJarStep = jarStepConfig
            name = "Run a bash script"
        }

        val request = AddJobFlowStepsRequest {
            jobFlowId = jobFlowIdVal
            steps = listOf(stepConfig)
        }

        EmrClient { region = "us-west-2" }.use { emrClient ->
            emrClient.addJobFlowSteps(request)
            println("You have successfully added a step!")
        }
}
