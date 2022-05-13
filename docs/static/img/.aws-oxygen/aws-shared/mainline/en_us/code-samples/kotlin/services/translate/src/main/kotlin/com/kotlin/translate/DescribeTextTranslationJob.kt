
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.translate

import aws.sdk.kotlin.services.translate.TranslateClient
import aws.sdk.kotlin.services.translate.model.DescribeTextTranslationJobRequest
import kotlin.system.exitProcess

suspend fun main(args: Array<String>){

    val usage = """
    Usage:
        <jobId> 

    Where:
         jobId - a translation job ID value. You can obtain this value from the BatchTranslation example.
    """

      if (args.size != 1) {
          println(usage)
          exitProcess(0)
       }

    val jobId = args[0]
    describeTranslationJob(jobId)
}

suspend fun describeTranslationJob(id: String?) {

        val textTranslationJobRequest = DescribeTextTranslationJobRequest {
            jobId = id!!
         }

        TranslateClient { region = "us-west-2" }.use { translateClient ->
            val jobResponse =  translateClient.describeTextTranslationJob(textTranslationJobRequest)
            println("The job status is ${jobResponse.textTranslationJobProperties?.jobStatus}.")
        }
    }
