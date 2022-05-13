
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.personalize

import aws.sdk.kotlin.services.personalize.PersonalizeClient
import aws.sdk.kotlin.services.personalize.model.ListDatasetGroupsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){
    listDSGroups()
}

suspend fun listDSGroups() {

        val request = ListDatasetGroupsRequest {
            maxResults = 15
        }
        PersonalizeClient { region = "us-east-1" }.use { personalizeClient ->
            val response = personalizeClient.listDatasetGroups(request)
            response.datasetGroups?.forEach { group ->
                 println("The data set name is ${group.name}")
                 println("The data set ARN is ${group.datasetGroupArn}")
            }
          }
 }
