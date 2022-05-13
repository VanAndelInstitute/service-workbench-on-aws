
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.pipeline;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.codepipeline.CodePipelineClient;
import software.amazon.awssdk.services.codepipeline.model.CodePipelineException;
import software.amazon.awssdk.services.codepipeline.model.StartPipelineExecutionRequest;
import software.amazon.awssdk.services.codepipeline.model.StartPipelineExecutionResponse;


/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class StartPipelineExecution {

    public static void main(String[] args) {
        final String USAGE = "\n" +
                "Usage: " +
                "   <name>\n\n" +
                "Where:\n" +
                "   name - the name of the pipeline to execute \n\n" ;


        if (args.length != 1) {
             System.out.println(USAGE);
             System.exit(1);
        }

        String name = args[0];
        Region region = Region.US_EAST_1;
        CodePipelineClient pipelineClient = CodePipelineClient.builder()
                .region(region)
                .build();

        executePipeline(pipelineClient, name);
        pipelineClient.close();
    }

    public static void executePipeline(CodePipelineClient pipelineClient, String name) {

        try {

            StartPipelineExecutionRequest pipelineExecutionRequest = StartPipelineExecutionRequest.builder()
                .name(name)
                .build();

            StartPipelineExecutionResponse response = pipelineClient.startPipelineExecution(pipelineExecutionRequest);
            System.out.println("Piepline "+response.pipelineExecutionId() +" was successfully executed");

        } catch (CodePipelineException e) {
        System.err.println(e.getMessage());
        System.exit(1);
    }
  }
}
