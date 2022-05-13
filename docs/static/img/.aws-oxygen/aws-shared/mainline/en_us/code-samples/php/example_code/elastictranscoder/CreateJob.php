<?php
/**
 * Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
 *  ABOUT THIS PHP SAMPLE: This sample is part of the Elastic Transcoder Developer Guide topic at
 *  https://docs.aws.amazon.com/elastictranscoder/latest/developerguide/introduction.html
 *
 */
require 'vendor/autoload.php';

use Aws\ElasticTranscoder\ElasticTranscoderClient;
use Aws\Exception\AwsException;

/**
 * Create an Elastic Transcoder job.
 *
 * This code expects that you have AWS credentials set up per:
 * https://docs.aws.amazon.com/sdk-for-php/v3/developer-guide/guide_credentials.html
 */

$tmp_path = '/tmp';

// Region where you setup your AWS resources.
$region = 'us-east-2';

// Create the client for Elastic Transcoder.
$transcoder_client = new ElasticTranscoderClient([
    'profile' => 'default',
    'version' => '2012-09-25',
    'region' => $region,
    'default_caching_config' => $tmp_path,
]);

// This will generate a 480p 16:9 mp4 output.
$preset_id = '1351620000001-000020';

$pipeline_id = '1234567890112-abcdefg';
$S3_file = 'folder/filename.txt';

// All outputs will have this prefix prepended to their output key.
$output_key_prefix = 'elastic-transcoder-samples/output/';
$outputs = [
  [
    'Key' => $S3_file, 
    'PresetId' => $preset_id
  ]
];

// Create the job.
try {
    $create_job_result = $transcoder_client->createJob([
        'PipelineId' => $pipeline_id,
        'Input' => ['Key' => $S3_file],
        'Outputs' => $outputs,
        'OutputKeyPrefix' => $output_key_prefix
    ]);
    var_dump($create_job_result["Job"]);
} catch (AwsException $e) {
    // output error message if fails
    echo $e->getMessage() . "\n";
}



?>
