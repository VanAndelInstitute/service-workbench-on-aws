
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.ec2;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.ec2.Ec2Client;
import software.amazon.awssdk.services.ec2.model.DeleteKeyPairRequest;
import software.amazon.awssdk.services.ec2.model.DeleteKeyPairResponse;
import software.amazon.awssdk.services.ec2.model.Ec2Exception;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteKeyPair {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "   <keyPair> \n\n" +
                "Where:\n" +
                "   keyPair - a key pair name (for example, TestKeyPair)."  ;

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String keyPair = args[0];
        Region region = Region.US_WEST_2;
        Ec2Client ec2 = Ec2Client.builder()
                .region(region)
                .build();

        deleteKeys(ec2,keyPair);
        ec2.close();
    }

    public static void deleteKeys(Ec2Client ec2, String keyPair) {

       try {

           DeleteKeyPairRequest request = DeleteKeyPairRequest.builder()
                .keyName(keyPair)
                .build();

           DeleteKeyPairResponse response = ec2.deleteKeyPair(request);
            System.out.printf(
                "Successfully deleted key pair named %s", keyPair);

        } catch (Ec2Exception e) {
           System.err.println(e.awsErrorDetails().errorMessage());
           System.exit(1);
        }
    }
}
