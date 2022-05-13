
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.secrets

import aws.sdk.kotlin.services.secretsmanager.SecretsManagerClient
import aws.sdk.kotlin.services.secretsmanager.model.ListSecretsRequest

suspend fun main() {
    listAllSecrets()
}

suspend fun listAllSecrets() {

        SecretsManagerClient { region = "us-east-1" }.use { secretsClient ->
        val response = secretsClient.listSecrets(ListSecretsRequest{})
            response.secretList?.forEach { secret ->
                    println("The secret name is ${secret.name}")
                    println("The secret description is ${secret.description}")
            }
        }
}
