
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.example.cloudwatch;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudwatchlogs.CloudWatchLogsClient;
import software.amazon.awssdk.services.cloudwatchlogs.model.CloudWatchLogsException;
import software.amazon.awssdk.services.cloudwatchlogs.model.PutSubscriptionFilterRequest;

/**
 * Before running this code example, you need to grant permission to CloudWatch Logs the right to execute your Lambda function.
 * To perform this task, you can use this CLI command:
 *
 * aws lambda add-permission --function-name "lamda1" --statement-id "lamda1"
 * --principal "logs.us-west-2.amazonaws.com" --action "lambda:InvokeFunction"
 * --source-arn "arn:aws:logs:us-west-2:xxxxxx047983:log-group:testgroup:*"
 * --source-account "xxxxxx047983"
 *
 * Make sure you replace the function name with your function name and replace the xxxxxx with your account details.
 * For more information, see "Subscription Filters with AWS Lambda" in the Amazon CloudWatch Logs Guide.
 *
 * In addition, ensure that you have setup your development environment, including your credentials.
 *  For information, see this documentation topic:
 *
 *   https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 *
 */

public class PutSubscriptionFilter {
    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "  <filter> <pattern> <logGroup> <functionArn> \n\n" +
                "Where:\n" +
                "  filter - a filter name (for example, myfilter).\n" +
                "  pattern - a filter pattern (for example, ERROR).\n" +
                "  logGroup - a log group name (testgroup).\n" +
                "  functionArn - an AWS Lambda function ARN (for example, arn:aws:lambda:us-west-2:xxxxxx047983:function:lamda1) .\n" ;

        if (args.length != 4) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String filter = args[0];
        String pattern = args[1];
        String logGroup = args[2];
        String functionArn = args[3];
        Region region = Region.US_WEST_2;
        CloudWatchLogsClient cwl = CloudWatchLogsClient.builder()
                .region(region)
                .build();

        putSubFilters(cwl, filter, pattern, logGroup, functionArn ) ;
        cwl.close();
    }

    public static void putSubFilters(CloudWatchLogsClient cwl,
                                     String filter,
                                     String pattern,
                                     String logGroup,
                                     String functionArn) {

        try {
            PutSubscriptionFilterRequest request =
                    PutSubscriptionFilterRequest.builder()
                            .filterName(filter)
                            .filterPattern(pattern)
                            .logGroupName(logGroup)
                            .destinationArn(functionArn)
                            .build();

            cwl.putSubscriptionFilter(request);
            System.out.printf(
                    "Successfully created CloudWatch logs subscription filter %s",
                    filter);

        } catch (CloudWatchLogsException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}

