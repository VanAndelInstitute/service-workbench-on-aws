
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kms

import aws.sdk.kotlin.services.kms.KmsClient
import aws.sdk.kotlin.services.kms.model.ListAliasesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listAllAliases()
}

suspend fun listAllAliases() {

        val request = ListAliasesRequest {
            limit = 15
        }

        KmsClient { region = "us-west-2" }.use { kmsClient ->
            val response = kmsClient.listAliases(request)
            response.aliases?.forEach { alias ->
                println("The alias name is ${alias.aliasName}")
            }
        }
 }
