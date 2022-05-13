
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.CopyObjectRequest
import java.io.UnsupportedEncodingException
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
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
         <objectKey> <fromBucket> <toBucket> 

    Where:
        objectKey - the name of the object (for example, book.pdf).
        fromBucket - the Amazon S3 bucket name that contains the object (for example, bucket1).
        toBucket - the Amazon S3 bucket to copy the object to (for example, bucket2).
    """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
    }

    val objectKey = args[0]
    val fromBucket = args[1]
    val toBucket = args[2]
    copyBucketObject(fromBucket, objectKey, toBucket)
}

 suspend fun copyBucketObject(
                         fromBucket: String,
                         objectKey: String,
                         toBucket: String) {

        var encodedUrl=""
        try {
            encodedUrl = URLEncoder.encode("$fromBucket/$objectKey", StandardCharsets.UTF_8.toString())

        } catch (e: UnsupportedEncodingException) {
            println("URL could not be encoded: " + e.message)
        }

        val request = CopyObjectRequest {
            copySource = encodedUrl
            bucket = toBucket
            key= objectKey
        }
        S3Client { region = "us-east-1" }.use { s3 ->
           s3.copyObject(request)
        }
  }
