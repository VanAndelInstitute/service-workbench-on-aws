
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kms

import aws.sdk.kotlin.services.kms.KmsClient
import aws.sdk.kotlin.services.kms.model.DescribeKeyRequest
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
            <keyId> 
        Where:
            keyId -  a key id value to describe (for example, xxxxxbcd-12ab-34cd-56ef-1234567890ab). 
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val keyId = args[0]
    describeSpecifcKey(keyId)
 }

suspend  fun describeSpecifcKey(keyIdVal: String?) {

           val request = DescribeKeyRequest {
               keyId = keyIdVal
           }

           KmsClient { region = "us-west-2" }.use { kmsClient ->
               val response = kmsClient.describeKey(request)
               println("The key description is ${response.keyMetadata?.description}")
               println("The key ARN is ${response.keyMetadata?.arn}")
            }
 }
