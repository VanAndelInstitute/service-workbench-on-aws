/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/
package aws.example.emr;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.emr.EmrClient;
import software.amazon.awssdk.services.emr.model.*;


/*
 *   Ensure that you have setup your development environment, including your credentials.
 *   For information, see this documentation topic:
 *
 *   https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 *
 */
public class DescribeCluster {

    public static void main(String[] args){

        final String USAGE = "\n" +
                "Usage: " +
                "   <clusterId> \n\n" +
                "Where:\n" +
                "   clusterId - The identifier of the cluster to describe. \n\n" ;

        if (args.length != 1) {
              System.out.println(USAGE);
              System.exit(1);
         }


        String clusterId = args[0] ;
        Region region = Region.US_WEST_2;
        EmrClient emrClient = EmrClient.builder()
                .region(region)
                .build();
        describeMyCluster(emrClient, clusterId);

        emrClient.close();
    }

    public static void describeMyCluster(EmrClient emrClient, String clusterId){

        try {
            DescribeClusterRequest clusterRequest = DescribeClusterRequest.builder()
                    .clusterId(clusterId)
                    .build();

            DescribeClusterResponse response = emrClient.describeCluster(clusterRequest);
            System.out.println("The name of the cluster is "+response.cluster().name());

        } catch(EmrException e){
        System.err.println(e.getMessage());
        System.exit(1);
    }
 }
}
