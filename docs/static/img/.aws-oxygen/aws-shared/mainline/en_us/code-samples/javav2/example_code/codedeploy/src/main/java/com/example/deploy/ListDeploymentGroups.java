
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.example.deploy;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.codedeploy.CodeDeployClient;
import software.amazon.awssdk.services.codedeploy.model.CodeDeployException;
import software.amazon.awssdk.services.codedeploy.model.ListDeploymentGroupsRequest;
import software.amazon.awssdk.services.codedeploy.model.ListDeploymentGroupsResponse;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
import java.util.List;

public class ListDeploymentGroups {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <appName> \n\n" +
                "Where:\n" +
                "    appName - the application name. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String appName = args[0];
        Region region = Region.US_EAST_1;
        CodeDeployClient deployClient = CodeDeployClient.builder()
                .region(region)
                .build();

        listDeployGroups(deployClient, appName);
        deployClient.close();
    }

    public static void listDeployGroups(CodeDeployClient deployClient, String appName) {

        try {
            ListDeploymentGroupsRequest groupsRequest = ListDeploymentGroupsRequest.builder()
                .applicationName(appName)
                .build();

            ListDeploymentGroupsResponse response = deployClient.listDeploymentGroups(groupsRequest);
            List<String> groups = response.deploymentGroups();
            for (String group: groups) {
                System.out.println("The deployment group is: "+group);
            }

        } catch (CodeDeployException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
   }
}
