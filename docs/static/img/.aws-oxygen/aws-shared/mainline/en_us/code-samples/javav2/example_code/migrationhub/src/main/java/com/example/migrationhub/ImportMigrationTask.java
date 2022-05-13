
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.migrationhub;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.migrationhub.MigrationHubClient;
import software.amazon.awssdk.services.migrationhub.model.CreateProgressUpdateStreamRequest;
import software.amazon.awssdk.services.migrationhub.model.ImportMigrationTaskRequest;
import software.amazon.awssdk.services.migrationhub.model.MigrationHubException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class ImportMigrationTask {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <migrationTask> <progressStream> \n\n" +
                "Where:\n" +
                "    migrationTask - the name of a migration task. \n"+
                "    progressStream - the name of a progress stream. \n";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String migrationTask = args[0];
        String progressStream = args[1];

        Region region = Region.US_WEST_2;
        MigrationHubClient migrationClient = MigrationHubClient.builder()
                .region(region)
                .build();

        importMigrTask(migrationClient, migrationTask, progressStream);
        migrationClient.close();
    }

    public static void importMigrTask(MigrationHubClient migrationClient,  String migrationTask, String progressStream) {

    try {

        CreateProgressUpdateStreamRequest progressUpdateStreamRequest = CreateProgressUpdateStreamRequest.builder()
                .progressUpdateStreamName(progressStream)
                .dryRun(false)
                .build();

       migrationClient.createProgressUpdateStream(progressUpdateStreamRequest);

       ImportMigrationTaskRequest migrationTaskRequest = ImportMigrationTaskRequest.builder()
                .migrationTaskName(migrationTask)
                .progressUpdateStream(progressStream)
                .dryRun(false)
                .build();

        migrationClient.importMigrationTask(migrationTaskRequest);

    } catch(MigrationHubException e) {
        System.out.println(e.getMessage());
        System.exit(1);
    }
  }
}
