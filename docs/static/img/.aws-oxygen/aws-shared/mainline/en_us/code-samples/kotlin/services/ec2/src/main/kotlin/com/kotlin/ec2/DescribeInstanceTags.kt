
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.kotlin.ec2

import aws.sdk.kotlin.services.ec2.Ec2Client
import aws.sdk.kotlin.services.ec2.model.DescribeTagsRequest
import aws.sdk.kotlin.services.ec2.model.Filter
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
            <resourceIdVal> 

        Where:
            resourceIdVal - the instance ID value that you can obtain from the AWS Management Console (for example, i-xxxxxx0913e05f482).
        """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val resourceIdVal = args[0]
    describeEC2Tags(resourceIdVal)
}

suspend fun describeEC2Tags(resourceIdVal: String) {

        val filter = Filter {
            name = "resource-id"
            values = listOf(resourceIdVal)
        }

        val request = DescribeTagsRequest {
            filters = listOf(filter)
        }

        Ec2Client { region = "us-west-2" }.use { ec2 ->
         val response =  ec2.describeTags(request)
         response.tags?.forEach { tag ->
            println("Tag key is ${tag.key}")
            println("Tag value is ${tag.value}")
        }
    }
}
