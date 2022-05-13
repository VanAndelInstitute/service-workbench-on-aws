
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.GetObjectRequest
import aws.smithy.kotlin.runtime.content.writeToFile
import java.io.File
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
        bucketName - the Amazon S3 bucket name.
        objectKey - the key name.
        objectPath - the path where the file is written to.
    """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
     }

    val bucketName = args[0]
    val objectKey = args[1]
    val objectPath = args[2]
    getObjectBytes(bucketName, objectKey, objectPath)
}

suspend fun getObjectBytes(bucketName: String, keyName: String, path: String) {

         val request =  GetObjectRequest {
             key = keyName
             bucket= bucketName
         }

         S3Client { region = "us-east-1" }.use { s3 ->
             s3.getObject(request) { resp ->
                    val myFile = File(path)
                    resp.body?.writeToFile(myFile)
                    println("Successfully read $keyName from $bucketName")
               }
         }
 }
