
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.kendra;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.kendra.KendraClient;
import software.amazon.awssdk.services.kendra.model.DeleteDataSourceRequest;
import software.amazon.awssdk.services.kendra.model.KendraException;


/**
 * To run this Java V2 code example, ensure that you have set up your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 *
 */
public class DeleteDataSource {

    public static void main(String[] args) {

        final String usage = "\n" +
                "Usage:\n" +
                "    <dataSourceId> <indexId> \n\n" +
                "Where:\n" +
                "    dataSourceId - The id value of the data source.\n" +
                "    indexId - The id value of the index.\n" ;

        if (args.length != 2) {
            System.out.println(usage);
            System.exit(1);
        }

        String dataSourceId = args[0];
        String indexId = args[1];

        KendraClient kendra = KendraClient.builder()
                .region(Region.US_EAST_1)
                .build();
        deleteSpecificDataSource(kendra, indexId, dataSourceId);
    }

    public static void deleteSpecificDataSource(KendraClient kendra, String indexId, String dataSourceId) {

        try {

            DeleteDataSourceRequest dataSourceRequest = DeleteDataSourceRequest.builder()
                    .id(dataSourceId)
                    .indexId(indexId)
                    .build();

            kendra.deleteDataSource(dataSourceRequest);
            System.out.println(dataSourceId +" was successfully deleted.");
        } catch (KendraException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}
