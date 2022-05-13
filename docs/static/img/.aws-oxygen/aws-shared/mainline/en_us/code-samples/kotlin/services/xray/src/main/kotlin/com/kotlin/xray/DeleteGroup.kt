
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.xray

import aws.sdk.kotlin.services.xray.XRayClient
import aws.sdk.kotlin.services.xray.model.DeleteGroupRequest
import kotlin.system.exitProcess

suspend fun main(args:Array<String>) {

    val usage = """
        
        Usage: 
            <groupName>
        
        Where:
            groupName - the name of the group. 
                
        """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val groupName = args[0]
    deleteSpecificGroup(groupName)
}

suspend fun deleteSpecificGroup(groupNameVal: String) {

        val groupRequest = DeleteGroupRequest {
            groupName = groupNameVal
        }

        XRayClient { region = "us-east-1" }.use { xRayClient ->
            xRayClient.deleteGroup(groupRequest)
            println("$groupNameVal was deleted!")
        }
    }
