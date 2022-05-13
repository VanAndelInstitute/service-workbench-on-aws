
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.pinpoint;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.pinpoint.PinpointClient;
import software.amazon.awssdk.services.pinpoint.model.*;


/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetSegmentById {

    public static void main(String[] args) {
        final String USAGE = "\n" +
                "CreateApp - create an application in the Amazon Pinpoint dashboard\n\n" +
                "Usage:" +
                "   <appId> <segmentId>\n\n" +
                "Where:\n" +
                "   appId - the id of the application.\n\n"+
                "   segmentId - the id of the segment.\n\n";

       if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String appId = args[0];
        String segmentId = args[1];
        PinpointClient pinpoint = PinpointClient.builder()
                .region(Region.US_EAST_1)
                .build();

        System.out.println("Name of the segment is " + getSegmentById(pinpoint, appId, segmentId) );
        pinpoint.close();
    }

    private static String getSegmentById(PinpointClient client, String applicationId, String segmentId) {

        try {
            GetSegmentRequest request =  GetSegmentRequest.builder()
                    .applicationId(applicationId)
                    .segmentId(segmentId)
                    .build();

            GetSegmentResponse segmentResponse = client.getSegment(request);
            return segmentResponse.segmentResponse().name();

        } catch (PinpointException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
        return null;
    }
}
