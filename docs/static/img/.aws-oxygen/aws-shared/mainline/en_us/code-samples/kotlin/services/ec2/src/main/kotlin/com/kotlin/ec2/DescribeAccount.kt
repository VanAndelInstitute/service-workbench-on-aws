
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.ec2

import aws.sdk.kotlin.services.ec2.Ec2Client
import aws.sdk.kotlin.services.ec2.model.DescribeAccountAttributesRequest


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

   describeEC2Account()
}

suspend fun describeEC2Account() {

    Ec2Client { region = "us-west-2" }.use { ec2 ->
        val accountResults = ec2.describeAccountAttributes(DescribeAccountAttributesRequest{})
        accountResults.accountAttributes?.forEach { attribute ->
            println("The name of the attribute is ${attribute.attributeName}")

                attribute.attributeValues?.forEach {myValue->
                    println("The value of the attribute is ${myValue.attributeValue}")
                }
        }
    }
 }
