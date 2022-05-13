
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.cloudtrail;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudtrail.CloudTrailClient;
import software.amazon.awssdk.services.cloudtrail.model.CloudTrailException;
import software.amazon.awssdk.services.cloudtrail.model.CreateTrailRequest;
import software.amazon.awssdk.services.cloudtrail.model.CreateTrailResponse;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class CreateTrail {

    public static void main(String[] args) {

         final String USAGE = "\n" +
                "Usage:\n" +
                "    <trailName> <s3BucketName> \n\n" +
                "Where:\n" +
                "    trailName - the name of the trail. \n" +
                "    s3BucketName - the name of the Amazon S3 bucket designated for publishing log files. \n" ;

         if (args.length != 2) {
             System.out.println(USAGE);
             System.exit(1);
         }

        String trailName = args[0] ;
        String s3BucketName = args[1] ;

        Region region = Region.US_EAST_1;
        CloudTrailClient cloudTrailClient = CloudTrailClient.builder()
                .region(region)
                .build();

        createNewTrail(cloudTrailClient, trailName, s3BucketName);
        cloudTrailClient.close();
    }

    public static void createNewTrail(CloudTrailClient cloudTrailClient, String trailName, String s3BucketName) {

        try {
            CreateTrailRequest trailRequest = CreateTrailRequest.builder()
                .name(trailName)
                .s3BucketName(s3BucketName)
                .isMultiRegionTrail(true)
                .build();

            CreateTrailResponse trailResponse = cloudTrailClient.createTrail(trailRequest);
            System.out.println("The Trail ARN is "+trailResponse.trailARN());

        } catch (CloudTrailException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}
