
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.personalize;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.personalize.PersonalizeClient;
import software.amazon.awssdk.services.personalize.model.DescribeRecipeRequest;
import software.amazon.awssdk.services.personalize.model.DescribeRecipeResponse;
import software.amazon.awssdk.services.personalize.model.PersonalizeException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DescribeRecipe {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    DescribeRecipe <recipeArn>\n\n" +
                "Where:\n" +
                "    recipeArn - The ARN of the recipe.\n\n";

        if (args.length < 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String recipeArn = args[0];
        Region region = Region.US_EAST_1;
        PersonalizeClient personalizeClient = PersonalizeClient.builder()
                .region(region)
                .build();

        describeSpecificRecipe(personalizeClient, recipeArn);
        personalizeClient.close();
    }

    public static void describeSpecificRecipe(PersonalizeClient personalizeClient, String recipeArn) {

        try{
            DescribeRecipeRequest recipeRequest = DescribeRecipeRequest.builder()
                .recipeArn(recipeArn)
                .build();

            DescribeRecipeResponse recipeResponse = personalizeClient.describeRecipe(recipeRequest);
            System.out.println("The recipe name is "+recipeResponse.recipe().name());

        } catch (PersonalizeException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
     }
}
