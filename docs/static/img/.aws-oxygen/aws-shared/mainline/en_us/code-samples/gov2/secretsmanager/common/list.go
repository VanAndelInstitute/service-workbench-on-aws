// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
package common

import (
	"context"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/service/secretsmanager"
)

// Retrieve the ARNs of all secrets available to the requesting account.
func ListSecrets(config aws.Config) ([]string, error) {
	conn := secretsmanager.NewFromConfig(config)
	secrets := make([]string, 0)
	result, err := conn.ListSecrets(context.TODO(), &secretsmanager.ListSecretsInput{})
	if err != nil {
		return secrets, err
	}
	for _, secret := range result.SecretList {
		secrets = append(secrets, *secret.ARN)
	}

	return secrets, err
}

