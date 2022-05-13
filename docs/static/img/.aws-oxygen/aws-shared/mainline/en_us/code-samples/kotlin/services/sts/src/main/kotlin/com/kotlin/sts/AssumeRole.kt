
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.sts

import aws.sdk.kotlin.services.sts.StsClient
import aws.sdk.kotlin.services.sts.model.AssumeRoleRequest
import kotlin.system.exitProcess

/**
 * To make this code example work, create a Role that you want to assume.
 * Then define a Trust Relationship in the AWS Console. You can use this as an example:
 *
 * {
 *   "Version": "2012-10-17",
 *   "Statement": [
 *     {
 *       "Effect": "Allow",
 *       "Principal": {
 *         "AWS": "<Specify the ARN of your IAM user you are using in this code example>"
 *       },
 *       "Action": "sts:AssumeRole"
 *     }
 *   ]
 * }
 *
 */

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.
For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>) {

    val usage = """
    Usage:
        <roleArn> <roleSessionName> 

    Where:
        roleArn - the Amazon Resource Name (ARN) of the role to assume (for example, arn:aws:iam::xxxxx8047983:role/s3role). 
        roleSessionName - an identifier for the assumed role session (for example, mysession). 
    """

    if (args.size != 2) {
        println(usage)
        exitProcess(0)
    }

    val roleArn = args[0]
    val roleSessionName = args[1]
    assumeGivenRole(roleArn, roleSessionName)
}

suspend fun assumeGivenRole(roleArnVal: String?, roleSessionNameVal: String?) {

    val roleRequest = AssumeRoleRequest {
        roleArn = roleArnVal
        roleSessionName = roleSessionNameVal
    }

    StsClient { region = "us-east-1" }.use { stsClient ->
      val roleResponse = stsClient.assumeRole(roleRequest)
        val myCreds = roleResponse.credentials
        val exTime = myCreds?.expiration
        val tokenInfo = myCreds?.sessionToken
        println("The token $tokenInfo  expires on $exTime.")
    }
}

