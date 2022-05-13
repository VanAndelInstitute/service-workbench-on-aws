
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.personalize;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.personalize.model.CreateFilterRequest;
import software.amazon.awssdk.services.personalize.PersonalizeClient;
import software.amazon.awssdk.services.personalize.model.PersonalizeException;

public class CreateFilter {

    public static void main(String [] args) {

        final String USAGE = "Usage:\n" +
                "    CreateFilter <filterName, datasetGroupArn, filterExpression, schemaArn>\n\n" +
                "Where:\n" +
                "   filterName - The name for the filter.\n" +
                "   datasetGroupArn - The Amazon Resource Name (ARN) for the destination dataset group.\n" +
                "   filterExpression - The expression for the filter.\n\n";

        if (args.length != 3) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String filterName = args[0];
        String datasetGroupArn = args[1];
        String filterExpression = args[2];

        // Change to the region where your resources are located
        Region region = Region.US_WEST_2;

        PersonalizeClient personalizeClient = PersonalizeClient.builder()
                .region(region)
                .build();

        String filterArn = createFilter(personalizeClient, filterName, datasetGroupArn, filterExpression);
        System.out.println("Filter ARN: " + filterArn);
        personalizeClient.close();

    }
    public static String createFilter(PersonalizeClient personalizeClient,
                                       String filterName,
                                       String datasetGroupArn,
                                       String filterExpression) {
        try {
            CreateFilterRequest request = CreateFilterRequest.builder()
                    .name(filterName)
                    .datasetGroupArn(datasetGroupArn)
                    .filterExpression(filterExpression)
                    .build();

            return personalizeClient.createFilter(request).filterArn();
        }
        catch(PersonalizeException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
        return "";
    }


}
