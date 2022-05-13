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
 *
 *
 *
 */

require 'vendor/autoload.php';

use Aws\Exception\AwsException;
use Aws\Polly\PollyClient;


/**
 * This code expects that you have AWS credentials set up per:
 * https://docs.aws.amazon.com/sdk-for-php/v3/developer-guide/guide_credentials.html
 */
// Create a PollyClient
$client = new Aws\Polly\PollyClient([
    'profile' => 'default',
    'version' => '2016-06-10',
    'region' => 'us-east-2'
]);

$name = 'lexiconName';
$PLS = '
        <lexicon version="1.0" 
              xmlns="http://www.w3.org/2005/01/pronunciation-lexicon"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
              xsi:schemaLocation="http://www.w3.org/2005/01/pronunciation-lexicon 
                http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd"
              alphabet="ipa" 
              xml:lang="en-US">
                  <lexeme>
                    <grapheme>W3C</grapheme>
                    <alias>World Wide Web Consortium</alias>
                  </lexeme>
        </lexicon>';

try {
    $result = $client->putLexicon([
        'Name' => $name,
        'Content' => $PLS,
    ]);
    var_dump($result);
} catch (AwsException $e) {
    // output error message if fails
    echo $e->getMessage();
    echo "\n";
}

