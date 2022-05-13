
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cognito

import aws.sdk.kotlin.services.cognitoidentity.CognitoIdentityClient
import aws.sdk.kotlin.services.cognitoidentity.model.ListIdentityPoolsRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){

    getPools()
    }

suspend fun getPools() {

    val request = ListIdentityPoolsRequest {
        maxResults = 10
    }

    CognitoIdentityClient { region = "us-east-1" }.use { cognitoIdentityClient ->
        val response = cognitoIdentityClient.listIdentityPools(request)
        response.identityPools?.forEach { pool ->
            println("The identity pool name is ${pool.identityPoolName}")
        }
    }
}
