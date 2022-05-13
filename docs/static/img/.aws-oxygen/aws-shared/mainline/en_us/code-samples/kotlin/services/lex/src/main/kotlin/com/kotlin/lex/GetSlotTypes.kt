
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.lex


import aws.sdk.kotlin.services.lexmodelbuildingservice.LexModelBuildingClient
import aws.sdk.kotlin.services.lexmodelbuildingservice.model.GetSlotTypesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

    getSlotsInfo()
}

suspend fun getSlotsInfo() {

    LexModelBuildingClient { region = "us-west-2" }.use { lexClient ->

        val response = lexClient.getSlotTypes(GetSlotTypesRequest{ })
        response.slotTypes?.forEach { slot ->
              println("Slot name is ${slot.name}.")
              println("Slot description is ${slot.description}.")
              println("Slot version is ${slot.version}.")
       }
    }
}
