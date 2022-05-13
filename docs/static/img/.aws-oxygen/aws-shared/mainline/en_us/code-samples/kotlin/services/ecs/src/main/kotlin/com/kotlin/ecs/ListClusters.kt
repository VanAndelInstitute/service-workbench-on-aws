
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.ecs

import aws.sdk.kotlin.services.ecs.EcsClient
import aws.sdk.kotlin.services.ecs.model.ListClustersRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){
    listAllClusters()
 }

suspend  fun listAllClusters() {

    EcsClient { region = "us-east-1" }.use { ecsClient ->
        val response = ecsClient.listClusters(ListClustersRequest{})
        response.clusterArns?.forEach { cluster ->
            println("The cluster arn is ${cluster}.")
       }
    }
}
