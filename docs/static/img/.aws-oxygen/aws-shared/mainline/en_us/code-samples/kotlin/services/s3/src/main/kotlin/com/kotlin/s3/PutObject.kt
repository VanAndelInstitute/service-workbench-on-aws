
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.PutObjectRequest
import aws.smithy.kotlin.runtime.content.asByteStream
import java.nio.file.Paths
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
        <bucketName> <objectKey> <objectPath>

    Where:
        bucketName - the Amazon S3 bucket to upload an object into.
        objectKey - the object to upload (for example, book.pdf).
        objectPath - the path where the file is located (for example, C:/AWS/book2.pdf).
    """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val bucketName = args[0]
    val objectKey = args[1]
    val objectPath = args[2]
    putS3Object(bucketName, objectKey, objectPath)
}

suspend fun putS3Object(bucketName: String, objectKey: String, objectPath: String) {

            val metadataVal = mutableMapOf<String, String>()
            metadataVal["myVal"] = "test"

            val request = PutObjectRequest {
                bucket = bucketName
                key = objectKey
                metadata = metadataVal
                this.body = Paths.get(objectPath).asByteStream()
            }

            S3Client { region = "us-east-1" }.use { s3 ->
               val response =s3.putObject(request)
               println("Tag information is ${response.eTag}")
            }
      }
