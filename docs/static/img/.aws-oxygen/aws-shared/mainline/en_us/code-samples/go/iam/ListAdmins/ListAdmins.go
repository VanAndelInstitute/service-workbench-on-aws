// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "fmt"

    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/iam"
)

func userPolicyHasAdmin(user *iam.UserDetail, admin string) bool {
    for _, policy := range user.UserPolicyList {
        if *policy.PolicyName == admin {
            return true
        }
    }

    return false
}

func attachedUserPolicyHasAdmin(user *iam.UserDetail, admin string) bool {
    for _, policy := range user.AttachedManagedPolicies {
        if *policy.PolicyName == admin {
            return true
        }
    }

    return false
}

func groupPolicyHasAdmin(svc *iam.IAM, group *iam.Group, admin string) (bool, error) {
    input := &iam.ListGroupPoliciesInput{
        GroupName: group.GroupName,
    }

    result, err := svc.ListGroupPolicies(input)
    if err != nil {
        return false, err
    }

    // Wade through policies
    for _, policyName := range result.PolicyNames {
        if *policyName == admin {
            return true, nil
        }
    }

    return false, nil
}

func attachedGroupPolicyHasAdmin(svc *iam.IAM, group *iam.Group, admin string) (bool, error) {
    input := &iam.ListAttachedGroupPoliciesInput{GroupName: group.GroupName}
    result, err := svc.ListAttachedGroupPolicies(input)
    if err != nil {
        return false, err
    }

    for _, policy := range result.AttachedPolicies {
        if *policy.PolicyName == admin {
            return true, nil
        }
    }

    return false, nil
}

func usersGroupsHaveAdmin(svc *iam.IAM, user *iam.UserDetail, admin string) (bool, error) {
    input := &iam.ListGroupsForUserInput{UserName: user.UserName}
    result, err := svc.ListGroupsForUser(input)
    if err != nil {
        return false, err
    }

    for _, group := range result.Groups {
        groupPolicyHasAdmin, err := groupPolicyHasAdmin(svc, group, admin)
        if err != nil {
            return false, err
        }

        if groupPolicyHasAdmin {
            return true, nil
        }

        attachedGroupPolicyHasAdmin, err := attachedGroupPolicyHasAdmin(svc, group, admin)
        if err != nil {
            return false, err
        }

        if attachedGroupPolicyHasAdmin {
            return true, nil
        }
    }

    return false, nil
}

// GetNumUsersAndAdmins determines how many users have administrator privileges.
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     name is the name of the RESOURCE
// Output:
//     If success, the number of users and admins, and nil
//     Otherwise, 0, 0 and an error
func GetNumUsersAndAdmins(sess *session.Session) (int, int, error) {
    svc := iam.New(sess)

    numUsers := 0
    numAdmins := 0

    // Get list of users
    user := "User"
    input := &iam.GetAccountAuthorizationDetailsInput{Filter: []*string{&user}}
    resp, err := svc.GetAccountAuthorizationDetails(input)
    if err != nil {
        return 0, 0, err
    }

    // The policy name that indicates administrator access
    adminName := "AdministratorAccess"

    // Wade through resulting users
    for _, user := range resp.UserDetailList {
        numUsers++

        isAdmin, err := isUserAdmin(svc, user, adminName)
        if err != nil {
            return 0, 0, err
        }

        if isAdmin {
            fmt.Println(*user.UserName)
            numAdmins++
        }
    }

    for *resp.IsTruncated {
        input := &iam.GetAccountAuthorizationDetailsInput{Filter: []*string{&user}, Marker: resp.Marker}
        resp, err = svc.GetAccountAuthorizationDetails(input)
        if err != nil {
            return 0, 0, err
        }

        // Wade through resulting users
        for _, user := range resp.UserDetailList {
            numUsers++

            isAdmin, err := isUserAdmin(svc, user, adminName)
            if err != nil {
                return 0, 0, err
            }

            if isAdmin {
                fmt.Println(*user.UserName)
                numAdmins++
            }
        }
    }

    return numUsers, numAdmins, nil
}

func isUserAdmin(svc *iam.IAM, user *iam.UserDetail, admin string) (bool, error) {
    // Check policy, attached policy, and groups (policy and attached policy)
    policyHasAdmin := userPolicyHasAdmin(user, admin)
    if policyHasAdmin {
        return true, nil
    }

    attachedPolicyHasAdmin := attachedUserPolicyHasAdmin(user, admin)
    if attachedPolicyHasAdmin {
        return true, nil
    }

    userGroupsHaveAdmin, err := usersGroupsHaveAdmin(svc, user, admin)
    if err != nil {
        return false, err
    }
    if userGroupsHaveAdmin {
        return true, nil
    }

    return false, nil
}

func main() {

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    numUsers, numAdmins, err := GetNumUsersAndAdmins(sess)
    if err != nil {
        fmt.Println("Got an error finding users who are admins:")
        fmt.Println(err)
        return
    }

    fmt.Println("")
    fmt.Println("Found", numAdmins, "admin(s) out of", numUsers, "user(s)")
}
