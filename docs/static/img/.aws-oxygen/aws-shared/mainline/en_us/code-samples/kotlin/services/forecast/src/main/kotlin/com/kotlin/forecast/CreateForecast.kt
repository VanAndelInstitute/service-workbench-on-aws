
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.forecast

import aws.sdk.kotlin.services.forecast.ForecastClient
import aws.sdk.kotlin.services.forecast.model.CreateForecastRequest
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
        <name> <predictorArn> 

    Where:
        name - the name of the forecast. 
        predictorArn - the ARN of the predictor to use (ie, arn:aws:forecast:us-west-2:xxxxxe33:predictor/MyPredictor). 
    """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val name = args[0]
    val predictorArn = args[1]
    val forecastArn= createNewForecast(name, predictorArn)
    println("The ARN of the new forecast is $forecastArn")
    }

suspend  fun createNewForecast(name: String?, predictorArnVal: String?): String? {

          val request = CreateForecastRequest {
              forecastName = name
              predictorArn = predictorArnVal
          }

          ForecastClient { region = "us-west-2" }.use { forecast ->
            val response = forecast.createForecast(request)
            return response.forecastArn
          }
  }
