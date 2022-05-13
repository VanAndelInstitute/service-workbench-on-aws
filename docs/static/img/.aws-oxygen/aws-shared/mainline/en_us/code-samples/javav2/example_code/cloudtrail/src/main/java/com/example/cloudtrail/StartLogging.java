
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.cloudtrail;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudtrail.CloudTrailClient;
import software.amazon.awssdk.services.cloudtrail.model.CloudTrailException;
import software.amazon.awssdk.services.cloudtrail.model.StartLoggingRequest;
import software.amazon.awssdk.services.cloudtrail.model.StopLoggingRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class StartLogging {

    public static void main(String[] args) {

       final String USAGE = "\n" +
                "Usage:\n" +
                "    <trailName> \n\n" +
                "Where:\n" +
                "    trailName - the name of the trail. \n" ;

        if (args.length != 1) {
             System.out.println(USAGE);
             System.exit(1);
         }

        String trailName = args[0] ;
        Region region = Region.US_EAST_1;
        CloudTrailClient cloudTrailClient = CloudTrailClient.builder()
                .region(region)
                .build();

        startLog(cloudTrailClient, trailName);
        stopLog(cloudTrailClient, trailName);
        cloudTrailClient.close();
    }

    public static void startLog( CloudTrailClient cloudTrailClientClient, String trailName) {

        try {
            StopLoggingRequest loggingRequest = StopLoggingRequest.builder()
                .name(trailName)
                .build() ;

            cloudTrailClientClient.stopLogging(loggingRequest);
            System.out.println(trailName +" has stopped logging");

        } catch (CloudTrailException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }

    public static void stopLog( CloudTrailClient cloudTrailClientClient, String trailName) {

        try {
            StartLoggingRequest loggingRequest = StartLoggingRequest.builder()
                    .name(trailName)
                    .build() ;

            cloudTrailClientClient.startLogging(loggingRequest);
            System.out.println(trailName +" has started logging");

        } catch (CloudTrailException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
 }
