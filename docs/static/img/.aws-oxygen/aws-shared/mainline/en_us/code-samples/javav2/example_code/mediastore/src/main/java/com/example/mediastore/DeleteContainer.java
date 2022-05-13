
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.mediastore;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.mediastore.MediaStoreClient;
import software.amazon.awssdk.services.mediastore.model.DeleteContainerRequest;
import software.amazon.awssdk.services.mediastore.model.MediaStoreException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteContainer {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "DeleteContainer <containerName>\n\n" +
                "Where:\n" +
                "  containerName - the name of the container to delete.\n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String containerName = args[0];
        Region region = Region.US_EAST_1;
        MediaStoreClient mediaStoreClient = MediaStoreClient.builder()
                .region(region)
                .build();

        deleteMediaContainer(mediaStoreClient, containerName);
        mediaStoreClient.close();
    }

    public static void deleteMediaContainer(MediaStoreClient mediaStoreClient, String containerName) {

     try{
        DeleteContainerRequest deleteContainerRequest = DeleteContainerRequest.builder()
            .containerName(containerName)
            .build();

        mediaStoreClient.deleteContainer(deleteContainerRequest);

    } catch (MediaStoreException e) {
        System.err.println(e.awsErrorDetails().errorMessage());
        System.exit(1);
    }
  }
}
