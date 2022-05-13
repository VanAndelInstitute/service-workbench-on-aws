
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.lex

import aws.sdk.kotlin.services.lexmodelbuildingservice.LexModelBuildingClient
import aws.sdk.kotlin.services.lexmodelbuildingservice.model.GetBotsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    getAllBots()
}

suspend fun getAllBots() {

    LexModelBuildingClient { region = "us-west-2" }.use { lexClient ->
        val response = lexClient.getBots(GetBotsRequest{})
        response.bots?.forEach { bot ->
               println("The bot name is ${bot.name}")
                println("The bot version is ${bot.version}")
        }
    }
}
