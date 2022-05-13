
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.iam

import aws.sdk.kotlin.services.iam.IamClient
import aws.sdk.kotlin.services.iam.model.ListUsersRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
    listAllUsers()
    }

suspend fun listAllUsers() {

        IamClient { region = "AWS_GLOBAL" }.use { iamClient ->
            val response = iamClient.listUsers(ListUsersRequest { })
            response.users?.forEach { user ->
                println("Retrieved user ${user.userName}")
            }
        }
 }
