
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.lex;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.lexmodelbuilding.LexModelBuildingClient;
import software.amazon.awssdk.services.lexmodelbuilding.model.LexModelBuildingException;
import software.amazon.awssdk.services.lexmodelbuilding.model.GetSlotTypesResponse;
import software.amazon.awssdk.services.lexmodelbuilding.model.SlotTypeMetadata;
import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class GetSlotTypes {

    public static void main(String[] args) {

        Region region = Region.US_EAST_1;
        LexModelBuildingClient lexClient = LexModelBuildingClient.builder()
                .region(region)
                .build();

        getSlotsInfo(lexClient);
        lexClient.close();
    }

    public static void getSlotsInfo(LexModelBuildingClient lexClient) {

        try {

            GetSlotTypesResponse slotTypesResponse = lexClient.getSlotTypes();
            List<SlotTypeMetadata> slots = slotTypesResponse.slotTypes();
            for (SlotTypeMetadata slot: slots) {
                System.out.println("Slot name is "+slot.name());
                System.out.println("Slot description is "+slot.description());
                System.out.println("Slot version is "+slot.version());
            }

        } catch (LexModelBuildingException e) {
            System.out.println(e.getLocalizedMessage());
            System.exit(1);
        }
    }
}
