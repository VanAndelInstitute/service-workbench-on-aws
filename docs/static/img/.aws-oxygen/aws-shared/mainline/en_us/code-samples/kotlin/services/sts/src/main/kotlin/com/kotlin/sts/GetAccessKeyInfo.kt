
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sts

import aws.sdk.kotlin.services.sts.StsClient
import aws.sdk.kotlin.services.sts.model.GetAccessKeyInfoRequest
import kotlin.system.exitProcess


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.
For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main(args:Array<String>) {

    val usage = """
        Usage:
            accessKeyId> 

        Where:
            accessKeyId - the identifier of an access key (for example, XXXXX3JWY3BXW7POHDLA). 
        """

    if (args.size != 1) {
       println(usage)
       exitProcess(0)
    }

    val accessKeyId = args[0]
    getKeyInfo(accessKeyId)
}

suspend fun getKeyInfo(accessKeyIdVal: String?) {

    val accessRequest = GetAccessKeyInfoRequest {
        accessKeyId = accessKeyIdVal
    }

    StsClient { region = "us-east-1" }.use { stsClient ->
        val accessResponse = stsClient.getAccessKeyInfo(accessRequest)
        println("The account associated with the access key is ${accessResponse.account}")
    }
}
