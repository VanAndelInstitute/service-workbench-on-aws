
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.GetGroupsRequest

suspend fun main() {
    getAllGroups()
}

 suspend fun getAllGroups() {

        XRayClient { region = "us-east-1" }.use { xRayClient ->
          val response = xRayClient.getGroups(GetGroupsRequest{})
          response.groups?.forEach { group ->
              println("The AWS X-Ray group name is ${group.groupName}")
          }
        }
 }


