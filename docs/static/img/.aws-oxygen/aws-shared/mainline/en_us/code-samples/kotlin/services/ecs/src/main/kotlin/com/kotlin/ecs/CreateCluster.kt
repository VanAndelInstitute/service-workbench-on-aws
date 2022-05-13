
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.ecs

import aws.sdk.kotlin.services.ecs.EcsClient
import aws.sdk.kotlin.services.ecs.model.ExecuteCommandConfiguration
import aws.sdk.kotlin.services.ecs.model.ExecuteCommandLogging
import aws.sdk.kotlin.services.ecs.model.ClusterConfiguration
import aws.sdk.kotlin.services.ecs.model.CreateClusterRequest
import kotlin.system.exitProcess


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>){

    val usage = """
    
    Usage:
        <clusterName> 

    Where:
        clusterName - the name of the ECS cluster to create.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val clusterName = args[0]
    val clusterArn = createGivenCluster(clusterName)
    println("The cluster ARN is $clusterArn")
}

suspend fun createGivenCluster(clusterNameVal: String?): String? {

        val commandConfiguration = ExecuteCommandConfiguration {
            logging = ExecuteCommandLogging.Default
        }

        val clusterConfiguration = ClusterConfiguration {
            executeCommandConfiguration = commandConfiguration
        }

        val request = CreateClusterRequest {
            clusterName = clusterNameVal
            configuration = clusterConfiguration
        }

        EcsClient { region = "us-east-1" }.use { ecsClient ->
         val response = ecsClient.createCluster(request)
         return response.cluster?.clusterArn
    }
}

