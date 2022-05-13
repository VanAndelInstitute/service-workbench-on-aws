
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.route;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.route53.Route53Client;
import software.amazon.awssdk.services.route53.model.Route53Exception;
import software.amazon.awssdk.services.route53.model.CreateHostedZoneRequest;
import software.amazon.awssdk.services.route53.model.CreateHostedZoneResponse;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class CreateHostedZone {

    public static void main(String[] args) {

       final String USAGE = "\n" +
                "Usage:\n" +
                "    <domainName> \n\n" +
                "Where:\n" +
                "    domainName - the fully qualified domain name. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String domainName = args[0];
        Region region = Region.AWS_GLOBAL;
        Route53Client route53Client = Route53Client.builder()
                .region(region)
                .build();

        String zoneId = createZone(route53Client, domainName);
        System.out.println("The hosted zone id is "+zoneId);
        route53Client.close();
    }

    public static String createZone(Route53Client route53Client, String domainName) {

        try {

           // You must use a unique CallerReference string every time you submit a CreateHostedZone request
          String callerReference = java.util.UUID.randomUUID().toString();

            CreateHostedZoneRequest zoneRequest = CreateHostedZoneRequest.builder()
                    .callerReference(callerReference)
                    .name(domainName)
                    .build();

            // Create the Hosted Zone
            CreateHostedZoneResponse zoneResponse = route53Client.createHostedZone(zoneRequest);
            return zoneResponse.hostedZone().id();

        } catch (Route53Exception e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
        return "";
    }
}

