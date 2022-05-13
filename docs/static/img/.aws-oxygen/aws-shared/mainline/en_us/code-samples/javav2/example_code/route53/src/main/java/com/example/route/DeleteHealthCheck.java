
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.route;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.route53.Route53Client;
import software.amazon.awssdk.services.route53.model.Route53Exception;
import software.amazon.awssdk.services.route53.model.DeleteHealthCheckRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteHealthCheck {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <id> \n\n" +
                "Where:\n" +
                "    id - the health check id. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String id = args[0];
        Region region = Region.AWS_GLOBAL;
        Route53Client route53Client = Route53Client.builder()
                .region(region)
                .build();

        delHealthCheck(route53Client, id);
        route53Client.close();
    }

    public static void delHealthCheck( Route53Client route53Client, String id) {

        try {

            DeleteHealthCheckRequest delRequest = DeleteHealthCheckRequest.builder()
                    .healthCheckId(id)
                     .build();

            // Delete the Health Check
            route53Client.deleteHealthCheck(delRequest);
            System.out.println("The hosted zone was deleted");

        } catch (Route53Exception e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}


