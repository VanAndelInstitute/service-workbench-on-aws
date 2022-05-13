
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.lex;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.lexmodelbuilding.LexModelBuildingClient;
import software.amazon.awssdk.services.lexmodelbuilding.model.DeleteBotRequest;
import software.amazon.awssdk.services.lexmodelbuilding.model.LexModelBuildingException;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class DeleteBot {
    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage: " +
                "   <botName>\n\n" +
                "Where:\n" +
                "   botName - the name of an existing bot to delete (for example, BookHotel).\n\n" ;

        if (args.length != 1) {
            System.out.println(USAGE);
            System.exit(1);
        }

        String botName = args[0];
        Region region = Region.US_WEST_2;
        LexModelBuildingClient lexClient = LexModelBuildingClient.builder()
                .region(region)
                .build();

        deleteSpecificBot(lexClient, botName);
        lexClient.close();
    }

    public static void deleteSpecificBot( LexModelBuildingClient lexClient, String botName) {

        try {
            DeleteBotRequest botRequest = DeleteBotRequest.builder()
                    .name(botName)
                    .build();

            lexClient.deleteBot(botRequest);
            System.out.println(botName +" was deleted!");

        } catch (LexModelBuildingException e) {
            System.out.println(e.getLocalizedMessage());
            System.exit(1);
        }
    }
}
