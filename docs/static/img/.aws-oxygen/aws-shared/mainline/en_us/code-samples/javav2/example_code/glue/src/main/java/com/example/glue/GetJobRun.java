/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.glue;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.glue.GlueClient;
import software.amazon.awssdk.services.glue.model.GetJobRunRequest;
import software.amazon.awssdk.services.glue.model.GetJobRunResponse;
import software.amazon.awssdk.services.glue.model.GlueException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetJobRun {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <jobName> <runId>\n\n" +
                "Where:\n" +
                "    jobName - the name of the job. \n" +
                "    runId - the run id value. \n";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String jobName = args[0];
        String runId = args[1];

        Region region = Region.US_EAST_1;
        GlueClient glueClient = GlueClient.builder()
                .region(region)
                .build();

        getGlueJobRun(glueClient, jobName, runId);
        glueClient.close();
    }

    public static void getGlueJobRun(GlueClient glueClient, String jobName, String runId) {

        try {
              GetJobRunRequest jobRunRequest = GetJobRunRequest.builder()
                .jobName(jobName)
                .runId(runId)
                .build();

              GetJobRunResponse runResponse = glueClient.getJobRun(jobRunRequest);
              System.out.println("Job status is : "+runResponse.jobRun().jobRunStateAsString());
        } catch (GlueException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}
