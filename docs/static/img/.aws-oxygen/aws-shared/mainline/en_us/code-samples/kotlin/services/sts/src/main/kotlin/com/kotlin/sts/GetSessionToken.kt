
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sts

import aws.sdk.kotlin.services.sts.StsClient
import aws.sdk.kotlin.services.sts.model.GetSessionTokenRequest


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.
For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main() {
    getToken()
}

suspend fun getToken() {

    val request = GetSessionTokenRequest{
        durationSeconds = 1500
    }

    StsClient { region = "us-east-1" }.use { stsClient ->
        val tokenResponse = stsClient.getSessionToken(request)
        println("The token value is ${tokenResponse.credentials?.sessionToken}")
    }
}
