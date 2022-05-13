
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.iam

import aws.sdk.kotlin.services.iam.IamClient
import aws.sdk.kotlin.services.iam.model.ListAccountAliasesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

    listAliases()
}

suspend  fun listAliases() {

    IamClient { region = "AWS_GLOBAL" }.use { iamClient ->
      val response = iamClient.listAccountAliases(ListAccountAliasesRequest{})
        response.accountAliases?.forEach { alias ->
            println("Retrieved account alias $alias")
        }

    }
}
