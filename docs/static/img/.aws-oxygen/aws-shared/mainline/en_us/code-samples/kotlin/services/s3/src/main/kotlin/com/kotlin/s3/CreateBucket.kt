
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.CreateBucketRequest
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
        <bucketName> 

    Where:
        bucketName - the name of the Amazon S3 bucket to create. The Amazon S3 bucket name must be unique, or an error occurs.
    """

   if (args.size != 1) {
        println(usage)
        exitProcess(0)
   }
    val bucketName = args[0]
    createNewBucket(bucketName)
}

    suspend fun createNewBucket(bucketName: String) {

        val request = CreateBucketRequest {
             bucket = bucketName
         }

        S3Client { region = "us-east-1" }.use { s3 ->
            s3.createBucket(request)
            println("$bucketName is ready")
        }
 }
