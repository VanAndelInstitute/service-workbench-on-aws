
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.comprehend

import aws.sdk.kotlin.services.comprehend.ComprehendClient
import aws.sdk.kotlin.services.comprehend.model.DocumentClassifierInputDataConfig
import aws.sdk.kotlin.services.comprehend.model.CreateDocumentClassifierRequest
import aws.sdk.kotlin.services.comprehend.model.LanguageCode
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
            <dataAccessRoleArn> <s3Uri> <documentClassifierName>

        Where:
            dataAccessRoleArn - the ARN value of the role used for this operation.
            s3Uri - the Amazon S3 bucket that contains the CSV file.
            documentClassifierName - the name of the document classifier.
        """

    if (args.size != 3) {
        println(usage)
        exitProcess(0)
    }

    val dataAccessRoleArn = args[0]
    val s3Uri = args[1]
    val documentClassifierName = args[2]
    createDocumentClassifier(dataAccessRoleArn,s3Uri, documentClassifierName)
  }

suspend fun createDocumentClassifier(dataAccessRoleArnVal: String, s3UriVal: String, documentClassifierNameVal: String) {

    val config = DocumentClassifierInputDataConfig {
        s3Uri = s3UriVal
    }
    val request = CreateDocumentClassifierRequest {
        documentClassifierName = documentClassifierNameVal
        dataAccessRoleArn = dataAccessRoleArnVal
        languageCode = LanguageCode.fromValue("en")
        inputDataConfig = config
    }

    ComprehendClient { region = "us-east-1" }.use { comClient ->
      val resp = comClient.createDocumentClassifier(request)
      val documentClassifierArn = resp.documentClassifierArn
      println("Document Classifier ARN is $documentClassifierArn")
     }
  }
