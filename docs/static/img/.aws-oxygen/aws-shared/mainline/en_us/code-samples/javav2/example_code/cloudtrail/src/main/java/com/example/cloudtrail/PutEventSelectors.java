
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.example.cloudtrail;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cloudtrail.CloudTrailClient;
import software.amazon.awssdk.services.cloudtrail.model.CloudTrailException;
import software.amazon.awssdk.services.cloudtrail.model.PutEventSelectorsRequest;
import software.amazon.awssdk.services.cloudtrail.model.EventSelector;
import java.util.ArrayList;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class PutEventSelectors {

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

        String trailName = args[0];
        Region region = Region.US_EAST_1;
        CloudTrailClient cloudTrailClient = CloudTrailClient.builder()
                .region(region)
                .build();

        setSelector(cloudTrailClient, trailName);
        cloudTrailClient.close();
    }

    public static void setSelector(CloudTrailClient cloudTrailClientClient, String trailName) {

        try {
            EventSelector selector = EventSelector.builder()
                .readWriteType("All")
                .build();

            List<EventSelector> selList = new ArrayList<>();
            selList.add(selector);

            PutEventSelectorsRequest selectorsRequest = PutEventSelectorsRequest.builder()
                .trailName(trailName)
                .eventSelectors(selList)
                .build();

            cloudTrailClientClient.putEventSelectors(selectorsRequest);

        } catch (CloudTrailException e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
   }
}
