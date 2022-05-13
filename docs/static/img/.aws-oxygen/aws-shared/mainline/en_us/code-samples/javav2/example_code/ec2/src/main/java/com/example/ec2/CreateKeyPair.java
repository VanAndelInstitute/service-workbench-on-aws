
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.example.ec2;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.ec2.Ec2Client;
import software.amazon.awssdk.services.ec2.model.CreateKeyPairRequest;
import software.amazon.awssdk.services.ec2.model.CreateKeyPairResponse;
import software.amazon.awssdk.services.ec2.model.Ec2Exception;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class CreateKeyPair {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "   <keyName> \n\n" +
                "Where:\n" +
                "   keyName - a key pair name (for example, TestKeyPair). \n\n"  ;

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String keyName = args[0];
        Region region = Region.US_WEST_2;
        Ec2Client ec2 = Ec2Client.builder()
                .region(region)
                .build();

        createEC2KeyPair(ec2, keyName) ;
        ec2.close();
    }

    public static void createEC2KeyPair(Ec2Client ec2,String keyName ) {

        try {
            CreateKeyPairRequest request = CreateKeyPairRequest.builder()
                .keyName(keyName).build();

            ec2.createKeyPair(request);
            System.out.printf(
                "Successfully created key pair named %s",
                keyName);

        } catch (Ec2Exception e) {
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
     }
 }
