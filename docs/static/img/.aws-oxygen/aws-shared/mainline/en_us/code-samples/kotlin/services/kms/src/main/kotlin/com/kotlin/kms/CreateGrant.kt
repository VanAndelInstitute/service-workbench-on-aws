
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.kms

import aws.sdk.kotlin.services.kms.KmsClient
import aws.sdk.kotlin.services.kms.model.CreateGrantRequest
import aws.sdk.kotlin.services.kms.model.GrantOperation
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
            <keyId> <granteePrincipal> <operation>
        Where:
            keyId - the unique identifier for the AWS KMS key that the grant applies to (for example, xxxxxbcd-12ab-34cd-56ef-1234567890ab).
            granteePrincipal - the principal that is given permission to perform the operations that the grant permits. 
            operation - an operation (for example, Encrypt). 
    """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
    }

    val keyId = args[0]
    val granteePrincipal = args[1]
    val operation = args[2]
    val grantId = createNewGrant(keyId,granteePrincipal,operation )
    println("Successfully created a grant with ID $grantId")
    }

suspend fun createNewGrant(keyIdVal: String?, granteePrincipalVal: String?, operation: String): String? {

            val operationOb = GrantOperation.fromValue(operation)
            val grantOperationList = ArrayList<GrantOperation>()
            grantOperationList.add(operationOb)

            val request = CreateGrantRequest {
                keyId = keyIdVal
                granteePrincipal = granteePrincipalVal
                operations = grantOperationList
            }

            KmsClient { region = "us-west-2" }.use { kmsClient ->
              val response = kmsClient.createGrant(request)
            return response.grantId
        }
  }
