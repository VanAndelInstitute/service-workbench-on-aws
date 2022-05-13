/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.glue

import aws.sdk.kotlin.services.glue.GlueClient
import aws.sdk.kotlin.services.glue.model.StopCrawlerRequest
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
        <crawlerName>

    Where:
         crawlerName - the name of the crawler to delete. 
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val crawlerName = args[0]
    stopSpecificCrawler(crawlerName)
   }

suspend fun stopSpecificCrawler(crawlerName: String) {

    val request = StopCrawlerRequest {
        name = crawlerName
    }

    GlueClient { region = "us-west-2" }.use { glueClient ->
        glueClient.stopCrawler(request)
        println("$crawlerName was stopped")
    }
}
