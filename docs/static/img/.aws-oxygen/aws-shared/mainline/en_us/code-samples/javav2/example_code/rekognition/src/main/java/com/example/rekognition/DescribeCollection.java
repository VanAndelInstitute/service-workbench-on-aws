/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.rekognition;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.rekognition.RekognitionClient;
import software.amazon.awssdk.services.rekognition.model.DescribeCollectionRequest;
import software.amazon.awssdk.services.rekognition.model.DescribeCollectionResponse;
import software.amazon.awssdk.services.rekognition.model.RekognitionException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DescribeCollection {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "   <collectionName>\n\n" +
                "Where:\n" +
                "   collectionName - the name of the Amazon Rekognition collection. \n\n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String collectionName = args[0];
        Region region = Region.US_EAST_1;
        RekognitionClient rekClient = RekognitionClient.builder()
                .region(region)
                .build();

        describeColl(rekClient, collectionName);
        rekClient.close();
    }

    public static void describeColl(RekognitionClient rekClient, String collectionName) {

    try {

        DescribeCollectionRequest describeCollectionRequest = DescribeCollectionRequest.builder()
             .collectionId(collectionName)
             .build();

        DescribeCollectionResponse describeCollectionResponse = rekClient.describeCollection(describeCollectionRequest);

         System.out.println("Collection Arn : " +
             describeCollectionResponse.collectionARN());
         System.out.println("Created : " +
             describeCollectionResponse.creationTimestamp().toString());

    } catch(RekognitionException e) {
        System.out.println(e.getMessage());
        System.exit(1);
    }
   }
}
