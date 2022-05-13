
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.lambda

import aws.sdk.kotlin.services.lambda.LambdaClient
import aws.sdk.kotlin.services.lambda.model.DeleteFunctionRequest
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
        <functionName>  

    Where:
        functionName - the name of the Lambda function. 
   """

    if (args.size != 1) {
        println(usage)
        exitProcess(1)
    }

    val functionName = args[0]
    delLambdaFunction(functionName )

}

suspend fun delLambdaFunction(myFunctionName: String) {

        val request = DeleteFunctionRequest {
            functionName = myFunctionName
        }

        LambdaClient { region = "us-west-2" }.use { awsLambda ->
            awsLambda.deleteFunction(request)
            println("$myFunctionName was deleted")
         }
 }
