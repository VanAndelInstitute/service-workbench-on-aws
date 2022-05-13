
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.personalize

import aws.sdk.kotlin.services.personalize.PersonalizeClient
import aws.sdk.kotlin.services.personalize.model.DescribeCampaignRequest
import kotlin.system.exitProcess

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(args:Array<String>){

    val usage = """
    Usage:
        <campaignArn>

    Where:
           campaignArn - The ARN of the campaign to describe.
     """

    if (args.size != 1) {
        println(usage)
        exitProcess(0)
     }

    val campaignArn = args[0]
    describeSpecificCampaign(campaignArn)
    }

suspend fun describeSpecificCampaign(campaignArnVal: String?) {


    val request = DescribeCampaignRequest {
        campaignArn = campaignArnVal
    }
    PersonalizeClient { region = "us-east-1" }.use { personalizeClient ->

            val response = personalizeClient.describeCampaign(request)
            val myCampaign = response.campaign
            if (myCampaign != null) {
                println("The campaign name is ${myCampaign.name}")
                println("The campaign status is ${myCampaign.status}")
            }
        }
   }
