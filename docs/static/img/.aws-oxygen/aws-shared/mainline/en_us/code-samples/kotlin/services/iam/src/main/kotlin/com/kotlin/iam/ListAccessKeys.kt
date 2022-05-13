
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.iam

import aws.sdk.kotlin.services.iam.IamClient
import aws.sdk.kotlin.services.iam.model.ListAccessKeysRequest
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
            <username> 
        Where:
             username - the name of the user for which access keys are retrieved. 
        """

   if (args.size != 1) {
        println(usage)
        exitProcess(0)
   }

    val userName = args[0]
    listKeys(userName)
    }

suspend fun listKeys(userNameVal: String?) {

      val request = ListAccessKeysRequest {
          userName = userNameVal
      }
      IamClient { region = "AWS_GLOBAL" }.use { iamClient ->
        val response = iamClient.listAccessKeys(request)
            response.accessKeyMetadata?.forEach { md ->
                println("Retrieved access key ${md.accessKeyId}")
            }
      }
}
