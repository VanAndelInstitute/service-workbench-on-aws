
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.forecast

import aws.sdk.kotlin.services.forecast.ForecastClient
import aws.sdk.kotlin.services.forecast.model.ListDatasetsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
   listForecastDataSets()
 }

suspend fun listForecastDataSets() {

        val request = ListDatasetsRequest {
            maxResults = 10
        }

        ForecastClient { region = "us-west-2" }.use { forecast ->
            val response= forecast.listDatasets(request)
            response.datasets?.forEach { group ->
                println("The Data Set name is ${group.datasetName}")
            }
          }
}
