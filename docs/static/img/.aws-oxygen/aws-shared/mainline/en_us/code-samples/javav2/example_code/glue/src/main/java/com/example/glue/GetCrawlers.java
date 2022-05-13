/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.glue;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.glue.GlueClient;
import software.amazon.awssdk.services.glue.model.GetCrawlersRequest;
import software.amazon.awssdk.services.glue.model.GetCrawlersResponse;
import software.amazon.awssdk.services.glue.model.Crawler;
import software.amazon.awssdk.services.glue.model.GlueException;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetCrawlers {

    public static void main(String[] args) {

        Region region = Region.US_EAST_1;
        GlueClient glueClient = GlueClient.builder()
                .region(region)
                .build();

        getAllCrawlers(glueClient);
        glueClient.close();
    }

    public static void getAllCrawlers(GlueClient glueClient){

        try {
            GetCrawlersRequest crawlersRequest = GetCrawlersRequest.builder()
                .maxResults(10)
                .build();

            GetCrawlersResponse response = glueClient.getCrawlers(crawlersRequest);
            List<Crawler> crawlers = response.crawlers();

            for (Crawler crawler: crawlers) {
                System.out.println("The crawler name is : "+crawler.name());
            }

        } catch (GlueException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}
