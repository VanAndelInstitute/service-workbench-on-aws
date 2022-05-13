/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package com.example.cognito;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.cognitoidentityprovider.CognitoIdentityProviderClient;
import software.amazon.awssdk.services.cognitoidentityprovider.model.CognitoIdentityProviderException;
import software.amazon.awssdk.services.cognitoidentityprovider.model.DeleteUserPoolRequest;
import software.amazon.awssdk.services.cognitoidentityprovider.model.DeleteUserPoolResponse;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */

public class DeleteUserPool {

    public static void main(String[] args) {
        final String usage = "\n" +
                "Usage:\n" +
                "    <userPoolId> \n\n" +
                "Where:\n" +
                "    userPoolId - the Id value given to your user pool.\n\n" ;

        if (args.length != 1) {
            System.out.println(usage);
            System.exit(1);
        }

        String userPoolId = args[0];
        CognitoIdentityProviderClient cognitoClient = CognitoIdentityProviderClient.builder()
                .region(Region.US_EAST_1)
                .build();

        deletePool(cognitoClient, userPoolId);
        cognitoClient.close();
    }

    public static void deletePool(CognitoIdentityProviderClient cognitoClient, String userPoolId ) {

        try {
            DeleteUserPoolRequest request = DeleteUserPoolRequest.builder()
                    .userPoolId(userPoolId)
                    .build();

            DeleteUserPoolResponse response = cognitoClient.deleteUserPool(request);
            System.out.println("User pool " + response.toString() + " deleted. ID: " + request.userPoolId());

        } catch (CognitoIdentityProviderException e){
            System.err.println(e.awsErrorDetails().errorMessage());
            System.exit(1);
        }
     }
}
