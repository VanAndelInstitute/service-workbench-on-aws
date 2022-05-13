
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.forecast

import aws.sdk.kotlin.services.forecast.ForecastClient
import aws.sdk.kotlin.services.forecast.model.ListForecastsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

    listAllForeCasts()
}

suspend fun listAllForeCasts() {

        val request =ListForecastsRequest{
            maxResults = 10
        }

        ForecastClient { region = "us-west-2" }.use { forecast ->
            val response = forecast.listForecasts(request)
            response.forecasts?.forEach { forecast ->
                println("The name of the forecast is ${forecast.forecastName}")
                println("The ARN of the forecast is ${forecast.forecastArn}")
            }
        }
 }
