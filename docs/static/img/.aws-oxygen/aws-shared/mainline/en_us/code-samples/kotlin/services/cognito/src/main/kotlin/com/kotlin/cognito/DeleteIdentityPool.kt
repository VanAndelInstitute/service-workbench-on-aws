
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cognito

import aws.sdk.kotlin.services.cognitoidentity.CognitoIdentityClient
import aws.sdk.kotlin.services.cognitoidentity.model.DeleteIdentityPoolRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>){

    val usage = """
        Usage: <identityPoolName>
    
        Where:
            identityPoolName - the name of the identity pool.
        """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val identityPoold = args[0]
    deleteIdPool(identityPoold)
    }

suspend fun deleteIdPool(identityPoold: String?) {

        val request = DeleteIdentityPoolRequest {
            this.identityPoolId = identityPoold
        }

        CognitoIdentityClient { region = "us-east-1" }.use { cognitoIdclient ->

          cognitoIdclient.deleteIdentityPool(request)
          println("The identity pool was successfully deleted")
        }
    }
