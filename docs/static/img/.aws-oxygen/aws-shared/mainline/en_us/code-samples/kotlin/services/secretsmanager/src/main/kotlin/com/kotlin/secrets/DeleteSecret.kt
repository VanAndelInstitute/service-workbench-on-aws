
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.secrets

import aws.sdk.kotlin.services.secretsmanager.SecretsManagerClient
import aws.sdk.kotlin.services.secretsmanager.model.DeleteSecretRequest
import kotlin.system.exitProcess

suspend fun main(args: Array<String>) {

    val usage = """
    Usage: 
        <secretName> 

    Where:
         secretName - the name of the secret (for example, tutorials/MyFirstSecret).
     """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val secretName = args[0]
    deleteSpecificSecret(secretName)
    }

suspend fun deleteSpecificSecret(secretName: String) {

        val request = DeleteSecretRequest {
            secretId=secretName
        }

         SecretsManagerClient { region = "us-east-1" }.use { secretsClient ->
            secretsClient.deleteSecret(request)
            println("$secretName is deleted.")
        }
}
