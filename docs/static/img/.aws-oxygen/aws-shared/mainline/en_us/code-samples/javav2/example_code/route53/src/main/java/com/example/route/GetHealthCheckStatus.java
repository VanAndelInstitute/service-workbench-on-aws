
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.route;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.route53.Route53Client;
import software.amazon.awssdk.services.route53.model.GetHealthCheckStatusRequest;
import software.amazon.awssdk.services.route53.model.GetHealthCheckStatusResponse;
import software.amazon.awssdk.services.route53.model.HealthCheckObservation;
import software.amazon.awssdk.services.route53.model.Route53Exception;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetHealthCheckStatus {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <healthCheckId> \n\n" +
                "Where:\n" +
                "    healthCheckId - the health check id. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String healthCheckId = args[0];
        Region region = Region.AWS_GLOBAL;
        Route53Client route53Client = Route53Client.builder()
                .region(region)
                .build();

        getHealthStatus(route53Client, healthCheckId);
        route53Client.close();
    }

    public static void getHealthStatus(Route53Client route53Client, String healthCheckId) {

        try {
            GetHealthCheckStatusRequest statusRequest = GetHealthCheckStatusRequest.builder()
                    .healthCheckId(healthCheckId)
                    .build();

            GetHealthCheckStatusResponse statusResponse = route53Client.getHealthCheckStatus(statusRequest);
            List<HealthCheckObservation> observations = statusResponse.healthCheckObservations();
            for (HealthCheckObservation observation: observations) {
                System.out.println("(The health check observation status: "+observation.statusReport().status());
            }

        } catch (Route53Exception e) {
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}

