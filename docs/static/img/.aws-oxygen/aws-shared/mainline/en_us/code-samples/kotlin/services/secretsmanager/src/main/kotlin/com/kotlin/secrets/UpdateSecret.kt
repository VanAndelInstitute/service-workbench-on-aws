
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.secrets

import aws.sdk.kotlin.services.secretsmanager.SecretsManagerClient
import aws.sdk.kotlin.services.secretsmanager.model.UpdateSecretRequest
import kotlin.system.exitProcess

suspend fun main(args: Array<String>) {

    val usage = """
    Usage: 
        <secretName> <secretValue>

    Where:
         secretName - the name of the secret (for example, tutorials/MyFirstSecret).
         secretValue - the secret value.
      """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val secretName = args[0]
    val secretValue = args[1]
    updateMySecret(secretName, secretValue)
    }

suspend fun updateMySecret(secretName: String?, secretValue: String?) {

        val request = UpdateSecretRequest {
            secretId = secretName
            secretString = secretValue
        }

        SecretsManagerClient { region = "us-east-1" }.use { secretsClient ->
            secretsClient.updateSecret(request)
            println("The secret value was updated")
        }
 }
