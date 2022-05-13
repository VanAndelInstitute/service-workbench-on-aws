
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cognito

import aws.sdk.kotlin.services.cognitoidentityprovider.CognitoIdentityProviderClient
import aws.sdk.kotlin.services.cognitoidentityprovider.model.CreateUserPoolRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args: Array<String>){

    val usage = """
        Usage: <userPoolName>
    
        Where:
            userPoolName - the ID given to your user pool.
        """

     if (args.size != 1) {
          println(usage)
          exitProcess(0)
      }

    val userPoolName = args[0]
    val userPoolId = createPool(userPoolName)
    print("The new user pool Id is $userPoolId")
    }

 suspend fun createPool(userPoolName:String): String? {

    val request = CreateUserPoolRequest{
        this.poolName = userPoolName
    }

    CognitoIdentityProviderClient { region = "us-east-1" }.use { cognitoClient ->
            val createUserPoolResponse = cognitoClient.createUserPool(request)
            return createUserPoolResponse.userPool?.id
    }
 }
