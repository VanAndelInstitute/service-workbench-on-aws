package main

import (
	"context"
	"errors"
	"fmt"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/service/iam"
	"github.com/aws/aws-sdk-go-v2/service/iam/types"
)

type ExampleCreatedResources struct {
	Role   string
	User   string
	Policy string
}

const (
	ExampleRoleName       = "ExampleRoleName"
	ExampleUserName       = "ExampleUserName"
	ExamplePolicyARN      = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
	ExampleSLRService     = "elasticbeanstalk.amazonaws.com"
	ExampleSLRDescription = "SLR for Amazon Elastic Beanstalk"
	ExamplePolicyName     = "myTable-AccessPolicy"
)

func examples(cfg aws.Config) ExampleCreatedResources {

	service := iam.NewFromConfig(cfg)

	// ListRoles

	roles, err := service.ListRoles(context.Background(), &iam.ListRolesInput{})

	if err != nil {
		panic("Could not list roles: " + err.Error())
	}

	fmt.Println("☑️ list roles")
	for _, idxRole := range roles.Roles {

		fmt.Printf("%s\t%s\t%s\t",
			*idxRole.RoleId,
			*idxRole.RoleName,
			*idxRole.Arn)
		if idxRole.Description != nil {
			fmt.Print(*idxRole.Description)
		}
		fmt.Print("\n")
	}


	// CreateRole
	myRole, err := service.CreateRole(context.Background(), &iam.CreateRoleInput{
		RoleName:    aws.String(ExampleRoleName),
		Description: aws.String("My super awesome example role"),
		AssumeRolePolicyDocument: aws.String(`{
			"Version": "2012-10-17",
			"Statement": [
			  {
				"Effect": "Allow",
				"Principal": {
				  "Service": "ec2.amazonaws.com"
				},
				"Action": "sts:AssumeRole"
			  }
			]
		  }`),
	})

	if err != nil {
		panic("Couldn't create role: " + err.Error())
	}

	fmt.Println("☑️ Create Role")
	fmt.Printf("The new role's ARN is %s \n", *myRole.Role.Arn)


	// GetRole

	getRoleResult, err := service.GetRole(context.Background(), &iam.GetRoleInput{
		RoleName: aws.String(ExampleRoleName),
	})

	if err != nil {
		panic("Couldn't get role! " + err.Error())
	}

	fmt.Println("☑️ GetRole results: ")
	fmt.Println("ARN: ", *getRoleResult.Role.Arn)
	fmt.Println("Name: ", *getRoleResult.Role.RoleName)
	fmt.Println("Created On: ", *getRoleResult.Role.CreateDate)


	// AttachRolePolicy

	_, err = service.AttachRolePolicy(context.Background(), &iam.AttachRolePolicyInput{
		PolicyArn: aws.String(ExamplePolicyARN),
		RoleName:  aws.String(ExampleRoleName),
	})

	if err != nil {
		panic("Couldn't apply a policy to the role!")
	}

	fmt.Println("☑️ Attached policy " + ExamplePolicyARN + " to role " + ExampleRoleName)


	fmt.Println("➡️ List role policies for " + ExampleRoleName)


	// ListRolePolicies

	rolePoliciesList, err := service.ListRolePolicies(context.Background(), &iam.ListRolePoliciesInput{
		RoleName: aws.String(ExampleRoleName),
	})

	if err != nil {
		panic("Couldn't list policies for role: " + err.Error())
	}

	for _, rolePolicy := range rolePoliciesList.PolicyNames {
		fmt.Printf("Policy ARN: %v", rolePolicy)
	}

	// ListAttachedRolePolicies

	attachedPoliciesList, err := service.ListAttachedRolePolicies(context.Background(), &iam.ListAttachedRolePoliciesInput{
		RoleName: aws.String(ExampleRoleName),
	})

	if err != nil {
		panic("Couldn't call ListAttachedRolePolicies: " + err.Error())
	}

	fmt.Println("➡️ List attached role policies for " + ExampleRoleName)

	for _, attachedPolicy := range attachedPoliciesList.AttachedPolicies {
		fmt.Printf("attached policy: %v\n (%v) \n", attachedPolicy.PolicyArn, attachedPolicy.PolicyName)
	}

	// Clean up: Detach the role policy.
	_, err = service.DetachRolePolicy(context.Background(), &iam.DetachRolePolicyInput{
		RoleName:  aws.String(ExampleRoleName),
		PolicyArn: aws.String(ExamplePolicyARN),
	})

	if err != nil {
		panic("Couldn't detach role policy!")
	}
	fmt.Println("☑️ Detached the policy")

	// CreateServiceLinkedRole

	fmt.Println("➡️ Create SLR for " + ExampleSLRService)
	createSlrResult, err := service.CreateServiceLinkedRole(context.Background(), &iam.CreateServiceLinkedRoleInput{
		AWSServiceName: aws.String(ExampleSLRService),
		Description:    aws.String(ExampleSLRDescription),
	})

	// NOTE: We don't consider this an error as running this example multiple times will cause an error.
	if err != nil {
		fmt.Printf("Couldn't create service-linked role: %v\n", err.Error())
	} else {

		fmt.Printf("Created service-linked role with ARN: %s\n", *createSlrResult.Role.Arn)
	}

	// CreateUser

	fmt.Println("➡️ Create user " + ExampleUserName)

	createUserResult, err := service.CreateUser(context.Background(), &iam.CreateUserInput{
		UserName: aws.String(ExampleUserName),
	})

	if err != nil {
		panic("Couldn't create user: " + err.Error())
	}

	fmt.Printf("Created user %s\n", *createUserResult.User.Arn)

	// ListUsers

	fmt.Println("➡️ List users")

	userListResult, err := service.ListUsers(context.Background(), &iam.ListUsersInput{})
	if err != nil {
		panic("Couldn't list users: " + err.Error())
	}
	for _, userResult := range userListResult.Users {
		fmt.Printf("%s\t%s\n", *userResult.UserName, *userResult.Arn)
	}
	// GetAccountPasswordPolicy

	fmt.Println("🔐 GetAccountPasswordPolicy")

	accountPasswordPolicy, err := service.GetAccountPasswordPolicy(context.Background(), &iam.GetAccountPasswordPolicyInput{})

	if err != nil {
		var notexists *types.NoSuchEntityException
		if errors.As(err, &notexists) {
			fmt.Println("No password policy")
		} else {
			panic("Couldn't get account password policy! " + err.Error())
		}
	} else {
		fmt.Println("Users can change password: ", accountPasswordPolicy.PasswordPolicy.AllowUsersToChangePassword)
		fmt.Println("Passwords expire: ", accountPasswordPolicy.PasswordPolicy.ExpirePasswords)
		fmt.Println("Minimum password length: ", accountPasswordPolicy.PasswordPolicy.MinimumPasswordLength)
	}

	// CreatePolicy

	fmt.Println("🔐 CreatePolicy")

	policyDocument := `{
		"Version": "2012-10-17",
		"Statement": [
			{
				"Effect": "Allow",
				"Action": [
					"dynamodb:DeleteItem",
					"dynamodb:GetItem",
					"dynamodb:PutItem",
					"dynamodb:Query",
					"dynamodb:Scan",
					"dynamodb:UpdateItem"
				],
				"Resource": [
					"arn:aws:dynamodb:us-west-2:123456789012:table/mytable",
					"arn:aws:dynamodb:us-west-2:123456789012:table/mytable/*"
				]
			}
		]
	}`

	createPolicyResult, err := service.CreatePolicy(context.Background(), &iam.CreatePolicyInput{
		PolicyDocument: &policyDocument,
		PolicyName:     aws.String(ExamplePolicyName),
	})

	if err != nil {
		panic("Couldn't create policy!" + err.Error())
	}

	fmt.Print("Created a new policy: " + *createPolicyResult.Policy.Arn)

	policyArn := createPolicyResult.Policy.Arn

	fmt.Println("➡️ List Policies")
	// ListPolicies

	policyListResponse, err := service.ListPolicies(context.Background(), &iam.ListPoliciesInput{})

	if err != nil {
		panic("Couldn't get list of policies! " + err.Error())
	}

	fmt.Print("PolicyName\tARN")
	for _, policy := range policyListResponse.Policies {
		fmt.Printf("%s\t%s\n", *policy.PolicyName, *policy.Arn)
	}

	fmt.Println("✅ GetPolicy " + *policyArn)
	// GetPolicy

	getPolicyResponse, err := service.GetPolicy(context.Background(), &iam.GetPolicyInput{
		PolicyArn: policyArn,
	})

	if err != nil {
		panic("Couldn't get policy from ARN: " + err.Error())
	}

	fmt.Printf("policy: %s, name %s\n",
		*getPolicyResponse.Policy.Arn,
		*getPolicyResponse.Policy.PolicyName)


	fmt.Println("🏘 ListGroups")
	// ListGroups

	listGroupsResult, err := service.ListGroups(context.Background(), &iam.ListGroupsInput{})

	if err != nil {
		panic("Couldn't list groups! " + err.Error())
	}

	for _, group := range listGroupsResult.Groups {
		fmt.Printf("group %s - %s\n", *group.GroupId, *group.Arn)
	}


	fmt.Println("🌎 ListSAMLProviders")
	// ListSAMLProviders

	samlProviderList, err := service.ListSAMLProviders(context.Background(), &iam.ListSAMLProvidersInput{})

	if err != nil {
		panic("Couldn't list saml providers: " + err.Error())
	}

	for _, provider := range samlProviderList.SAMLProviderList {
		fmt.Printf("%s %s -> %s", *provider.Arn, *provider.CreateDate, *provider.ValidUntil)
	}


	fmt.Println("💀 DeleteUser")

	// DeleteUser

	_, err = service.DeleteUser(context.Background(), &iam.DeleteUserInput{
		UserName: aws.String(ExampleUserName),
	})

	if err != nil {
		panic("Couldn't delete user: " + err.Error())
	}

	fmt.Println("Done!")
	return ExampleCreatedResources{
		Role:   *myRole.Role.Arn,
		User:   *createUserResult.User.Arn,
		Policy: *createPolicyResult.Policy.Arn,
	}
}
