
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.ec2

import aws.sdk.kotlin.services.ec2.Ec2Client
import aws.sdk.kotlin.services.ec2.model.DescribeRegionsRequest
import aws.sdk.kotlin.services.ec2.model.DescribeAvailabilityZonesRequest

/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

    describeEC2RegionsAndZones()
}

suspend fun describeEC2RegionsAndZones() {

    Ec2Client { region = "us-west-2" }.use { ec2 ->
        val regionsResponse = ec2.describeRegions(DescribeRegionsRequest{})
        regionsResponse.regions?.forEach { region ->
            println("Found Region ${region.regionName} with endpoint ${region.endpoint}")
        }

       val zonesResponse = ec2.describeAvailabilityZones(DescribeAvailabilityZonesRequest{})
        zonesResponse.availabilityZones?.forEach { zone ->
            println("Found Availability Zone ${zone.zoneName} with status  ${zone.state} in Region ${zone.regionName}")
        }
     }
}
