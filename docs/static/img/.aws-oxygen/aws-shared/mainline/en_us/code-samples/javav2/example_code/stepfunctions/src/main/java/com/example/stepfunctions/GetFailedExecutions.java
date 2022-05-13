
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.example.stepfunctions;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sfn.SfnClient;
import software.amazon.awssdk.services.sfn.model.ListExecutionsRequest;
import software.amazon.awssdk.services.sfn.model.ListExecutionsResponse;
import software.amazon.awssdk.services.sfn.model.ExecutionListItem;
import software.amazon.awssdk.services.sfn.model.SfnException;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetFailedExecutions {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <stateMachineARN>\n\n" +
                "Where:\n" +
                "    stateMachineARN - The ARN of the state machine.\n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String stateMachineARN = args[0];
        Region region = Region.US_WEST_2;
        SfnClient sfnClient = SfnClient.builder()
                .region(region)
                .build();

        getFailedExes(sfnClient, stateMachineARN);
        sfnClient.close();
    }

    public static void getFailedExes(SfnClient sfnClient, String stateMachineARN) {

        try {
            ListExecutionsRequest executionsRequest = ListExecutionsRequest.builder()
                    .maxResults(10)
                    .stateMachineArn(stateMachineARN)
                   // .statusFilter(ExecutionStatus.FAILED)
                    .build();

            ListExecutionsResponse response = sfnClient.listExecutions(executionsRequest);
            List<ExecutionListItem> items = response.executions();
            for (ExecutionListItem item: items) {
                System.out.println("The Amazon Resource Name (ARN) of the failed execution is "+item.executionArn());
            }

        } catch (SfnException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}
