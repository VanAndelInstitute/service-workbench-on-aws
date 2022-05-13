
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kms

import aws.sdk.kotlin.services.kms.KmsClient
import aws.sdk.kotlin.services.kms.model.CreateAliasRequest
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
            <targetKeyId> <aliasName>  
        Where:
            targetKeyId - the key ID or the Amazon Resource Name (ARN) of the KMS key.
            aliasName - an alias name to create (for example, alias/myAlias).
        
         """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val targetKeyId = args[0]
    val aliasName = args[1]
    createCustomAlias(targetKeyId, aliasName)
}

 suspend fun createCustomAlias(targetKeyIdVal: String?, aliasNameVal: String?) {

    val request = CreateAliasRequest {
        aliasName = aliasNameVal
        targetKeyId = targetKeyIdVal
    }

    KmsClient { region = "us-west-2" }.use { kmsClient ->
             kmsClient.createAlias(request)
             println("$aliasNameVal was successfully created")
    }
}
