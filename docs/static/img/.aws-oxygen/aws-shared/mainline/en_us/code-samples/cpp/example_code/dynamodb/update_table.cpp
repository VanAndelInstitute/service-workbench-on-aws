

/*
   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: Apache-2.0
*/

#include <aws/core/Aws.h>
#include <aws/core/utils/Outcome.h> 
#include <aws/dynamodb/DynamoDBClient.h>
#include <aws/dynamodb/model/ProvisionedThroughput.h>
#include <aws/dynamodb/model/UpdateTableRequest.h>
#include <iostream>


/**
  Update a DynamoDB table.

  Takes the name of the table to update, the read capacity and the write
  capacity to use.

  To run this C++ code example, ensure that you have setup your development environment, including your credentials.
  For information, see this documentation topic:
  https://docs.aws.amazon.com/sdk-for-cpp/v1/developer-guide/getting-started.html
*/
int main(int argc, char** argv)
{
    const std::string USAGE = \
        "Usage:\n"
        "    update_table <table> <read> <write>\n\n"
        "Where:\n"
        "    table - the table to put the item in.\n"
        "    read  - the new read capacity of the table.\n"
        "    write - the new write capacity of the table.\n\n"
        "Example:\n"
        "    update_table HelloTable 16 10\n";

    if (argc < 3)
    {
        std::cout << USAGE;
        return 1;
    }

    Aws::SDKOptions options;
    Aws::InitAPI(options);
    {
        const Aws::String table(argv[1]);
        const long long rc = Aws::Utils::StringUtils::ConvertToInt64(argv[2]);
        const long long wc = Aws::Utils::StringUtils::ConvertToInt64(argv[3]);

        Aws::Client::ClientConfiguration clientConfig;
        Aws::DynamoDB::DynamoDBClient dynamoClient(clientConfig);

        std::cout << "Updating " << table << " with new provisioned throughput values" << std::endl;
        std::cout << "Read capacity : " << rc << std::endl;
        std::cout << "Write capacity: " << wc << std::endl;

        Aws::DynamoDB::Model::UpdateTableRequest utr;
        Aws::DynamoDB::Model::ProvisionedThroughput pt;
        pt.WithReadCapacityUnits(rc).WithWriteCapacityUnits(wc);
        utr.WithProvisionedThroughput(pt).WithTableName(table);

        const Aws::DynamoDB::Model::UpdateTableOutcome& result = dynamoClient.UpdateTable(utr);
        if (!result.IsSuccess())
        {
            std::cout << result.GetError().GetMessage() << std::endl;
            return 1;
        }
        std::cout << "Done!" << std::endl;
    }
    Aws::ShutdownAPI(options);
    return 0;
}
