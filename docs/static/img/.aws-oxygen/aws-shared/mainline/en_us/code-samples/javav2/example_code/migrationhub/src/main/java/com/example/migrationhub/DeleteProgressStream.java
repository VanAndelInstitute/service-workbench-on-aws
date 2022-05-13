
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.migrationhub;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.migrationhub.MigrationHubClient;
import software.amazon.awssdk.services.migrationhub.model.DeleteProgressUpdateStreamRequest;
import software.amazon.awssdk.services.migrationhub.model.MigrationHubException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteProgressStream {

    public static void main(String[] args) {

      final String USAGE = "\n" +
                "Usage:\n" +
                "    <progressStream> \n\n" +
                "Where:\n" +
                "    progressStream - the name of a progress stream to delete. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String progressStream = args[0];
        Region region = Region.US_WEST_2;
        MigrationHubClient migrationClient = MigrationHubClient.builder()
                .region(region)
                .build();

       deleteStream(migrationClient,progressStream ) ;
       migrationClient.close();
    }

    public static void deleteStream(MigrationHubClient migrationClient,String streamName ) {

        try {

        DeleteProgressUpdateStreamRequest deleteProgressUpdateStreamRequest = DeleteProgressUpdateStreamRequest.builder()
                .progressUpdateStreamName(streamName)
                .build();

        migrationClient.deleteProgressUpdateStream(deleteProgressUpdateStreamRequest);

        // Display the results
        System.out.println(streamName + " is deleted" );

    } catch(MigrationHubException e) {
        System.out.println(e.getMessage());
        System.exit(1);
    }
  }
 }
