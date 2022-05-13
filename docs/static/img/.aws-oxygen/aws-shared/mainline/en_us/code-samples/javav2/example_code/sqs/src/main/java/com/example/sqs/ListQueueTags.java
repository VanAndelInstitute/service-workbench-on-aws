
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.sqs;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.GetQueueUrlRequest;
import software.amazon.awssdk.services.sqs.model.GetQueueUrlResponse;
import software.amazon.awssdk.services.sqs.model.ListQueueTagsRequest;
import software.amazon.awssdk.services.sqs.model.ListQueueTagsResponse;
import software.amazon.awssdk.services.sqs.model.SqsException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class ListQueueTags {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "    <queueName>\n\n" +
                "Where:\n" +
                "   queueName - the name of the queue.\n\n" ;

       if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
       }

        String queueName = args[0];
        SqsClient sqsClient = SqsClient.builder()
                .region(Region.US_WEST_2)
                .build();

        listTags(sqsClient, queueName);
        sqsClient.close();
    }

    public static void listTags(SqsClient sqsClient, String queueName) {

       try {
           GetQueueUrlRequest urlRequest =  GetQueueUrlRequest.builder()
                   .queueName(queueName)
                   .build();

           GetQueueUrlResponse getQueueUrlResponse = sqsClient.getQueueUrl(urlRequest);
           String queueUrl = getQueueUrlResponse.queueUrl();

           ListQueueTagsRequest listQueueTagsRequest = ListQueueTagsRequest.builder()
                   .queueUrl(queueUrl)
                   .build();

           ListQueueTagsResponse listQueueTagsResponse = sqsClient.listQueueTags(listQueueTagsRequest);
           System.out.println(String.format("ListQueueTags: \tTags for queue %s are %s.\n",
                   queueName, listQueueTagsResponse.tags() ));

       } catch (SqsException e) {
           System.err.println(e.awsErrorDetails().errorMessage());
           System.exit(1);
       }
    }
}
