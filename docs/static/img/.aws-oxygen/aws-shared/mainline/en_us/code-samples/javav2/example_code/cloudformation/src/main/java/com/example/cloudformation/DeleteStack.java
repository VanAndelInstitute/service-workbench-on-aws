
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.cloudformation;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudformation.CloudFormationClient;
import software.amazon.awssdk.services.cloudformation.model.CloudFormationException;
import software.amazon.awssdk.services.cloudformation.model.DeleteStackRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class DeleteStack {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <stackName> \n\n" +
                "Where:\n" +
                "    stackName - the name of the AWS CloudFormation stack. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String stackName = args[0];
        Region region = Region.US_EAST_1;
        CloudFormationClient cfClient = CloudFormationClient.builder()
                .region(region)
                .build();

        deleteSpecificTemplate(cfClient, stackName);
        cfClient.close();
    }

    public static void deleteSpecificTemplate(CloudFormationClient cfClient, String stackName) {

       try {

        DeleteStackRequest stackRequest = DeleteStackRequest.builder()
                .stackName(stackName)
                .build();

        cfClient.deleteStack(stackRequest);
        System.out.println("The AWS CloudFormation stack was successfully deleted!");

       } catch (CloudFormationException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
  }
}
