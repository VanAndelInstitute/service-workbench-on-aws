
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.kotlin.ses

import aws.sdk.kotlin.services.ses.SesClient
import aws.sdk.kotlin.services.ses.model.ListIdentitiesRequest

suspend fun main() {
    listSESIdentities()
}

suspend fun listSESIdentities() {

    SesClient { region = "us-east-1" }.use { sesClient ->
        val response = sesClient.listIdentities(ListIdentitiesRequest{})
        response.identities?.forEach { identity ->
                 println("The identity is $identity")

        }

    }
}
