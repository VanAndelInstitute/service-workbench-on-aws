
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.lex

import aws.sdk.kotlin.services.lexmodelbuildingservice.LexModelBuildingClient
import aws.sdk.kotlin.services.lexmodelbuildingservice.model.GetBotRequest
import kotlinx.coroutines.delay
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
        <botName>  

    Where:
        botName - the name of the bot (for example, BookHotel).

    """

    if (args.size != 1) {
         println(usage)
         exitProcess(0)
    }

    val botName = args[0]
    getStatus(botName)
}

suspend fun getStatus(botName: String?) {


    val request = GetBotRequest {
        name = botName
        versionOrAlias = "\$LATEST"
    }

    LexModelBuildingClient { region = "us-west-2" }.use { lexClient ->
        var status: String

        do {
            delay(2000)
            val response = lexClient.getBot(request)
            status = response.status.toString()
            println("The status is $status")

        } while (status.compareTo("READY") != 0)

    }
}
