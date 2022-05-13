
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.search

import aws.sdk.kotlin.services.opensearch.OpenSearchClient
import aws.sdk.kotlin.services.opensearch.model.ClusterConfig
import aws.sdk.kotlin.services.opensearch.model.UpdateDomainConfigRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <domainName>

    Where:
        domainName - The name of the domain to update.
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(1)
    }
    val domainName = args[0]
    updateSpecificDomain(domainName)
}
suspend fun updateSpecificDomain(domainNameVal: String?) {

        val clusterConfigOb = ClusterConfig {
            instanceCount = 3
        }

        val request = UpdateDomainConfigRequest {
            domainName = domainNameVal
            clusterConfig = clusterConfigOb
        }

        println("Sending domain update request...")
        OpenSearchClient { region = "us-east-1" }.use { searchClient ->
          val updateResponse = searchClient.updateDomainConfig(request)
          println("Domain update response from Amazon OpenSearch Service:")
          println(updateResponse.toString())
    }
}
