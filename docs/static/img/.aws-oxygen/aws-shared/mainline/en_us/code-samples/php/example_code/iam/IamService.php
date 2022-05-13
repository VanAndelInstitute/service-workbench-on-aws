<?php

namespace Iam;

use Aws\Exception\AwsException;
use Aws\Iam\Exception\IamException;
use Aws\Iam\IamClient;
use Aws\Result;

class IamService
{
    public static int $maxWaitAttempts = 10;
    public static int $waitTime = 2;
    protected IamClient $iamClient;

    public function __construct($client = null, $region = 'us-west-2', $version = 'latest', $profile = 'default')
    {
        if (gettype($client) == IamClient::class) {
            $this->iamClient = $client;
            return;
        }
        $this->iamClient = new IamClient([
            'region' => $region,
            'version' => $version,
            'profile' => $profile,
        ]);
        /* Inline declaration example
        $iamClient = new IamClient(['region' => 'us-west-2', 'version' => 'latest', 'profile' => 'default']);
        */
    }


    /**
     * @param string $name
     * @return array
     * @throws AwsException
     */
    public function createUser(string $name): array
    {
        $result = $this->iamClient->createUser([
            'UserName' => $name,
        ]);

        return $result['User'];
    }


    /**
     * @param string $roleName
     * @param string $rolePolicyDocument
     * @return array
     * @throws AwsException
     */
    public function createRole(string $roleName, string $rolePolicyDocument)
    {
        $result = $this->customWaiter(function () use ($roleName, $rolePolicyDocument) {
            return $this->iamClient->createRole([
                'AssumeRolePolicyDocument' => $rolePolicyDocument,
                'RoleName' => $roleName,
            ]);
        });
        return $result['Role'];
    }


    public function customWaiter($function, $verbose = false)
    {
        $attempts = 1;
        $hasFinished = false;
        $result = false;
        while (!$hasFinished) {
            try {
                $result = $function();
                $hasFinished = true;
            } catch (IamException $exception) {
                if ($verbose) {
                    echo "Attempt failed because of: {$exception->getMessage()}.\n";
                    echo "Waiting " . IamService::$waitTime . " seconds before trying again.\n";
                    echo (IamService::$maxWaitAttempts - $attempts) . " attempts left.\n";
                }
                ++$attempts;
                if ($attempts > IamService::$maxWaitAttempts) {
                    return false;
                }
                sleep(IamService::$waitTime);
            }
        }
        return $result;
    }

    public function deleteRole(string $roleName)
    {
        return $this->customWaiter(function () use ($roleName) {
            return $this->iamClient->deleteRole([
                'RoleName' => $roleName,
            ]);
        });
    }


    public function deleteServiceLinkedRole(string $string)
    {
        return $this->iamClient->deleteServiceLinkedRole(['RoleName' => $string]);
    }

    public function deleteUser($userName)
    {
        return $this->customWaiter(function () use ($userName) {
            return $this->iamClient->deleteUser([
                'UserName' => $userName,
            ]);
        });
    }

    public function createUserPolicy(string $policyName, string $policyDocument, string $userName)
    {
        $result = $this->iamClient->putUserPolicy([
            'PolicyName' => $policyName,
            'PolicyDocument' => $policyDocument,
            'UserName' => $userName,
        ]);
        return $result['Policy'];
    }

    public function createPolicy(string $policyName, string $policyDocument)
    {
        $result = $this->customWaiter(function () use ($policyName, $policyDocument) {
            return $this->iamClient->createPolicy([
                'PolicyName' => $policyName,
                'PolicyDocument' => $policyDocument,
            ]);
        });
        return $result['Policy'];
    }

    public function deletePolicy($policyArn)
    {
        return $this->iamClient->deletePolicy([
            'PolicyArn' => $policyArn,
        ]);
    }

    public function attachRolePolicy($roleName, $policyArn)
    {
        return $this->customWaiter(function () use ($roleName, $policyArn) {
            $this->iamClient->attachRolePolicy([
                'PolicyArn' => $policyArn,
                'RoleName' => $roleName,
            ]);
        });
    }

    public function detachRolePolicy($roleName, $policyArn)
    {
        return $this->customWaiter(function () use ($roleName, $policyArn) {
            return $this->iamClient->detachRolePolicy([
                'PolicyArn' => $policyArn,
                'RoleName' => $roleName,
            ]);
        });
    }

    public function createAccessKey(string $userName)
    {
        $result = $this->iamClient->createAccessKey([
            'UserName' => $userName,
        ]);
        return $result['AccessKey'];
    }

    public function deleteAccessKey($accessKeyId)
    {
        return $this->customWaiter(function () use ($accessKeyId) {
            return $this->iamClient->deleteAccessKey([
                'AccessKeyId' => $accessKeyId,
            ]);
        });
    }

    public function attachUserPolicy($userName, $policyArn)
    {
        return $this->customWaiter(function () use ($userName, $policyArn) {
            return $this->iamClient->attachUserPolicy([
                'UserName' => $userName,
                'PolicyArn' => $policyArn,
            ]);
        });
    }

    public function detachUserPolicy($userName, $policyArn)
    {
        $this->iamClient->detachUserPolicy([
            'PolicyArn' => $policyArn,
            'UserName' => $userName,
        ]);
    }

    /**
     * @param string $pathPrefix
     * @param string $marker
     * @param int $maxItems
     * @return Result
     * $roles = $service->listRoles();
     */
    public function listRoles($pathPrefix = "", $marker = "", $maxItems = 0)
    {
        $listRolesArguments = [];
        if ($pathPrefix) {
            $listRolesArguments["PathPrefix"] = $pathPrefix;
        }
        if ($marker) {
            $listRolesArguments["Marker"] = $marker;
        }
        if ($maxItems) {
            $listRolesArguments["MaxItems"] = $maxItems;
        }
        return $this->iamClient->listRoles($listRolesArguments);
    }

    public function getRole($roleName)
    {
        return $this->customWaiter(function () use ($roleName) {
            return $this->iamClient->getRole(['RoleName' => $roleName]);
        });
    }

    public function listUsers($pathPrefix = "", $marker = "", $maxItems = 0)
    {
        $listUsersArguments = [];
        if ($pathPrefix) {
            $listUsersArguments["PathPrefix"] = $pathPrefix;
        }
        if ($marker) {
            $listUsersArguments["Marker"] = $marker;
        }
        if ($maxItems) {
            $listUsersArguments["MaxItems"] = $maxItems;
        }

        return $this->iamClient->listUsers($listUsersArguments);
    }

    public function listPolicies($pathPrefix = "", $marker = "", $maxItems = 0)
    {
        $listPoliciesArguments = [];
        if ($pathPrefix) {
            $listPoliciesArguments["PathPrefix"] = $pathPrefix;
        }
        if ($marker) {
            $listPoliciesArguments["Marker"] = $marker;
        }
        if ($maxItems) {
            $listPoliciesArguments["MaxItems"] = $maxItems;
        }

        return $this->iamClient->listPolicies($listPoliciesArguments);
    }

    public function listGroups($pathPrefix = "", $marker = "", $maxItems = 0)
    {
        $listGroupsArguments = [];
        if ($pathPrefix) {
            $listGroupsArguments["PathPrefix"] = $pathPrefix;
        }
        if ($marker) {
            $listGroupsArguments["Marker"] = $marker;
        }
        if ($maxItems) {
            $listGroupsArguments["MaxItems"] = $maxItems;
        }

        return $this->iamClient->listGroups($listGroupsArguments);
    }

    public function createServiceLinkedRole($awsServiceName, $customSuffix = "", $description = "")
    {
        $createServiceLinkedRoleArguments = ['AWSServiceName' => $awsServiceName];
        if ($customSuffix) {
            $createServiceLinkedRoleArguments['CustomSuffix'] = $customSuffix;
        }
        if ($description) {
            $createServiceLinkedRoleArguments['Description'] = $description;
        }
        return $this->iamClient->createServiceLinkedRole($createServiceLinkedRoleArguments);
    }

    public function getAccountPasswordPolicy()
    {
        return $this->iamClient->getAccountPasswordPolicy();
    }

    public function listAttachedRolePolicies($roleName, $pathPrefix = "", $marker = "", $maxItems = 0)
    {
        $listAttachRolePoliciesArguments = ['RoleName' => $roleName];
        if ($pathPrefix) {
            $listAttachRolePoliciesArguments['PathPrefix'] = $pathPrefix;
        }
        if ($marker) {
            $listAttachRolePoliciesArguments['Marker'] = $marker;
        }
        if ($maxItems) {
            $listAttachRolePoliciesArguments['MaxItems'] = $maxItems;
        }
        return $this->iamClient->listAttachedRolePolicies($listAttachRolePoliciesArguments);
    }

    public function listSAMLProviders()
    {
        return $this->iamClient->listSAMLProviders();
    }

    public function getPolicy($policyArn)
    {
        return $this->customWaiter(function () use ($policyArn) {
            return $this->iamClient->getPolicy(['PolicyArn' => $policyArn]);
        });
    }

    public function listRolePolicies($roleName, $marker = "", $maxItems = 0)
    {
        $listRolePoliciesArguments = ['RoleName' => $roleName];
        if ($marker) {
            $listRolePoliciesArguments['Marker'] = $marker;
        }
        if ($maxItems) {
            $listRolePoliciesArguments['MaxItems'] = $maxItems;
        }
        return $this->customWaiter(function () use ($listRolePoliciesArguments) {
            return $this->iamClient->listRolePolicies($listRolePoliciesArguments);
        });
    }

    public function updateAccountPasswordPolicy(array $array)
    {
        $this->iamClient->updateAccountPasswordPolicy($array);
    }
}
