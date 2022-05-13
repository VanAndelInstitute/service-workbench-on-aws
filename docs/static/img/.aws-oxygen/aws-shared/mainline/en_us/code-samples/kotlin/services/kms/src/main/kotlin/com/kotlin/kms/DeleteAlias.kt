
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kms

import aws.sdk.kotlin.services.kms.KmsClient
import aws.sdk.kotlin.services.kms.model.DeleteAliasRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>) {

    val usage = """
        Usage:
            <aliasName>  
        Where:
            aliasName - an alias name to delete (for example, alias/myAlias).
        
         """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val aliasName = args[0]
    deleteSpecificAlias(aliasName)
    }

suspend fun deleteSpecificAlias(aliasNameVal: String?) {

        val request = DeleteAliasRequest {
            aliasName= aliasNameVal
        }

        KmsClient { region = "us-west-2" }.use { kmsClient ->
            kmsClient.deleteAlias(request)
            println("$aliasNameVal was deleted.")

        }
    }
