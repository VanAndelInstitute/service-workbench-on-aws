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
*/
using System;
using System.Threading;

using Amazon.S3;
using Amazon.S3.Model;

namespace async_aws_net
{
    class ClientState
    {
        public AmazonS3Client Client { get; set; }
        public DateTime Start { get; set; }
    }

    class Program
    {
        //
        // Function Main().
        // Parse the command line and call the worker function.
        //
        public static void Main(string[] args)
        {
            if (args.Length != 1)
            {
                Console.WriteLine("You must supply the name of an existing Amazon S3 bucket.");
                return;
            }

            TestPutObjectAsync(args[0]);
        }

        //
        // Function SimpleCallback().
        // A very simple callback function.
        //
        public static void SimpleCallback(IAsyncResult asyncResult)
        {
            Console.WriteLine("Finished PutObject operation with simple callback.");
            Console.WriteLine("--------------------------------------------------");
            Console.WriteLine("asyncResult.IsCompleted: {0}\n\n", asyncResult.IsCompleted.ToString());
        }

        //
        // Function CallbackWithClient().
        // A callback function that provides access to a given S3 client.
        //
        public static void CallbackWithClient(IAsyncResult asyncResult)
        {
            try
            {
                AmazonS3Client s3Client = (AmazonS3Client)asyncResult.AsyncState;
                PutObjectResponse response = s3Client.EndPutObject(asyncResult);
                Console.WriteLine("Finished PutObject operation with client callback. Service Version: {0}", s3Client.Config.ServiceVersion);
                Console.WriteLine("--------------------------------------------------");
                Console.WriteLine("Service Response:");
                Console.WriteLine("-----------------");
                Console.WriteLine("Request ID: {0}\n\n", response.ResponseMetadata.RequestId);
            }
            catch (AmazonS3Exception s3Exception)
            {
                Console.WriteLine("Caught exception calling EndPutObject:");
                Console.WriteLine(s3Exception);
            }
        }

        //
        // Function CallbackWithState().
        // A callback function that provides access to a given S3 client as well as state information.
        //
        public static void CallbackWithState(IAsyncResult asyncResult)
        {
            try
            {
                ClientState state = asyncResult.AsyncState as ClientState;
                AmazonS3Client s3Client = (AmazonS3Client)state.Client;
                PutObjectResponse response = state.Client.EndPutObject(asyncResult);
                Console.WriteLine("Finished PutObject operation with state callback that started at {0}",
                    state.Start.ToString());
                Console.WriteLine("--------------------------------------------------");
                Console.WriteLine("Service Response:");
                Console.WriteLine("-----------------");
                Console.WriteLine("Request ID: {0}\n\n", response.ResponseMetadata.RequestId);
            }
            catch (AmazonS3Exception s3Exception)
            {
                Console.WriteLine("Caught exception calling EndPutObject:");
                Console.WriteLine(s3Exception);
            }
        }

        //
        // Function TestPutObjectAsync().
        // Test synchronous and asynchronous variations of PutObject().
        //
        public static void TestPutObjectAsync(string bucket)
        {
            // Create a client
            AmazonS3Client client = new AmazonS3Client();

            PutObjectResponse response;
            IAsyncResult asyncResult;

            //
            // Create a PutObject request object using the supplied bucket name.
            //
            PutObjectRequest request = new PutObjectRequest
            {
                BucketName = bucket,
                Key = "Item0-Synchronous",
                ContentBody = "Put S3 object synchronously."
            };

            //
            // Perform a synchronous PutObject operation.
            //
            Console.WriteLine("-------------------------------------------------------------------------------");
            Console.WriteLine("Performing synchronous PutObject operation for {0}.", request.Key);
            response = client.PutObject(request);
            Console.WriteLine("Finished PutObject operation for {0}.", request.Key);
            Console.WriteLine("Service Response:");
            Console.WriteLine("-----------------");
            Console.WriteLine("Request ID: {0}", response.ResponseMetadata.RequestId);
            Console.Write("\n");

            //
            // Perform an async PutObject operation and wait for the response.
            //
            // (Re-use the existing PutObject request object since it isn't being used for another async request.)
            //
            request.Key = "Item1-Async-wait";
            request.ContentBody = "Put S3 object asynchronously; wait for response.";
            Console.WriteLine("-------------------------------------------------------------------------------");
            Console.WriteLine("Performing async PutObject operation and waiting for response (Key: {0}).", request.Key);

            asyncResult = client.BeginPutObject(request, null, null);
            while (!asyncResult.IsCompleted)
            {
                //
                // Do some work here
                //
            }
            try
            {
                response = client.EndPutObject(asyncResult);
            }
            catch (AmazonS3Exception s3Exception)
            {
                Console.WriteLine("Caught exception calling EndPutObject:");
                Console.WriteLine(s3Exception);
            }

            Console.WriteLine("Finished Async PutObject operation for {0}.", request.Key);
            Console.WriteLine("Service Response:");
            Console.WriteLine("-----------------");
            Console.WriteLine("Request ID: {0}\n", response.ResponseMetadata.RequestId);

            Console.WriteLine("-------------------------------------------------------------------------------");
            Console.WriteLine("Performing the following async PutObject operations:");
            Console.WriteLine("\"simple callback\", \"callback with client\", and \"callback with state\"...\n");

            //
            // Perform an async PutObject operation with a simple callback.
            //
            // (Re-use the existing PutObject request object since it isn't being used for another async request.)
            //
            request.Key = "Item2-Async-simple";
            request.ContentBody = "Put S3 object asynchronously; use simple callback.";

            Console.WriteLine("PutObject with simple callback (Key: {0}).", request.Key);
            asyncResult = client.BeginPutObject(request, SimpleCallback, null);

            //
            // Perform an async PutObject operation with a client callback.
            //
            // Create a PutObject request object for this call using the supplied bucket name.
            //
            PutObjectRequest request_client = new PutObjectRequest
            {
                BucketName = bucket,
                Key = "Item3-Async-client",
                ContentBody = "Put S3 object asynchronously; use callback with client."
            };

            Console.WriteLine("PutObject with client callback (Key: {0}).", request_client.Key);
            asyncResult = client.BeginPutObject(request_client, CallbackWithClient, client);

            //
            // Perform an async PutObject operation with a state callback.
            //
            // Create a PutObject request object for this call using the supplied bucket name.
            //
            PutObjectRequest request_state = new PutObjectRequest
            {
                BucketName = bucket,
                Key = "Item3-Async-state",
                ContentBody = "Put S3 object asynchronously; use callback with state."
            };

            Console.WriteLine("PutObject with state callback (Key: {0}).\n", request_state.Key);
            asyncResult = client.BeginPutObject(request_state, CallbackWithState,
               new ClientState { Client = client, Start = DateTime.Now });

            //
            // Finished with async calls. Wait a bit for them to finish.
            //
            Thread.Sleep(TimeSpan.FromSeconds(5));
        }
    }
}
