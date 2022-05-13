
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.quicksight;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.quicksight.QuickSightClient;
import software.amazon.awssdk.services.quicksight.model.DescribeAnalysisRequest;
import software.amazon.awssdk.services.quicksight.model.DescribeAnalysisResponse;
import software.amazon.awssdk.services.quicksight.model.QuickSightException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DescribeAnalysis {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "   <account> <analysisId>\n\n" +
                "Where:\n" +
                "   account - the ID of the AWS account that contains the analysis.\n\n" +
                "   queueName - the ID of the Amazon QuickSight Analysis that you're describing.\n\n";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String account = args[0];
        String analysisId = args[1];
        QuickSightClient qsClient = QuickSightClient.builder()
                .region(Region.US_EAST_1)
                .build();

        describeSpecificAnalysis(qsClient, account, analysisId);
        qsClient.close();
    }

    public static void describeSpecificAnalysis(QuickSightClient qsClient, String account,String analysisId) {

        try {

            DescribeAnalysisRequest analysisRequest = DescribeAnalysisRequest.builder()
                    .awsAccountId(account)
                    .analysisId(analysisId)
                    .build();

            DescribeAnalysisResponse analysisResponse = qsClient.describeAnalysis(analysisRequest);
            System.out.println("The Analysis ARN value is "+ analysisResponse.analysis().arn());
            System.out.println("The Analysis ARN name is "+ analysisResponse.analysis().name());
            System.out.println("The Analysis theme ARN value is "+ analysisResponse.analysis().themeArn());
            System.out.println("The Analysis dataSet ARN  is "+ analysisResponse.analysis().dataSetArns());

        } catch (QuickSightException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}

