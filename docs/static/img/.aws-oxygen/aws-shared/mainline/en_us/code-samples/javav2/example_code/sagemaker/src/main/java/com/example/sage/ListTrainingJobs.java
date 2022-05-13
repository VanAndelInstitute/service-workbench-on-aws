
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.sage;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sagemaker.SageMakerClient;
import software.amazon.awssdk.services.sagemaker.model.ListTrainingJobsResponse;
import software.amazon.awssdk.services.sagemaker.model.SageMakerException;
import software.amazon.awssdk.services.sagemaker.model.TrainingJobSummary;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class ListTrainingJobs {

    public static void main(String[] args) {

        Region region = Region.US_WEST_2;
        SageMakerClient sageMakerClient = SageMakerClient.builder()
                .region(region)
                .build();

        listJobs(sageMakerClient);
        sageMakerClient.close();
    }

    public static void listJobs(SageMakerClient sageMakerClient) {

        try {
            ListTrainingJobsResponse response = sageMakerClient.listTrainingJobs();
            List<TrainingJobSummary> items = response.trainingJobSummaries();
            for (TrainingJobSummary item : items) {

                System.out.println("Name is: " + item.trainingJobName());
                System.out.println("Status is: " + item.trainingJobStatus().toString());
            }

        } catch (SageMakerException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}




