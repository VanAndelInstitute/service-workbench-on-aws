
/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

package com.example.s3;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.RestoreRequest;
import software.amazon.awssdk.services.s3.model.GlacierJobParameters;
import software.amazon.awssdk.services.s3.model.RestoreObjectRequest;
import software.amazon.awssdk.services.s3.model.S3Exception;
import software.amazon.awssdk.services.s3.model.Tier;

/*
    For more information about restoring an object, see "Restoring an archived object" at
    https://docs.aws.amazon.com/AmazonS3/latest/userguide/restoring-objects.html
*/

public class RestoreObject {

    public static void main(String[] args) {

        final String USAGE = "\n" +
                "Usage:\n" +
                "    <bucketName> <keyName> <expectedBucketOwner>\n\n" +
                "Where:\n" +
                "    bucketName - the Amazon S3 bucket name. \n\n" +
                "    keyName - the key name of an object with a Storage class value of Glacier. \n\n" +
                "    expectedBucketOwner - the account that owns the bucket (you can obtain this value from the AWS Management Console). \n\n";

        if (args.length != 3) {
                 System.out.println(USAGE);
                 System.exit(1);
         }

        String bucketName = args[0];
        String keyName = args[1];
        String expectedBucketOwner = args[2];

        Region region = Region.US_WEST_2;
        S3Client s3 = S3Client.builder()
                .region(region)
                .build();

        restoreS3Object(s3, bucketName, keyName, expectedBucketOwner);
        s3.close();
    }

    public static void restoreS3Object(S3Client s3, String bucketName, String keyName, String expectedBucketOwner) {

        try {

            RestoreRequest restoreRequest = RestoreRequest.builder()
                    .days(10)
                    .glacierJobParameters(GlacierJobParameters.builder().tier(Tier.STANDARD).build())
                    .build();

            RestoreObjectRequest objectRequest = RestoreObjectRequest.builder()
                .expectedBucketOwner(expectedBucketOwner)
                .bucket(bucketName)
                .key(keyName)
                .restoreRequest(restoreRequest)
                .build();

        s3.restoreObject(objectRequest);

    } catch (S3Exception e) {
        System.err.println(e.awsErrorDetails().errorMessage());
        System.exit(1);
    }
        s3.close();
    }
}
