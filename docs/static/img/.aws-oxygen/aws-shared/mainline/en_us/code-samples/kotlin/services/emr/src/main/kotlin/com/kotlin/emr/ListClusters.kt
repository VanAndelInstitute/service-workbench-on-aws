/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.emr

import aws.sdk.kotlin.services.emr.EmrClient
import aws.sdk.kotlin.services.emr.model.ListClustersRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

     listAllClusters()
}

suspend fun listAllClusters() {

        EmrClient { region = "us-west-2" }.use { emrClient ->
          val response = emrClient.listClusters( ListClustersRequest {})
          response.clusters?.forEach { cluster ->
            println("The cluster name is ${cluster.name}")
            println("The cluster ARN is ${cluster.clusterArn}")
          }
    }
}
