
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.sqs;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.GetQueueUrlRequest;
import software.amazon.awssdk.services.sqs.model.GetQueueUrlResponse;
import software.amazon.awssdk.services.sqs.model.QueueAttributeName;
import software.amazon.awssdk.services.sqs.model.SetQueueAttributesRequest;
import software.amazon.awssdk.services.sqs.model.SqsException;
import java.util.HashMap;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class SSEncryptionExample {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "   <queueName> <kmsMasterKeyAlias> \n\n" +
                "Where:\n" +
                "   queueName - the name of the queue.\n\n" +
                "   kmsMasterKeyAlias - the alias of the AWS managed CMK for Amazon SQS. ";

        if (args.length != 2) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String queueName = args[0];
        String kmsMasterKeyAlias = args[1];
        SqsClient sqsClient = SqsClient.builder()
                .region(Region.US_WEST_2)
                .build();

        setEncryption(sqsClient, queueName, kmsMasterKeyAlias);
        sqsClient.close();
       }

       public static void setEncryption(SqsClient sqsClient, String queueName, String kmsMasterKeyAlias) {

        try {

            GetQueueUrlRequest urlRequest =  GetQueueUrlRequest.builder()
                    .queueName(queueName)
                    .build();

            GetQueueUrlResponse getQueueUrlResponse = sqsClient.getQueueUrl(urlRequest);
            String queueUrl = getQueueUrlResponse.queueUrl();

            HashMap<QueueAttributeName, String> attributes = new HashMap<>();
            attributes.put(QueueAttributeName.KMS_MASTER_KEY_ID, kmsMasterKeyAlias);
            attributes.put(QueueAttributeName.KMS_DATA_KEY_REUSE_PERIOD_SECONDS, "140");

             SetQueueAttributesRequest attRequest = SetQueueAttributesRequest.builder()
                    .queueUrl(queueUrl)
                    .attributes(attributes)
                    .build();

            sqsClient.setQueueAttributes(attRequest);
            System.out.println("The attributes have been applied to "+queueName);

        } catch (SqsException e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
     }
}
