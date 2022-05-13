
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/


package com.example.sage;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sagemaker.SageMakerClient;
import software.amazon.awssdk.services.sagemaker.model.ListModelsRequest;
import software.amazon.awssdk.services.sagemaker.model.ListModelsResponse;
import software.amazon.awssdk.services.sagemaker.model.ModelSummary;
import software.amazon.awssdk.services.sagemaker.model.SageMakerException;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class ListModels {

    public static void main(String[] args) {

            Region region = Region.US_WEST_2;
            SageMakerClient sageMakerClient = SageMakerClient.builder()
                    .region(region)
                    .build();

            listAllModels(sageMakerClient);
            sageMakerClient.close();
        }

       public static void listAllModels(SageMakerClient sageMakerClient) {
            try {

                ListModelsRequest modelsRequest = ListModelsRequest.builder()
                        .maxResults(15)
                        .build();

                ListModelsResponse modelResponse = sageMakerClient.listModels(modelsRequest);
                List<ModelSummary> items = modelResponse.models();

                for (ModelSummary item : items) {
                    System.out.println("Model name is: " + item.modelName());
                }

            } catch (SageMakerException e) {
                System.err.println(e.awsErrorDetails().errorMessage());
                System.exit(1);
            }
        }
    }
