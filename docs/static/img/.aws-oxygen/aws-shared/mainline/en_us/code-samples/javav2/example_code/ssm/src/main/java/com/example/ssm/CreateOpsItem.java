
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.ssm;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.ssm.SsmClient;
import software.amazon.awssdk.services.ssm.model.CreateOpsItemRequest;
import software.amazon.awssdk.services.ssm.model.CreateOpsItemResponse;
import software.amazon.awssdk.services.ssm.model.SsmException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class CreateOpsItem {

    public static void main(String[] args) {

            final String USAGE = "\n" +
                "Usage:\n" +
                "    <title> <source> <category> <severity>\n\n" +
                "Where:\n" +
                "    title - the OpsItem title.\n" +
                "    source - the origin of the OpsItem, such as Amazon EC2 or AWS Systems Manager.\n" +
                "    category - a category to assign to an OpsItem.\n" +
                "    severity - a severity to assign to an OpsItem.\n";

            if (args.length != 4) {
                System.out.println(USAGE);
                System.exit(1);
            }

            String title = args[0];
            String source = args[1];
            String category = args[2];
            String severity = args[3];

            Region region = Region.US_EAST_1;
            SsmClient ssmClient = SsmClient.builder()
                .region(region)
                .build();

            System.out.println("The Id of the OpsItem is " +createNewOpsItem(ssmClient, title, source, category, severity));
            ssmClient.close();
    }

    public static String createNewOpsItem( SsmClient ssmClient,
                                           String title,
                                           String source,
                                           String category,
                                           String severity) {

        try {
            CreateOpsItemRequest opsItemRequest = CreateOpsItemRequest.builder()
                .description("Created by the SSM Java API")
                .title(title)
                .source(source)
                .category(category)
                .severity(severity)
                .build();

            CreateOpsItemResponse itemResponse = ssmClient.createOpsItem(opsItemRequest);
            return itemResponse.opsItemId();

    } catch (SsmException e) {
        System.err.println(e.getMessage());
        System.exit(1);
    }
        return "";
  }
}
