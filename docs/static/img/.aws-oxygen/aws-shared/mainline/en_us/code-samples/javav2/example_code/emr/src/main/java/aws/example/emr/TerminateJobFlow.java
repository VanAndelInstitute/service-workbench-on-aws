/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package aws.example.emr;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.emr.EmrClient;
import software.amazon.awssdk.services.emr.model.*;
import software.amazon.awssdk.services.emr.model.TerminateJobFlowsRequest;

/*
 *   Ensure that you have setup your development environment, including your credentials.
 *   For information, see this documentation topic:
 *
 *   https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 *
 */
public class TerminateJobFlow {

    public static void main(String[] args){

        final String USAGE = "\n" +
                "Usage: " +
                "   <id>\n\n" +
                "Where:\n" +
                "   id - an id of a job flow to shut down.\n\n" ;

        if (args.length != 1) {
              System.out.println(USAGE);
              System.exit(1);
          }


        String id = args[0] ;
        Region region = Region.US_WEST_2;
        EmrClient emrClient = EmrClient.builder()
                .region(region)
                .build();

        terminateFlow(emrClient, id);
         emrClient.close();
    }

    public static void terminateFlow( EmrClient emrClient, String id) {

        try{

            TerminateJobFlowsRequest jobFlowsRequest = TerminateJobFlowsRequest.builder()
                    .jobFlowIds(id)
                    .build();

            emrClient.terminateJobFlows(jobFlowsRequest);
            System.out.println("You have successfully terminated "+id);

        } catch(EmrException e){
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}
