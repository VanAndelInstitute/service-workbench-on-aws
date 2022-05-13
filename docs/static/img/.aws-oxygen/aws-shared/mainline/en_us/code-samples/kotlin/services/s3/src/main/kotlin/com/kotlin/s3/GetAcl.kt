
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.GetObjectAclRequest
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
        <bucketName> <objectKey>

    Where:
        bucketName - the Amazon S3 bucket name.
        objectKey - the name of the object from which the ACL is retrieved.
    """

     if (args.size != 2) {
         println(usage)
         exitProcess(0)
     }

    val bucketName = args[0]
    val objectKey = args[1]
    getBucketACL(objectKey, bucketName)

}
 suspend fun getBucketACL(objectKey: String, bucketName: String) {

        val request = GetObjectAclRequest {
            bucket = bucketName
            key = objectKey
        }

        S3Client { region = "us-east-1" }.use { s3 ->
                val response = s3.getObjectAcl(request)
                response.grants?.forEach { grant ->
                    println("Grant permission is ${grant.permission}")
                }
        }
  }
