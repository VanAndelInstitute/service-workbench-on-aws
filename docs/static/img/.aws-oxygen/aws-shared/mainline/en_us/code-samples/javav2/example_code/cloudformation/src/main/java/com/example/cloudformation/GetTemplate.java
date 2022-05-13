
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.cloudformation;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudformation.CloudFormationClient;
import software.amazon.awssdk.services.cloudformation.model.CloudFormationException;
import software.amazon.awssdk.services.cloudformation.model.GetTemplateRequest;
import software.amazon.awssdk.services.cloudformation.model.GetTemplateResponse;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class GetTemplate {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <stackName> \n\n" +
                "Where:\n" +
                "    stackName - the name of the AWS CloudFormation stack. \n" ;

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String stackName = args[0];
        Region region = Region.US_WEST_2;
        CloudFormationClient cfClient = CloudFormationClient.builder()
                .region(region)
                .build();

        getSpecificTemplate(cfClient, stackName);
        cfClient.close();
    }

    public static void getSpecificTemplate(CloudFormationClient cfClient, String stackName) {

      try {
          GetTemplateRequest typeRequest = GetTemplateRequest.builder()
                .stackName(stackName)
                .build();

          GetTemplateResponse response = cfClient.getTemplate(typeRequest) ;
          String body = response.templateBody();
          System.out.println(body);

      } catch (  CloudFormationException e) {
        System.err.println(e.getMessage());
        System.exit(1);
    }
  }
}
