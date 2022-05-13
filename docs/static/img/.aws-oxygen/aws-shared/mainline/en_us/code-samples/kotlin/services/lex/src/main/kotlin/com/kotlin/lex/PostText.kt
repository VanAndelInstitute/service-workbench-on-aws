
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.lex

import aws.sdk.kotlin.services.lexruntimeservice.LexRuntimeClient
import aws.sdk.kotlin.services.lexruntimeservice.model.PostTextRequest
import kotlin.system.exitProcess

/*
In this example, the Amazon Lex BookTrip example is used. For more information, see https://docs.aws.amazon.com/lex/latest/dg/ex-book-trip.html.

To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>){

    val usage = """
    
        Usage: 
            <botName> 

        Where:
          botName - the name of the bot (for example, BookHotel).
          botAlias - the bot alias.
    """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val botName = args[0]
    val botAlias = args[1]
    val inputText = "I need a hotel room"
    val textReponse = getText(inputText, botName,botAlias )
    println(textReponse)
}

suspend fun getText(text: String,botNameVal:String, botAliasVal:String ): String? {

        val userIdVal = "chatbot-demo"
        val sessionAttributesVal =  mutableMapOf<String, String>()

        val request = PostTextRequest {
            botName = botNameVal
            botAlias = botAliasVal
            inputText=text
            userId = userIdVal
            sessionAttributes = sessionAttributesVal
        }

        LexRuntimeClient { region = "us-west-2" }.use { lexClient ->
          val textResponse = lexClient.postText(request)
          val message = textResponse.message
          return message
        }
}
