
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.secrets

import aws.sdk.kotlin.services.secretsmanager.SecretsManagerClient
import aws.sdk.kotlin.services.secretsmanager.model.GetSecretValueRequest
import kotlin.system.exitProcess

suspend fun main(args: Array<String>) {

    val usage = """
    Usage: 
        <secretName> <secretValue>

    Where:
         secretName - the name of the secret (for example, tutorials/MyFirstSecret).
      """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val secretName = args[0]
    getValue(secretName)
    }

suspend fun getValue(secretName: String?) {

        val valueRequest = GetSecretValueRequest {
            secretId = secretName
        }

        SecretsManagerClient { region = "us-east-1" }.use { secretsClient ->
            val response = secretsClient.getSecretValue(valueRequest)
            val secret = response.secretString
            println("The secret value is $secret")
        }
 }
