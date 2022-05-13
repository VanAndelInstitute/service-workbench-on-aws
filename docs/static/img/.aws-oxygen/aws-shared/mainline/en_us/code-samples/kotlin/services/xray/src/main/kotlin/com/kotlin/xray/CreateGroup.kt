
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.CreateGroupRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        
        Usage: 
            <groupName>
        
        Where:
            groupName - the name of the group to create 
                
        """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
    }

    val groupName = args[0]
    createNewGroup(groupName)
}

suspend fun createNewGroup(groupNameVal: String?) {

        val groupRequest = CreateGroupRequest {
             filterExpression = "fault = true AND http.url CONTAINS \"example/game\" AND responsetime >= 5"
             groupName = groupNameVal
         }

       XRayClient { region = "us-east-1" }.use { xRayClient ->
            val groupResponse = xRayClient.createGroup(groupRequest)
            println("The Group ARN is " + (groupResponse.group?.groupArn))
        }
 }
