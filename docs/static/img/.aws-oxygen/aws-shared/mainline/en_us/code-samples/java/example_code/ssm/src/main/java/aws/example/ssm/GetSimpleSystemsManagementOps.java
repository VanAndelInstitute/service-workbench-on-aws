/**
 * Copyright 2010-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * This file is licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License. A copy of
 * the License is located at
 *
 * http://aws.amazon.com/apache2.0/
 *
 * This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 */



package aws.example.ssm;

import com.amazonaws.regions.Regions;
import com.amazonaws.services.simplesystemsmanagement.AWSSimpleSystemsManagement;
import com.amazonaws.services.simplesystemsmanagement.AWSSimpleSystemsManagementClientBuilder;
import com.amazonaws.services.simplesystemsmanagement.model.GetOpsItemResult;
import com.amazonaws.services.simplesystemsmanagement.model.OpsItem;
import com.amazonaws.services.simplesystemsmanagement.model.GetOpsItemRequest;
import com.amazonaws.AmazonServiceException;

public class GetSimpleSystemsManagementOps {


    public static void main(String[] args) {

        if (args.length < 1) {
            System.out.println("Please specify a SSM OpsItem ID value. You can obtain this value using the AWS Console.");
            System.exit(1);
        }


        // Get the OpsItem ID value
        String opsID = args[0];

        // Create the AWSSimpleSystemsManagement client object
        AWSSimpleSystemsManagement ssm = AWSSimpleSystemsManagementClientBuilder.standard().withRegion(Regions.DEFAULT_REGION).build();

        try {
            GetOpsItemRequest opsRequest = new GetOpsItemRequest();
            opsRequest.setOpsItemId(opsID);

            GetOpsItemResult opsResults = ssm.getOpsItem(opsRequest);

            OpsItem item = opsResults.getOpsItem();

            System.out.println(item.getTitle());
            System.out.println(item.getDescription());
            System.out.println(item.getSource());

        } catch (AmazonServiceException e) {
            e.getStackTrace();
        }
    }
}
