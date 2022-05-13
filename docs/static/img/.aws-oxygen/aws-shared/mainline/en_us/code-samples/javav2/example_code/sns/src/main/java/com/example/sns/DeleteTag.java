
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.sns;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sns.SnsClient;
import software.amazon.awssdk.services.sns.model.SnsException;
import software.amazon.awssdk.services.sns.model.UntagResourceRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteTag {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "   <topicArn> <tagKey>\n\n" +
                "Where:\n" +
                "  topicArn - the ARN of the topic to which tags are added.\n\n"+
                "  tagKey - the key of the tag to delete.";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String topicArn = args[0];
        String tagKey = args[1];
        SnsClient snsClient = SnsClient.builder()
                .region(Region.US_EAST_1)
                .build();

        removeTag(snsClient, topicArn, tagKey);
        snsClient.close();
    }

    public static void removeTag(SnsClient snsClient, String topicArn, String tagKey) {

        try {

            UntagResourceRequest resourceRequest = UntagResourceRequest.builder()
                    .resourceArn(topicArn)
                    .tagKeys(tagKey)
                    .build();

            snsClient.untagResource(resourceRequest);
            System.out.println(tagKey +" was deleted from "+topicArn);

        } catch (SnsException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}
