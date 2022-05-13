
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.s3

import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.model.Grant
import aws.sdk.kotlin.services.s3.model.Grantee
import aws.sdk.kotlin.services.s3.model.Type
import aws.sdk.kotlin.services.s3.model.Permission
import aws.sdk.kotlin.services.s3.model.Owner
import aws.sdk.kotlin.services.s3.model.AccessControlPolicy
import aws.sdk.kotlin.services.s3.model.PutBucketAclRequest
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
        <bucketName> <id>

    Where:
        bucketName - the Amazon S3 bucket to grant permissions on.
        id - the ID of the owner of this bucket (you can get this value from the AWS Management Console under the Amazon S3 Access control list (ACL)).
    """

     if (args.size != 2) {
         println(usage)
         exitProcess(0)
     }

    val bucketName = args[0]
    val id = args[1]
    setBucketAcl(bucketName, id)
    }

suspend fun setBucketAcl(bucketName: String, idVal: String) {

        val myGrant = Grantee {
             id = idVal
             type = Type.CanonicalUser
        }

        val ownerGrant = Grant {
            grantee = myGrant
            permission = Permission.FullControl
         }

        val grantList = mutableListOf<Grant>()
        grantList.add(ownerGrant)

        val ownerOb = Owner {
           id = idVal
         }

        val acl = AccessControlPolicy {
            owner = ownerOb
            grants = grantList
        }

        val request = PutBucketAclRequest {
            bucket = bucketName
            accessControlPolicy = acl
        }

       S3Client { region = "us-east-1" }.use { s3 ->
           s3.putBucketAcl(request)
           println("An ACL was successfully set on $bucketName")
     }
  }
