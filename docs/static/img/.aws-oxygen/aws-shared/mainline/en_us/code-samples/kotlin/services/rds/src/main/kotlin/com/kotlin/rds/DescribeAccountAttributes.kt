
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.rds

import aws.sdk.kotlin.services.rds.RdsClient
import aws.sdk.kotlin.services.rds.model.DescribeAccountAttributesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {
   getAccountAttributes()
}

suspend fun getAccountAttributes() {

    RdsClient { region = "us-west-2" }.use { rdsClient ->
      val response = rdsClient.describeAccountAttributes(DescribeAccountAttributesRequest{})
      response.accountQuotas?.forEach { quotas ->
        val response = response.accountQuotas
                println("Name is: ${quotas.accountQuotaName}")
                println("Max value is ${quotas.max}")
        }
    }
}
