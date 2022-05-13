
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.pipeline

import aws.sdk.kotlin.services.codepipeline.CodePipelineClient
import aws.sdk.kotlin.services.codepipeline.model.DeletePipelineRequest
import kotlin.system.exitProcess


suspend fun main(args:Array<String>) {

    val usage = """
        Usage:
            <name> 
        Where:
           name - the name of the pipeline to delete. 
   """
     if (args.size != 1) {
         println(usage)
         exitProcess(1)
    }

    val name =  args[0]
    deleteSpecificPipeline(name)
   }

suspend fun deleteSpecificPipeline(nameVal: String) {

    val request = DeletePipelineRequest {
        name = nameVal
    }
    CodePipelineClient { region = "us-east-1" }.use { pipelineClient ->
        pipelineClient.deletePipeline(request)
        println("$nameVal was successfully deleted")
    }
}
