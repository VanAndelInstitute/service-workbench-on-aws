
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.forecast

import aws.sdk.kotlin.services.forecast.ForecastClient
import aws.sdk.kotlin.services.forecast.model.ListDatasetGroupsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listDataGroups()
}

suspend fun listDataGroups() {

          val request = ListDatasetGroupsRequest {
              maxResults = 10
          }

          ForecastClient { region = "us-west-2" }.use { forecast ->
            val response = forecast.listDatasetGroups(request)
            response.datasetGroups?.forEach { group ->
                println("The data set group name is ${group.datasetGroupName}")
            }
          }
}
