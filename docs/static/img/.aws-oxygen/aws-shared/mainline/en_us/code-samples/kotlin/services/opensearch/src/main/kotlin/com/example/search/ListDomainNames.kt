
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.search

import aws.sdk.kotlin.services.opensearch.OpenSearchClient
import aws.sdk.kotlin.services.opensearch.model.ListDomainNamesResponse
import aws.sdk.kotlin.services.opensearch.model.ListDomainNamesRequest

suspend fun main() {
    listAllDomains()
}

suspend fun listAllDomains() {

    OpenSearchClient { region = "us-east-1" }.use { searchClient ->
     val response: ListDomainNamesResponse = searchClient.listDomainNames(ListDomainNamesRequest {})
     response.domainNames?.forEach { domain ->
            println("Domain name is " + domain.domainName)
        }
    }
}
