
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.secrets

import aws.sdk.kotlin.services.secretsmanager.SecretsManagerClient
import aws.sdk.kotlin.services.secretsmanager.model.DescribeSecretRequest
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
    describeGivenSecret(secretName)
    }


  suspend fun describeGivenSecret(secretName: String?) {

       val secretRequest = DescribeSecretRequest {
           secretId = secretName
       }

       SecretsManagerClient { region = "us-east-1" }.use { secretsClient ->
           val response = secretsClient.describeSecret(secretRequest)
           val secArn = response.description
           println("The secret description is $secArn")
       }
}
