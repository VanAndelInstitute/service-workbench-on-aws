
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.personalize

import aws.sdk.kotlin.services.personalize.PersonalizeClient
import aws.sdk.kotlin.services.personalize.model.ListRecipesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main(){
    listAllRecipes()
    }

suspend fun listAllRecipes() {

        val request = ListRecipesRequest {
            maxResults = 15
        }
        PersonalizeClient { region = "us-east-1" }.use { personalizeClient ->
            val response = personalizeClient.listRecipes(request)
            response.recipes?.forEach { recipe ->
                    println("The recipe ARN is ${recipe.recipeArn}")
                    println("The recipe name is ${recipe.name}")
            }
        }
}
