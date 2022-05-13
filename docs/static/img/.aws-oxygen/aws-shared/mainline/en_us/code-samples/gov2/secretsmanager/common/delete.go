// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
package common

import (
	"context"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/service/secretsmanager"
)

// Delete a secret given an identifier (ARN or name) for that secret
func DeleteSecret(config aws.Config, secretId string) error {
	conn := secretsmanager.NewFromConfig(config)

	_, err := conn.DeleteSecret(context.TODO(), &secretsmanager.DeleteSecretInput{
		SecretId: aws.String(secretId),
	})
	return err
}

