
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.lex

import aws.sdk.kotlin.services.lexmodelbuildingservice.LexModelBuildingClient
import aws.sdk.kotlin.services.lexmodelbuildingservice.model.DeleteBotRequest
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
          botName - the name of bot (for example, BookHotel).
    """

     if (args.size != 1) {
         println(usage)
         exitProcess(0)
     }

    val botName = args[0]
    deleteSpecificBot(botName)
}

suspend fun deleteSpecificBot(botName: String) {

    val request = DeleteBotRequest {
        name = botName
    }

    LexModelBuildingClient { region = "us-west-2" }.use { lexClient ->
        lexClient.deleteBot(request)
        println("$botName was deleted!")
    }
}
