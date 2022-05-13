
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.sage;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sagemaker.model.DeleteModelRequest;
import software.amazon.awssdk.services.sagemaker.SageMakerClient;
import software.amazon.awssdk.services.sagemaker.model.SageMakerException;


/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteModel {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <modelName>\n\n" +
                "Where:\n" +
                "    modelName - The name of the model.\n\n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String modelName = args[0];
        Region region = Region.US_WEST_2;
        SageMakerClient sageMakerClient = SageMakerClient.builder()
                .region(region)
                .build();

        deleteSagemakerModel(sageMakerClient, modelName);
        sageMakerClient.close();
    }

    public static void deleteSagemakerModel(SageMakerClient sageMakerClient, String modelName) {

       try {
            DeleteModelRequest deleteModelRequest = DeleteModelRequest.builder()
                .modelName(modelName)
                .build();

            sageMakerClient.deleteModel(deleteModelRequest);

       } catch (SageMakerException e) {
           System.err.println(e.awsErrorDetails().errorMessage());
           System.exit(1);
       }
    }
}
