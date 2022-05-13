
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.deploy;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.codedeploy.CodeDeployClient;
import software.amazon.awssdk.services.codedeploy.model.CodeDeployException;
import software.amazon.awssdk.services.codedeploy.model.DeleteDeploymentGroupRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteDeploymentGroup {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <appName> <deploymentGroupName>\n\n" +
                "Where:\n" +
                "    appName - the name of the application. \n"+
                "    deploymentGroupName - the name of the deployment group. \n";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String appName = args[0];
        String deploymentGroupName = args[1];

        Region region = Region.US_EAST_1;
        CodeDeployClient deployClient = CodeDeployClient.builder()
                .region(region)
                .build();

        delDeploymentGroup(deployClient, appName, deploymentGroupName);
        deployClient.close();
    }

    public static void delDeploymentGroup(CodeDeployClient deployClient,
                                          String appName,
                                          String deploymentGroupName) {

       try {
            DeleteDeploymentGroupRequest deleteDeploymentGroupRequest = DeleteDeploymentGroupRequest.builder()
                .deploymentGroupName(appName)
                .applicationName(deploymentGroupName)
                .build();

            deployClient.deleteDeploymentGroup(deleteDeploymentGroupRequest);
            System.out.println(deploymentGroupName +" was deleted!");

        } catch (CodeDeployException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}
