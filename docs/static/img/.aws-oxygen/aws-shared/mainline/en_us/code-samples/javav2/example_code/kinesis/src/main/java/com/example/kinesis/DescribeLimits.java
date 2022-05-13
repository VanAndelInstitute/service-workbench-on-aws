/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.kinesis;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.kinesis.KinesisClient;
import software.amazon.awssdk.services.kinesis.model.DescribeLimitsRequest;
import software.amazon.awssdk.services.kinesis.model.DescribeLimitsResponse;
import software.amazon.awssdk.services.kinesis.model.KinesisException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DescribeLimits {

    public static void main(String[] args) {
        Region region = Region.US_EAST_1;
        KinesisClient kinesisClient = KinesisClient.builder()
                .region(region)
                .build();
        describeKinLimits(kinesisClient);
        kinesisClient.close();
    }
    public static void describeKinLimits(KinesisClient kinesisClient) {
        try {

            DescribeLimitsRequest request = DescribeLimitsRequest.builder()
                 .build();

            DescribeLimitsResponse response = kinesisClient.describeLimits(request);
            System.out.println("Number of open shards: " + response.openShardCount());
            System.out.println("Maximum shards allowed: " + response.shardLimit());

        } catch (KinesisException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
        System.out.println("Done");
    }
}
