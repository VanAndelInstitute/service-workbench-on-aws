# Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
# http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

import DeepLens_Kinesis_Video as dkv
import time

aws_access_key = "Your IAM access key"
aws_secrete_key = "Your IAM secret key"
region = "us-east-1"
stream_name ="Your stream name, for example, deeplens-kvs"
retention = 1 #Value in minutes
wait_time_sec = 60*2 #Number of minutes to stream the data
producer = dkv.createProducer(aws_access_key, aws_secrete_key, "", region) #No session token needed
my_stream = producer.createStream(stream_name, retention)
my_stream.start()
time.sleep(wait_time_sec)
my_stream.stop()



