
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.forecast

import aws.sdk.kotlin.services.forecast.ForecastClient
import aws.sdk.kotlin.services.forecast.model.DeleteDatasetRequest
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
        <dataSetARN>  

    Where:
        dataSetARN - the ARN of the data set to delete. 
       """

      if (args.size != 1) {
          println(usage)
          exitProcess(0)
      }

    val dataSetARN = args[0]
    deleteForecastDataSet(dataSetARN)
    }

suspend fun deleteForecastDataSet(myDataSetARN: String?) {

       val request = DeleteDatasetRequest {
        datasetArn = myDataSetARN
        }

        ForecastClient { region = "us-west-2" }.use { forecast ->
            forecast.deleteDataset(request)
            println("$myDataSetARN data set was deleted")
    }
}
