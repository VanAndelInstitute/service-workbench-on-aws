
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.cloudtrail

import aws.sdk.kotlin.services.cloudtrail.CloudTrailClient
import aws.sdk.kotlin.services.cloudtrail.model.LookupEventsRequest

suspend fun main() {
   lookupAllEvents()
}

suspend fun lookupAllEvents() {

    val request = LookupEventsRequest {
        maxResults =20
    }

    CloudTrailClient { region = "us-east-1" }.use { cloudTrail ->
           val response = cloudTrail.lookupEvents(request)
            response.events?.forEach { event ->
                println("Event name is ${event.eventName}")
                println("The event source is ${event.eventSource}")
            }
        }
  }
