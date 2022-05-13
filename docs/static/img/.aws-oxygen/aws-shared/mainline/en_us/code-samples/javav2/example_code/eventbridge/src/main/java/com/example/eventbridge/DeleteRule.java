
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.eventbridge;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.eventbridge.EventBridgeClient;
import software.amazon.awssdk.services.eventbridge.model.EventBridgeException;
import software.amazon.awssdk.services.eventbridge.model.DeleteRuleRequest;
import software.amazon.awssdk.services.eventbridge.model.DisableRuleRequest;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class DeleteRule {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <ruleName> \n\n" +
                "Where:\n" +
                "    ruleName - the name of the rule to delete. \n";

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String ruleName = args[0];
        Region region = Region.US_WEST_2;
        EventBridgeClient eventBrClient = EventBridgeClient.builder()
                .region(region)
                .build();

        deleteEBRule(eventBrClient, ruleName);
        eventBrClient.close();
   }

    public static void deleteEBRule(EventBridgeClient eventBrClient, String ruleName) {

        try {

           // Disable the rule - an Enabled Rule cannot be deleted
            DisableRuleRequest disableRuleRequest = DisableRuleRequest.builder()
                    .name(ruleName)
                    .eventBusName("default")
                    .build();

            eventBrClient.disableRule(disableRuleRequest);

            DeleteRuleRequest ruleRequest = DeleteRuleRequest.builder()
                    .name(ruleName)
                    .eventBusName("default")
                    .build();

            eventBrClient.deleteRule(ruleRequest);
           System.out.println("Rule "+ruleName + " was successfully deleted!");

        } catch (EventBridgeException e) {

            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
    }
}

