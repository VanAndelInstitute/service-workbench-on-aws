
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.redshift

import aws.sdk.kotlin.services.redshift.RedshiftClient
import aws.sdk.kotlin.services.redshift.model.DeleteClusterRequest
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
        <clusterId>  

    Where:
        clusterId - the id of the cluster. 
       
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val clusterId = args[0]
    deleteRedshiftCluster(clusterId)
    println("The example is done")
   }

suspend fun deleteRedshiftCluster(clusterId: String?) {

    val request = DeleteClusterRequest {
            clusterIdentifier = clusterId
            skipFinalClusterSnapshot = true
    }

    RedshiftClient { region = "us-west-2" }.use { redshiftClient ->
        val response = redshiftClient.deleteCluster(request)
        println("The status is ${response.cluster?.clusterStatus}")
    }
}
