
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   This file is licensed under the Apache License, Version 2.0 (the "License").
   You may not use this file except in compliance with the License. A copy of
   the License is located at
    http://aws.amazon.com/apache2.0/
   This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied. See the License for the
   specific language governing permissions and limitations under the License.
*/

package com.example.translate;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.translate.TranslateClient;
import software.amazon.awssdk.services.translate.model.ListTextTranslationJobsRequest;
import software.amazon.awssdk.services.translate.model.ListTextTranslationJobsResponse;
import software.amazon.awssdk.services.translate.model.TextTranslationJobProperties;
import software.amazon.awssdk.services.translate.model.TranslateException;

import java.util.List;

/**
 * To run this Java V2 code example, ensure that you have setup your development environment, including your credentials.
 *
 * For information, see this documentation topic:
 *
 * https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/get-started.html
 */
public class ListTextTranslationJobs {

    public static void main(String[] args) {

        Region region = Region.US_WEST_2;
        TranslateClient translateClient = TranslateClient.builder()
                .region(region)
                .build();

        getTranslationJobs(translateClient);
        translateClient.close();
    }

    public static void getTranslationJobs( TranslateClient translateClient) {
        try {
        ListTextTranslationJobsRequest textTranslationJobsRequest = ListTextTranslationJobsRequest.builder()
                .maxResults(10)
                .build();

        ListTextTranslationJobsResponse jobsResponse = translateClient.listTextTranslationJobs(textTranslationJobsRequest);
        List<TextTranslationJobProperties> props = jobsResponse.textTranslationJobPropertiesList();

        for (TextTranslationJobProperties prop: props) {
            System.out.println("The job name is: "+prop.jobName());
            System.out.println("The job id is: "+prop.jobId());
        }

    } catch (TranslateException e) {
        System.err.println(e.getMessage());
        System.exit(1);
    }
 }
}
