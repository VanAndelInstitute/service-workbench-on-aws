
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sts

import aws.sdk.kotlin.services.sts.StsClient
import aws.sdk.kotlin.services.sts.model.GetCallerIdentityRequest


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.
For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */
suspend fun main() {
    getCallerId()

}

suspend fun getCallerId() {

    StsClient { region = "us-east-1" }.use { stsClient ->
      val response = stsClient.getCallerIdentity(GetCallerIdentityRequest{})
      println("The user id is ${response.userId}")
      println("The ARN value is ${response.arn}")
    }
}
