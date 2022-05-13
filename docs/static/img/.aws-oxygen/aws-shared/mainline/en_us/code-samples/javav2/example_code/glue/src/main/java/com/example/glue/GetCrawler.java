/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.glue;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.glue.GlueClient;
import software.amazon.awssdk.services.glue.model.GetCrawlerRequest;
import software.amazon.awssdk.services.glue.model.GetCrawlerResponse;
import software.amazon.awssdk.services.glue.model.GlueException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.Locale;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetCrawler {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <crawlerName>\n\n" +
                "Where:\n" +
                "    crawlerName - the name of the crawler. \n" ;

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String crawlerName = args[0];
        Region region = Region.US_EAST_1;
        GlueClient glueClient = GlueClient.builder()
                .region(region)
                .build();

        getSpecificCrawler(glueClient, crawlerName);
        glueClient.close();
    }

    public static void getSpecificCrawler(GlueClient glueClient, String crawlerName) {

      try {
            GetCrawlerRequest crawlerRequest = GetCrawlerRequest.builder()
                .name(crawlerName)
                .build();

            GetCrawlerResponse response = glueClient.getCrawler(crawlerRequest);
            Instant createDate = response.crawler().creationTime();

            // Convert the Instant to readable date
            DateTimeFormatter formatter =
                  DateTimeFormatter.ofLocalizedDateTime( FormatStyle.SHORT )
                          .withLocale( Locale.US)
                          .withZone( ZoneId.systemDefault() );

            formatter.format( createDate );
            System.out.println("The create date of the Crawler is " + createDate );

      } catch (GlueException e) {
          System.err.println(e.awsErrorDetails().errorMessage());
          System.exit(1);
      }
   }
}
