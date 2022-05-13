
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.gateway;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.apigateway.ApiGatewayClient;
import software.amazon.awssdk.services.apigateway.model.*;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class CreateAPIKey {

    public static void main(String[] args) {

        Region region = Region.US_EAST_1;
        ApiGatewayClient apiGateway = ApiGatewayClient.builder()
                .region(region)
                .build();

        createApiKey(apiGateway);
        apiGateway.close();
    }

    public static void createApiKey(ApiGatewayClient apiGateway) {

        try {

            CreateApiKeyRequest apiKeyRequest = CreateApiKeyRequest.builder()
                    .name("Key Name")
                    .description("Key description")
                    .enabled(true)
                    .generateDistinctId(true)
                    .build();

            //Creating a api key
            CreateApiKeyResponse response = apiGateway.createApiKey(apiKeyRequest);
         /*
          If we have a plan for the api keys, we can set it for the created api key.
         */
            CreateUsagePlanKeyRequest planRequest = CreateUsagePlanKeyRequest.builder()
                    .usagePlanId("<Enter Value>")
                    .keyId(response.id())
                    .keyType("API_KEY")
                    .build();

            apiGateway.createUsagePlanKey(planRequest);
            apiGateway.close();

        } catch (ApiGatewayException e) {
          System.err.println(e.awsErrorDetails().errorMessage());
          System.exit(1);
    }
}
}
