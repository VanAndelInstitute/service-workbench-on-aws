
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.kotlin.mediaconvert



import aws.sdk.kotlin.runtime.endpoint.AwsEndpoint
import aws.sdk.kotlin.runtime.endpoint.AwsEndpointResolver
import aws.sdk.kotlin.runtime.endpoint.CredentialScope
import aws.sdk.kotlin.services.mediaconvert.MediaConvertClient
import aws.sdk.kotlin.services.mediaconvert.model.DescribeEndpointsRequest
import aws.sdk.kotlin.services.mediaconvert.model.JobStatus
import aws.sdk.kotlin.services.mediaconvert.model.ListJobsRequest
import aws.sdk.kotlin.services.mediaconvert.model.MediaConvertException
import kotlin.system.exitProcess


/**
To run this Kotlin code example, ensure that you have setup your development environment,
including your credentials.

For information, see this documentation topic:
https://docs.aws.amazon.com/sdk-for-kotlin/latest/developer-guide/setup.html
 */

suspend fun main() {

    val mcClient = MediaConvertClient{region="us-west-2"}
    listCompleteJobs(mcClient)
}

suspend fun listCompleteJobs(mcClient: MediaConvertClient) {

    try {

        val describeEndpoints = DescribeEndpointsRequest {
            maxResults = 20
        }

        val res = mcClient.describeEndpoints(describeEndpoints)
        if (res.endpoints?.size!! <= 0) {
            println("Cannot find MediaConvert service endpoint URL!")
            exitProcess(0)
        }
        val endpointURL = res.endpoints!!.get(0).url!!
        val client = MediaConvertClient {

            region = "us-west-2"
            endpointResolver = AwsEndpointResolver { service, region ->
                AwsEndpoint(endpointURL, CredentialScope(region = "us-west-2"))
            }
        }

        val jobsRequest = ListJobsRequest {
            maxResults = 10
            status = JobStatus.fromValue("COMPLETE")
        }

        val jobsResponse = client.listJobs(jobsRequest)
        val jobs = jobsResponse.jobs
        if (jobs != null) {
            for (job in jobs) {
                System.out.println("The JOB ARN is ${job.arn}")
            }
        }

    } catch (ex: MediaConvertException) {
        println(ex.message)
        mcClient.close()
        exitProcess(0)
    }
}
