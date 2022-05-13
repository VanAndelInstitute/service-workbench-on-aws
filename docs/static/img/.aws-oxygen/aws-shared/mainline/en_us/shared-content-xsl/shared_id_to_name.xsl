<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:param name="id" required="yes"/>
   <xsl:template name="lookup">
      <xsl:choose>  
         <xsl:when test="$id='ACCTlong'">
            <xsl:text>AWS Account Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACCT'">
            <xsl:text>Account Management</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ActivateConsolelong'">
            <xsl:text>AWS Activate Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ActivateConsole'">
            <xsl:text>Activate Console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AGTSVClong'">
            <xsl:text>AWS Agent Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AGTSVC'">
            <xsl:text>AWS Agent Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ABUSlong'">
            <xsl:text>Alexa for Business</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ABUS'">
            <xsl:text>Alexa for Business</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ATSlong'">
            <xsl:text>Alexa Top Sites</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ATS'">
            <xsl:text>Alexa Top Sites</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWISlong'">
            <xsl:text>Alexa Web Information Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWIS'">
            <xsl:text>Alexa Web Information Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMPLIFYlong'">
            <xsl:text>AWS Amplify</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMPLIFY'">
            <xsl:text>Amplify</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ABPlong'">
            <xsl:text>Amazon API Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ABP'">
            <xsl:text>API Gateway</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APPClong'">
            <xsl:text>AWS AppConfig</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APPC'">
            <xsl:text>AWS AppConfig</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AppConfigDatalong'">
            <xsl:text>AWS AppConfig Data</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AppConfigData'">
            <xsl:text>AWS AppConfig Data</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APFLlong'">
            <xsl:text>Amazon AppFlow</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APFL'">
            <xsl:text>Amazon AppFlow</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APP-DSlong'">
            <xsl:text>AWS Application Discovery Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APP-DS'">
            <xsl:text>Application Discovery Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MGNlong'">
            <xsl:text>AWS Application Migration Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MGN'">
            <xsl:text>Application Migration Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AIlong'">
            <xsl:text>Amazon CloudWatch Application Insights</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AI'">
            <xsl:text>CloudWatch Application Insights</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MESHlong'">
            <xsl:text>AWS App Mesh</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MESH'">
            <xsl:text>App Mesh</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARlong'">
            <xsl:text>AWS App Runner</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AR'">
            <xsl:text>App Runner</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AAS2long'">
            <xsl:text>Amazon AppStream 2.0</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AAS2'">
            <xsl:text>AppStream 2.0</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AASlong'">
            <xsl:text>Amazon AppStream</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AAS'">
            <xsl:text>Amazon AppStream</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APSYlong'">
            <xsl:text>AWS AppSync</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APSY'">
            <xsl:text>AWS AppSync</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARTlong'">
            <xsl:text>AWS Artifact</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ART'">
            <xsl:text>AWS Artifact</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ATElong'">
            <xsl:text>Amazon Athena</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ATE'">
            <xsl:text>Athena</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMlong'">
            <xsl:text>AWS Audit Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AM'">
            <xsl:text>Audit Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlong'">
            <xsl:text>Amazon Aurora</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AUR'">
            <xsl:text>Aurora</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongPostgres'">
            <xsl:text>Amazon Aurora PostgreSQL</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURPostgres'">
            <xsl:text>Aurora PostgreSQL</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongPostgresmed'">
            <xsl:text>Amazon Aurora PostgreSQL-Compatible</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURPostgresmed'">
            <xsl:text>Aurora PostgreSQL-Compatible</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongPostgreslong'">
            <xsl:text>Amazon Aurora PostgreSQL-Compatible Edition</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURPostgreslong'">
            <xsl:text>Aurora PostgreSQL-Compatible Edition</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongMySQL'">
            <xsl:text>Amazon Aurora MySQL</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURMySQL'">
            <xsl:text>Aurora MySQL</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongMySQLmed'">
            <xsl:text>Amazon Aurora MySQL-Compatible</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURMySQLmed'">
            <xsl:text>Aurora MySQL-Compatible</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AURlongMySQLlong'">
            <xsl:text>Amazon Aurora MySQL-Compatible Edition</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AURMySQLlong'">
            <xsl:text>Aurora MySQL-Compatible Edition</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWS-ASPlanslong'">
            <xsl:text>AWS Auto Scaling Plans</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-ASPlans'">
            <xsl:text>Auto Scaling Plans</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWS-ASlong'">
            <xsl:text>AWS Auto Scaling</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-AS'">
            <xsl:text>AWS Auto Scaling</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APP-ASlong'">
            <xsl:text>Application Auto Scaling</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APP-AS'">
            <xsl:text>Application Auto Scaling</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ASlong'">
            <xsl:text>Amazon EC2 Auto Scaling</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AS'">
            <xsl:text>Auto Scaling</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BKPlong'">
            <xsl:text>AWS Backup</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BKP'">
            <xsl:text>AWS Backup</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BGWlong'">
            <xsl:text>AWS Backup gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BGW'">
            <xsl:text>Backup gateway</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BATCHlong'">
            <xsl:text>AWS Batch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BATCH'">
            <xsl:text>AWS Batch</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ABlong'">
            <xsl:text>AWS Billing and Cost Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AB'">
            <xsl:text>Billing and Cost Management</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ABClong'">
            <xsl:text>AWS Billing Conductor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ABC'">
            <xsl:text>Billing Conductor</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CMConsolelong'">
            <xsl:text>AWS Cost Management Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMConsole'">
            <xsl:text>Cost Management Console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSDOCSlong'">
            <xsl:text>AWS Documentation</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSDOCS'">
            <xsl:text>AWS Documentation</xsl:text>
         </xsl:when>


         <xsl:when test="$id='consolelong'">
            <xsl:text>AWS Management Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='console'">
            <xsl:text>AWS Management Console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='consolehomelong'">
            <xsl:text>AWS Console Home</xsl:text>
         </xsl:when>
         <xsl:when test="$id='consolehome'">
            <xsl:text>AWS Console Home</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MarketingSitelong'">
            <xsl:text>AWS Marketing Website</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MarketingSite'">
            <xsl:text>AWS Marketing Website</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ce-long'">
            <xsl:text>AWS Cost Explorer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ce'">
            <xsl:text>Cost Explorer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BLXlong'">
            <xsl:text>Blox</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BLX'">
            <xsl:text>Blox</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BRAKETlong'">
            <xsl:text>Amazon Braket</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BRAKET'">
            <xsl:text>Braket</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ABBlong'">
            <xsl:text>AWS BugBust</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ABB'">
            <xsl:text>AWS BugBust</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACMlong'">
            <xsl:text>AWS Certificate Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACM'">
            <xsl:text>ACM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CBTlong'">
            <xsl:text>AWS Chatbot</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CBT'">
            <xsl:text>AWS Chatbot</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CHMlong'">
            <xsl:text>Amazon Chime</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CHM'">
            <xsl:text>Amazon Chime</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AC9long'">
            <xsl:text>AWS Cloud9</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AC9'">
            <xsl:text>AWS Cloud9</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CDIlong'">
            <xsl:text>AWS Cloud Digital Interface</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CDI'">
            <xsl:text>AWS CDI</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CDKlong'">
            <xsl:text>AWS Cloud Development Kit (CDK)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CDK'">
            <xsl:text>AWS CDK</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CMAPlong'">
            <xsl:text>AWS Cloud Map</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMAP'">
            <xsl:text>AWS Cloud Map</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CFNlong'">
            <xsl:text>AWS CloudFormation</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CFN'">
            <xsl:text>AWS CloudFormation</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CFlong'">
            <xsl:text>Amazon CloudFront</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CF'">
            <xsl:text>CloudFront</xsl:text>
         </xsl:when>


         <xsl:when test="$id='HSMlong'">
            <xsl:text>AWS CloudHSM</xsl:text>
         </xsl:when>
         <xsl:when test="$id='HSM'">
            <xsl:text>AWS CloudHSM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='HSMClassiclong'">
            <xsl:text>AWS CloudHSM Classic</xsl:text>
         </xsl:when>
         <xsl:when test="$id='HSMClassic'">
            <xsl:text>AWS CloudHSM Classic</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CSlong'">
            <xsl:text>Amazon CloudSearch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CS'">
            <xsl:text>Amazon CloudSearch</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CShell'">
            <xsl:text>AWS CloudShell</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CShellshort'">
            <xsl:text>CloudShell</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CTlong'">
            <xsl:text>AWS CloudTrail</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CT'">
            <xsl:text>CloudTrail</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CWlong'">
            <xsl:text>Amazon CloudWatch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CW'">
            <xsl:text>CloudWatch</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CWElong'">
            <xsl:text>Amazon CloudWatch Events</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CWE'">
            <xsl:text>CloudWatch Events</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CWLlong'">
            <xsl:text>Amazon CloudWatch Logs</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CWL'">
            <xsl:text>CloudWatch Logs</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACAlong'">
            <xsl:text>AWS CodeArtifact</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACA'">
            <xsl:text>CodeArtifact</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACBlong'">
            <xsl:text>AWS CodeBuild</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACB'">
            <xsl:text>CodeBuild</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACClong'">
            <xsl:text>AWS CodeCommit</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACC'">
            <xsl:text>CodeCommit</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACDlong'">
            <xsl:text>AWS CodeDeploy</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACD'">
            <xsl:text>CodeDeploy</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACPlong'">
            <xsl:text>AWS CodePipeline</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACP'">
            <xsl:text>CodePipeline</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GURUALLlong'">
            <xsl:text>Amazon CodeGuru</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GURUALLshort'">
            <xsl:text>CodeGuru</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACPRlong'">
            <xsl:text>Amazon CodeGuru Profiler</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACPR'">
            <xsl:text>CodeGuru Profiler</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACRElong'">
            <xsl:text>Amazon CodeGuru Reviewer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACRE'">
            <xsl:text>CodeGuru Reviewer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ACSlong'">
            <xsl:text>AWS CodeStar</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ACS'">
            <xsl:text>AWS CodeStar</xsl:text>
         </xsl:when>


         <xsl:when test="$id='COGlong'">
            <xsl:text>Amazon Cognito</xsl:text>
         </xsl:when>
         <xsl:when test="$id='COG'">
            <xsl:text>Amazon Cognito</xsl:text>
         </xsl:when>


         <xsl:when test="$id='COGSYNClong'">
            <xsl:text>Amazon Cognito Sync</xsl:text>
         </xsl:when>
         <xsl:when test="$id='COGSYNC'">
            <xsl:text>Amazon Cognito Sync</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CLIlong'">
            <xsl:text>AWS Command Line Interface</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CLI'">
            <xsl:text>AWS CLI</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CMPlong'">
            <xsl:text>Amazon Comprehend</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMP'">
            <xsl:text>Amazon Comprehend</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CMPMlong'">
            <xsl:text>Amazon Comprehend Medical</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMPM'">
            <xsl:text>Amazon Comprehend Medical</xsl:text>
         </xsl:when>


         <xsl:when test="$id='COlong'">
            <xsl:text>AWS Compute Optimizer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CO'">
            <xsl:text>Compute Optimizer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CClong'">
            <xsl:text>AWS Config</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CC'">
            <xsl:text>AWS Config</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CCAPIlong'">
            <xsl:text>AWS Cloud Control API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CCAPI'">
            <xsl:text>Cloud Control API</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CCRlong'">
            <xsl:text>AWS Config Rules</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CCR'">
            <xsl:text>AWS Config Rules</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CONlong'">
            <xsl:text>Amazon Connect</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CON'">
            <xsl:text>Amazon Connect</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSConnectorServicelong'">
            <xsl:text>AWS Connector Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSConnectorService'">
            <xsl:text>Connector Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CMAlong'">
            <xsl:text>AWS Console Mobile Application</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMA'">
            <xsl:text>Console Mobile Application</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CTowerlong'">
            <xsl:text>AWS Control Tower</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CTower'">
            <xsl:text>AWS Control Tower</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSCostExplorerServicelong'">
            <xsl:text>AWS Cost Explorer Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSCostExplorerService'">
            <xsl:text>Cost Explorer Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DLMlong'">
            <xsl:text>Amazon Data Lifecycle Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DLM'">
            <xsl:text>Amazon Data Lifecycle Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ADElong'">
            <xsl:text>AWS Data Exchange</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ADE'">
            <xsl:text>AWS Data Exchange</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSDPlong'">
            <xsl:text>AWS Data Pipeline</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSDP'">
            <xsl:text>AWS Data Pipeline</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DMSlong'">
            <xsl:text>AWS Database Migration Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DMS'">
            <xsl:text>AWS DMS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DSYlong'">
            <xsl:text>AWS DataSync</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DSY'">
            <xsl:text>DataSync</xsl:text>
         </xsl:when>


         <xsl:when test="$id='dlalong'">
            <xsl:text>AWS Deep Learning AMI</xsl:text>
         </xsl:when>
         <xsl:when test="$id='dla'">
            <xsl:text>DLAMI</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DLlong'">
            <xsl:text>AWS DeepLens</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DL'">
            <xsl:text>AWS DeepLens</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSDeepRacerlong'">
            <xsl:text>AWS DeepRacer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSDeepRacer'">
            <xsl:text>AWS DeepRacer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DETlong'">
            <xsl:text>Amazon Detective</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DET'">
            <xsl:text>Detective</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ATPlong'">
            <xsl:text>AWS Device Farm</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ATP'">
            <xsl:text>Device Farm</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CGOlong'">
            <xsl:text>Amazon DevOps Guru</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CGO'">
            <xsl:text>DevOps Guru</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DPlong'">
            <xsl:text>Amazon DevPay</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DP'">
            <xsl:text>Amazon DevPay</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWS-DC-long'">
            <xsl:text>AWS Direct Connect</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-DC'">
            <xsl:text>AWS Direct Connect</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ADSlong'">
            <xsl:text>AWS Directory Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ADS'">
            <xsl:text>AWS Directory Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GXYlong'">
            <xsl:text>AWS Directory Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GXY'">
            <xsl:text>AWS Directory Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='managed-ad-long'">
            <xsl:text>AWS Directory Service for Microsoft Active Directory</xsl:text>
         </xsl:when>
         <xsl:when test="$id='managed-ad'">
            <xsl:text>AWS Managed Microsoft AD</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CDSlong'">
            <xsl:text>Amazon Cloud Directory</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CDS'">
            <xsl:text>Cloud Directory</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DocDBlong'">
            <xsl:text>Amazon DocumentDB (with MongoDB compatibility)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DocDB'">
            <xsl:text>Amazon DocumentDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DDBlong'">
            <xsl:text>Amazon DynamoDB</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DDB'">
            <xsl:text>DynamoDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DAXlong'">
            <xsl:text>DynamoDB Accelerator</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DAX'">
            <xsl:text>DAX</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DDBEClong'">
            <xsl:text>Amazon DynamoDB Encryption Client</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DDBEC'">
            <xsl:text>DynamoDB Encryption Client</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DSlong'">
            <xsl:text>Amazon DynamoDB Streams</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DS'">
            <xsl:text>DynamoDB Streams</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EBSlong'">
            <xsl:text>Amazon Elastic Block Store</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EBS'">
            <xsl:text>Amazon EBS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EC2long'">
            <xsl:text>Amazon Elastic Compute Cloud</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EC2'">
            <xsl:text>Amazon EC2</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EC2Consolelong'">
            <xsl:text>Amazon Elastic Compute Cloud console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EC2Console'">
            <xsl:text>Amazon EC2 console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EC2DedicatedHostslong'">
            <xsl:text>Amazon Elastic Compute Cloud Dedicated Hosts</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EC2DedicatedHosts'">
            <xsl:text>Amazon EC2 Dedicated Hosts</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EC2LV2long'">
            <xsl:text>EC2Launch v2</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EC2LV2'">
            <xsl:text>EC2Launch</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECRlong'">
            <xsl:text>Amazon Elastic Container Registry</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECR'">
            <xsl:text>Amazon ECR</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECRPubliclong'">
            <xsl:text>Amazon Elastic Container Registry Public</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECRPublic'">
            <xsl:text>Amazon ECR Public</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECSlong'">
            <xsl:text>Amazon Elastic Container Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECS'">
            <xsl:text>Amazon ECS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FARGATElong'">
            <xsl:text>AWS Fargate</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FARGATE'">
            <xsl:text>Fargate</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EKSlong'">
            <xsl:text>Amazon Elastic Kubernetes Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EKS'">
            <xsl:text>Amazon EKS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AEBlong'">
            <xsl:text>AWS Elastic Beanstalk</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AEB'">
            <xsl:text>Elastic Beanstalk</xsl:text>
         </xsl:when>


         <xsl:when test="$id='DRSlong'">
            <xsl:text>AWS Elastic Disaster Recovery</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DRS'">
            <xsl:text>Elastic Disaster Recovery</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EFSlong'">
            <xsl:text>Amazon Elastic File System</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EFS'">
            <xsl:text>Amazon EFS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EIAlong'">
            <xsl:text>Amazon Elastic Inference</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EIA'">
            <xsl:text>Elastic Inference</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELBlong'">
            <xsl:text>Elastic Load Balancing</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELB'">
            <xsl:text>Elastic Load Balancing</xsl:text>
         </xsl:when>


         <xsl:when test="$id='NLBlong'">
            <xsl:text>Network Load Balancer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='NLB'">
            <xsl:text>Network Load Balancer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELClong'">
            <xsl:text>Amazon ElastiCache</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELC'">
            <xsl:text>ElastiCache</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELCRlong'">
            <xsl:text>Amazon ElastiCache for Redis</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELCR'">
            <xsl:text>ElastiCache for Redis</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELCMlong'">
            <xsl:text>Amazon ElastiCache for Memcached</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELCM'">
            <xsl:text>ElastiCache for Memcached</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ESlong'">
            <xsl:text>Amazon OpenSearch Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ES'">
            <xsl:text>OpenSearch Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECFlong'">
            <xsl:text>AWS Elemental Conductor File</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECF'">
            <xsl:text>Conductor File</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECL3long'">
            <xsl:text>AWS Elemental Conductor Live</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECL3'">
            <xsl:text>Conductor Live</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ECLDlong'">
            <xsl:text>AWS Elemental Cloud</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECLD'">
            <xsl:text>AWS Elemental Cloud</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EDLTlong'">
            <xsl:text>AWS Elemental Delta</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EDLT'">
            <xsl:text>Delta</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELNKlong'">
            <xsl:text>AWS Elemental Link</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELNK'">
            <xsl:text>AWS Elemental Link</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ELVlong'">
            <xsl:text>AWS Elemental Live</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ELV'">
            <xsl:text>Elemental Live</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMXlong'">
            <xsl:text>AWS Elemental MediaConnect</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMX'">
            <xsl:text>MediaConnect</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMClong'">
            <xsl:text>AWS Elemental MediaConvert</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMC'">
            <xsl:text>MediaConvert</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMLlong'">
            <xsl:text>AWS Elemental MediaLive</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EML'">
            <xsl:text>MediaLive</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMPlong'">
            <xsl:text>AWS Elemental MediaPackage</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMP'">
            <xsl:text>MediaPackage</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMSlong'">
            <xsl:text>AWS Elemental MediaStore</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMS'">
            <xsl:text>MediaStore</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMTlong'">
            <xsl:text>AWS Elemental MediaTailor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMT'">
            <xsl:text>MediaTailor</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ESRVRlong'">
            <xsl:text>AWS Elemental Server</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ESRVR'">
            <xsl:text>AWS Elemental Server</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ESMXlong'">
            <xsl:text>AWS Elemental Statmux</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ESMX'">
            <xsl:text>Statmux</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EMRlong'">
            <xsl:text>Amazon EMR</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMR'">
            <xsl:text>Amazon EMR</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CryptoSDKlong'">
            <xsl:text>AWS Encryption SDK</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CryptoSDK'">
            <xsl:text>AWS Encryption SDK</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ETlong'">
            <xsl:text>Amazon Elastic Transcoder</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ET'">
            <xsl:text>Elastic Transcoder</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EVlong'">
            <xsl:text>Amazon EventBridge</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EV'">
            <xsl:text>EventBridge</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FISlong'">
            <xsl:text>AWS Fault Injection Simulator</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FIS'">
            <xsl:text>AWS FIS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSlong'">
            <xsl:text>Amazon FinSpace</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FS'">
            <xsl:text>FinSpace</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FMSlong'">
            <xsl:text>AWS Firewall Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FMS'">
            <xsl:text>Firewall Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FFlong'">
            <xsl:text>AWS Flow Framework</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FF'">
            <xsl:text>the framework</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FORlong'">
            <xsl:text>Amazon Forecast</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FOR'">
            <xsl:text>Forecast</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FPSlong'">
            <xsl:text>Amazon Flexible Payments Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FPS'">
            <xsl:text>Amazon FPS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AFDlong'">
            <xsl:text>Amazon Fraud Detector</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AFD'">
            <xsl:text>Amazon Fraud Detector</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RTOSlong'">
            <xsl:text>FreeRTOS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RTOS'">
            <xsl:text>FreeRTOS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSXlong'">
            <xsl:text>Amazon FSx</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FSX'">
            <xsl:text>Amazon FSx</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSXLustrelong'">
            <xsl:text>Amazon FSx for Lustre</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FSXLustre'">
            <xsl:text>FSx for Lustre</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSxONTAPlong'">
            <xsl:text>Amazon FSx for NetApp ONTAP</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FSxONTAP'">
            <xsl:text>FSx for ONTAP</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSxOpenZFSlong'">
            <xsl:text>Amazon FSx for OpenZFS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FSxOpenZFS'">
            <xsl:text>FSx for OpenZFS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FSXWindowslong'">
            <xsl:text>Amazon FSx for Windows File Server</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FSXWindows'">
            <xsl:text>FSx for Windows File Server</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FWSlong'">
            <xsl:text>Amazon Fulfillment Web Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FWS'">
            <xsl:text>Amazon FWS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AGSlong'">
            <xsl:text>Amazon GameLift</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AGS'">
            <xsl:text>GameLift</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GLlong'">
            <xsl:text>Amazon S3 Glacier</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GL'">
            <xsl:text>S3 Glacier</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GAXlong'">
            <xsl:text>AWS Global Accelerator</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GAX'">
            <xsl:text>Global Accelerator</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GLUlong'">
            <xsl:text>AWS Glue</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLU'">
            <xsl:text>AWS Glue</xsl:text>
         </xsl:when>


         <xsl:when test="$id='dsrlong'">
            <xsl:text>AWSGlueSchemaRegistry</xsl:text>
         </xsl:when>
         <xsl:when test="$id='dsr'">
            <xsl:text>AWSGlueSchemaRegistry</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GLUDCLong'">
            <xsl:text>AWS Glue Data Catalog</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLUDC'">
            <xsl:text>Data Catalog</xsl:text>
         </xsl:when>


         <xsl:when test="$id='JESlong'">
            <xsl:text>AWS Glue Jobs system</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JES'">
            <xsl:text>Jobs system</xsl:text>
         </xsl:when>


         <xsl:when test="$id='BRUlong'">
            <xsl:text>AWS Glue DataBrew</xsl:text>
         </xsl:when>
         <xsl:when test="$id='BRU'">
            <xsl:text>DataBrew</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GGlong'">
            <xsl:text>AWS IoT Greengrass</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GG'">
            <xsl:text>AWS IoT Greengrass</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GG1long'">
            <xsl:text>AWS IoT Greengrass Version 1</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GG1'">
            <xsl:text>AWS IoT Greengrass V1</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GG2long'">
            <xsl:text>AWS IoT Greengrass Version 2</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GG2'">
            <xsl:text>AWS IoT Greengrass V2</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GRSlong'">
            <xsl:text>AWS Ground Station</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GRS'">
            <xsl:text>AWS Ground Station</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GDUlong'">
            <xsl:text>Amazon GuardDuty</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GDU'">
            <xsl:text>GuardDuty</xsl:text>
         </xsl:when>


         <xsl:when test="$id='awshealthlong'">
            <xsl:text>AWS Health</xsl:text>
         </xsl:when>
         <xsl:when test="$id='awshealth'">
            <xsl:text>AWS Health</xsl:text>
         </xsl:when>


         <xsl:when test="$id='phdlong'">
            <xsl:text>AWS Health Dashboard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='phd'">
            <xsl:text>AWS Health Dashboard</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IAMlong'">
            <xsl:text>AWS Identity and Access Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IAM'">
            <xsl:text>IAM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='iam-citadel-long'">
            <xsl:text>AWS Identity and Access Management Access Analyzer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='iam-citadel'">
            <xsl:text>IAM Access Analyzer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IBlong'">
            <xsl:text>EC2 Image Builder</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IB'">
            <xsl:text>Image Builder</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TOElong'">
            <xsl:text>AWS Task Orchestrator and Executor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TOE'">
            <xsl:text>AWSTOE</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IElong'">
            <xsl:text>AWS Import/Export</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IE'">
            <xsl:text>AWS Import/Export</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Disklong'">
            <xsl:text>AWS Import/Export Disk</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Disk'">
            <xsl:text>Disk</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Frozenlong'">
            <xsl:text>AWS Snowball</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Frozen'">
            <xsl:text>Snowball</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Signerlong'">
            <xsl:text>AWS Signer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Signer'">
            <xsl:text>Signer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SnowballEdgelong'">
            <xsl:text>AWS Snowball Edge</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SnowballEdge'">
            <xsl:text>Snowball Edge</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SNClong'">
            <xsl:text>AWS Snowcone</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SNC'">
            <xsl:text>Snowcone</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OpsHublong'">
            <xsl:text>AWS OpsHub for Snow Family</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OpsHub'">
            <xsl:text>AWS OpsHub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='INS1long'">
            <xsl:text>Amazon Inspector Classic</xsl:text>
         </xsl:when>
         <xsl:when test="$id='INS1'">
            <xsl:text>Amazon Inspector Classic</xsl:text>
         </xsl:when>


         <xsl:when test="$id='INSlong'">
            <xsl:text>Amazon Inspector</xsl:text>
         </xsl:when>
         <xsl:when test="$id='INS'">
            <xsl:text>Amazon Inspector</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTlong'">
            <xsl:text>AWS IoT</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoT'">
            <xsl:text>AWS IoT</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTAlexa'">
            <xsl:text>Alexa Voice Service (AVS) Integration for AWS IoT</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTAlexashort'">
            <xsl:text>AVS for AWS IoT</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITAlong'">
            <xsl:text>AWS IoT Analytics</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITA'">
            <xsl:text>AWS IoT Analytics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTDatalong'">
            <xsl:text>AWS IoT data</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTData'">
            <xsl:text>AWS IoT data</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITDDlong'">
            <xsl:text>AWS IoT Device Defender</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITDD'">
            <xsl:text>AWS IoT Device Defender</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITDMlong'">
            <xsl:text>AWS IoT Device Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITDM'">
            <xsl:text>AWS IoT Device Management</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTMonitorlong'">
            <xsl:text>Fleet Hub for AWS IoT Device Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTMonitor'">
            <xsl:text>Fleet Hub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITElong'">
            <xsl:text>AWS IoT Events</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITE'">
            <xsl:text>AWS IoT Events</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITEDlong'">
            <xsl:text>AWS IoT Events-Data</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITED'">
            <xsl:text>AWS IoT Events-Data</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTIdentitylong'">
            <xsl:text>AWS IoT Identity</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTIdentity'">
            <xsl:text>AWS IoT Identity</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITOClong'">
            <xsl:text>AWS IoT 1-Click</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITOC'">
            <xsl:text>AWS IoT 1-Click</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTJobsSDKreleaselong'">
            <xsl:text>AWS IoT Jobs SDK release</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTJobsSDKrelease'">
            <xsl:text>AWS IoT Jobs SDK release</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTSecureTunnellong'">
            <xsl:text>AWS IoT Secure Tunneling</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTSecureTunnel'">
            <xsl:text>AWS IoT Secure Tunneling</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITSWlong'">
            <xsl:text>AWS IoT SiteWise</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITSW'">
            <xsl:text>AWS IoT SiteWise</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITSWMlong'">
            <xsl:text>AWS IoT SiteWise Monitor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITSWM'">
            <xsl:text>SiteWise Monitor</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ITTGlong'">
            <xsl:text>AWS IoT Things Graph</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITTG'">
            <xsl:text>AWS IoT Things Graph</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IoTTMlong'">
            <xsl:text>AWS IoT TwinMaker</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTTM'">
            <xsl:text>AWS IoT TwinMaker</xsl:text>
         </xsl:when>


         <xsl:when test="$id='KENlong'">
            <xsl:text>Amazon Kendra</xsl:text>
         </xsl:when>
         <xsl:when test="$id='KEN'">
            <xsl:text>Amazon Kendra</xsl:text>
         </xsl:when>


         <xsl:when test="$id='KEYlong'">
            <xsl:text>Amazon Keyspaces (for Apache Cassandra)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='KEY'">
            <xsl:text>Amazon Keyspaces</xsl:text>
         </xsl:when>


         <xsl:when test="$id='KMSlong'">
            <xsl:text>AWS Key Management Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='KMS'">
            <xsl:text>AWS KMS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='kms-key-long'">
            <xsl:text>AWS KMS key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='kms-key'">
            <xsl:text>KMS key</xsl:text>
         </xsl:when>


         <xsl:when test="$id='kms-keys-long'">
            <xsl:text>AWS KMS keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='kms-keys'">
            <xsl:text>KMS keys</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKlong'">
            <xsl:text>Amazon Kinesis</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AK'">
            <xsl:text>Kinesis</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKAlong'">
            <xsl:text>Amazon Kinesis Data Analytics</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AKA'">
            <xsl:text>Kinesis Data Analytics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FHlong'">
            <xsl:text>Amazon Kinesis Data Firehose</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FH'">
            <xsl:text>Kinesis Data Firehose</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKFlong'">
            <xsl:text>Amazon Kinesis Data Firehose</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AKF'">
            <xsl:text>Kinesis Data Firehose</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AHLlong'">
            <xsl:text>Amazon HealthLake</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AHL'">
            <xsl:text>HealthLake</xsl:text>
         </xsl:when>


         <xsl:when test="$id='commander-long'">
            <xsl:text>AWS Systems Manager Incident Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='commander'">
            <xsl:text>Incident Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKSlong'">
            <xsl:text>Amazon Kinesis Data Streams</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AKS'">
            <xsl:text>Kinesis Data Streams</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKVSlong'">
            <xsl:text>Amazon Kinesis Video Streams</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AKVS'">
            <xsl:text>Kinesis Video Streams</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AKVS-res-long'">
            <xsl:text>Amazon Kinesis video stream</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AKVS-res'">
            <xsl:text>Kinesis video stream</xsl:text>
         </xsl:when>


         <xsl:when test="$id='IVSlong'">
            <xsl:text>Amazon Interactive Video Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IVS'">
            <xsl:text>Amazon IVS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LFlong'">
            <xsl:text>AWS Lake Formation</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LF'">
            <xsl:text>Lake Formation</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LAMlong'">
            <xsl:text>AWS Lambda</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LAM'">
            <xsl:text>Lambda</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LAMConsolelong'">
            <xsl:text>AWS Lambda console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LAMConsole'">
            <xsl:text>Lambda console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LWlong'">
            <xsl:text>AWS Launch Wizard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LW'">
            <xsl:text>Launch Wizard</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LEXMBSlong'">
            <xsl:text>Amazon Lex Model Building Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LEXMBS'">
            <xsl:text>Amazon Lex MBS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LEXlong'">
            <xsl:text>Amazon Lex</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LEX'">
            <xsl:text>Amazon Lex</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LEX2long'">
            <xsl:text>Amazon Lex</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LEX2'">
            <xsl:text>Amazon Lex</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LIClong'">
            <xsl:text>AWS License Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LIC'">
            <xsl:text>License Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LICMasterAcctSlrlong'">
            <xsl:text>AWS License Manager master account SLR</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LICMasterAcctSlr'">
            <xsl:text>License Manager master account SLR</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LICMemberAcctSlrlong'">
            <xsl:text>AWS License Manager member account SLR</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LICMemberAcctSlr'">
            <xsl:text>License Manager member account SLR</xsl:text>
         </xsl:when>


         <xsl:when test="$id='lightsaillong'">
            <xsl:text>Amazon Lightsail</xsl:text>
         </xsl:when>
         <xsl:when test="$id='lightsail'">
            <xsl:text>Lightsail</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ALlong'">
            <xsl:text>Amazon Location Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ALshort'">
            <xsl:text>Amazon Location</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ALYlong'">
            <xsl:text>Amazon Lumberyard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ALY'">
            <xsl:text>Lumberyard</xsl:text>
         </xsl:when>


         <xsl:when test="$id='HOGlong'">
            <xsl:text>Amazon Lookout for Equipment</xsl:text>
         </xsl:when>
         <xsl:when test="$id='HOG'">
            <xsl:text>Lookout for Equipment</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LFMlong'">
            <xsl:text>Amazon Lookout for Metrics</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LFM'">
            <xsl:text>Lookout for Metrics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='LYRAlong'">
            <xsl:text>Amazon Lookout for Vision</xsl:text>
         </xsl:when>
         <xsl:when test="$id='LYRA'">
            <xsl:text>Lookout for Vision</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MLlong'">
            <xsl:text>Amazon Machine Learning</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ML'">
            <xsl:text>Amazon ML</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MCElong'">
            <xsl:text>Amazon Macie</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MCE'">
            <xsl:text>Macie</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMBlong'">
            <xsl:text>Amazon Managed Blockchain</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMB'">
            <xsl:text>Managed Blockchain</xsl:text>
         </xsl:when>


         <xsl:when test="$id='GRAlong'">
            <xsl:text>Amazon Managed Grafana</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GRA'">
            <xsl:text>Amazon Managed Grafana</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PROlong'">
            <xsl:text>Amazon Managed Service for Prometheus</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PRO'">
            <xsl:text>Amazon Managed Service for Prometheus</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMSlong'">
            <xsl:text>AWS Managed Services</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMS'">
            <xsl:text>AMS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MSKlong'">
            <xsl:text>Amazon Managed Streaming for Apache Kafka</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MSK'">
            <xsl:text>Amazon MSK</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMPlong'">
            <xsl:text>AWS Management Portal for vCenter</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMP'">
            <xsl:text>management portal</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMPClong'">
            <xsl:text>AWS Connector for vCenter</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMPC'">
            <xsl:text>connector</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MKTCAPIlong'">
            <xsl:text>AWS Marketplace Catalog API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKTCAPI'">
            <xsl:text>AWS Marketplace Catalog API</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MKTCAlong'">
            <xsl:text>AWS Marketplace Commerce Analytics</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKTCA'">
            <xsl:text>AWS Marketplace Commerce Analytics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MKTESlong'">
            <xsl:text>AWS Marketplace Entitlement Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKTES'">
            <xsl:text>AWS Marketplace Entitlement Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MKTMSlong'">
            <xsl:text>AWS Marketplace Metering Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKTMS'">
            <xsl:text>AWS Marketplace Metering Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MTlong'">
            <xsl:text>Amazon Mechanical Turk</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MT'">
            <xsl:text>Mechanical Turk</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MDBlong'">
            <xsl:text>Amazon MemoryDB for Redis</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MDB'">
            <xsl:text>MemoryDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MHBlong'">
            <xsl:text>AWS Migration Hub</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MHB'">
            <xsl:text>Migration Hub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MHBRefactorlong'">
            <xsl:text>AWS Migration Hub Refactor Spaces</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MHBRefactor'">
            <xsl:text>Refactor Spaces</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MAlong'">
            <xsl:text>Amazon Mobile Analytics</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MA'">
            <xsl:text>Mobile Analytics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMHlong'">
            <xsl:text>AWS Mobile Hub</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMH'">
            <xsl:text>Mobile Hub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MMlong'">
            <xsl:text>AWS Molecular Modeling</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MM'">
            <xsl:text>Molecular Modeling</xsl:text>
         </xsl:when>


         <xsl:when test="$id='MONlong'">
            <xsl:text>Amazon Monitron</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MON'">
            <xsl:text>Amazon Monitron</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AMQlong'">
            <xsl:text>Amazon MQ</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMQ'">
            <xsl:text>Amazon MQ</xsl:text>
         </xsl:when>


         <xsl:when test="$id='neptunelong'">
            <xsl:text>Amazon Neptune</xsl:text>
         </xsl:when>
         <xsl:when test="$id='neptune'">
            <xsl:text>Neptune</xsl:text>
         </xsl:when>


         <xsl:when test="$id='nep_dbinstancelong'">
            <xsl:text>Amazon Neptune DB instance</xsl:text>
         </xsl:when>
         <xsl:when test="$id='nep_dbinstance'">
            <xsl:text>Neptune DB instance</xsl:text>
         </xsl:when>


         <xsl:when test="$id='NWFWlong'">
            <xsl:text>AWS Network Firewall</xsl:text>
         </xsl:when>
         <xsl:when test="$id='NWFW'">
            <xsl:text>Network Firewall</xsl:text>
         </xsl:when>


         <xsl:when test="$id='NMlong'">
            <xsl:text>Transit Gateway Network Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='NM'">
            <xsl:text>Network Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ANSlong'">
            <xsl:text>Amazon Nimble Studio</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ANS'">
            <xsl:text>Nimble Studio</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AOSlong'">
            <xsl:text>Amazon OpenSearch Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AOS'">
            <xsl:text>OpenSearch Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OPSlong'">
            <xsl:text>AWS OpsWorks</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OPS'">
            <xsl:text>AWS OpsWorks</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OPSCAlong'">
            <xsl:text>AWS OpsWorks for Chef Automate</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OPSCA'">
            <xsl:text>AWS OpsWorks for Chef Automate</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OPSPUPlong'">
            <xsl:text>AWS OpsWorks for Puppet Enterprise</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OPSPUP'">
            <xsl:text>OpsWorks for Puppet Enterprise</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OPSCMlong'">
            <xsl:text>AWS OpsWorks CM</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OPSCM'">
            <xsl:text>AWS OpsWorks CM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AOlong'">
            <xsl:text>AWS Organizations</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AO'">
            <xsl:text>Organizations</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OSGlong'">
            <xsl:text>AWSOrigamiServiceGateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OSG'">
            <xsl:text>OrigamiServiceGateway</xsl:text>
         </xsl:when>


         <xsl:when test="$id='OUTlong'">
            <xsl:text>AWS Outposts</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OUT'">
            <xsl:text>AWS Outposts</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PANlong'">
            <xsl:text>AWS Panorama</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PAN'">
            <xsl:text>AWS Panorama</xsl:text>
         </xsl:when>


         <xsl:when test="$id='parallelclusterlong'">
            <xsl:text>AWS ParallelCluster</xsl:text>
         </xsl:when>
         <xsl:when test="$id='parallelcluster'">
            <xsl:text>AWS ParallelCluster</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PMNTGatewaylong'">
            <xsl:text>AWSPaymentsGatewayService</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PMNTGateway'">
            <xsl:text>AWSPaymentsGatewayService</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PAAPIlong'">
            <xsl:text>Product Advertising API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PAAPI'">
            <xsl:text>PA-API</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APNlong'">
            <xsl:text>AWS Partner Network</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APN'">
            <xsl:text>AWS Partner</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PERSlong'">
            <xsl:text>Amazon Personalize</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PERS'">
            <xsl:text>Amazon Personalize</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PSlong'">
            <xsl:text>IAM Policy Simulator</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PS'">
            <xsl:text>Policy Simulator</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PCAlong'">
            <xsl:text>AWS Certificate Manager Private Certificate Authority</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PCA'">
            <xsl:text>ACM PCA</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PINlong'">
            <xsl:text>Amazon Pinpoint</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PIN'">
            <xsl:text>Amazon Pinpoint</xsl:text>
         </xsl:when>


         <xsl:when test="$id='POLlong'">
            <xsl:text>Amazon Polly</xsl:text>
         </xsl:when>
         <xsl:when test="$id='POL'">
            <xsl:text>Amazon Polly</xsl:text>
         </xsl:when>


         <xsl:when test="$id='EClong'">
            <xsl:text>Porting Assistant for .NET</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EC'">
            <xsl:text>Porting Assistant for .NET</xsl:text>
         </xsl:when>


         <xsl:when test="$id='APClong'">
            <xsl:text>AWS Pricing Calculator</xsl:text>
         </xsl:when>
         <xsl:when test="$id='APC'">
            <xsl:text>AWS Pricing Calculator</xsl:text>
         </xsl:when>


         <xsl:when test="$id='interface-endpoint-long'">
            <xsl:text>interface VPC endpoint</xsl:text>
         </xsl:when>
         <xsl:when test="$id='interface-endpoint'">
            <xsl:text>interface endpoint</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARWlong'">
            <xsl:text>AWS Proton</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ARW'">
            <xsl:text>AWS Proton</xsl:text>
         </xsl:when>


         <xsl:when test="$id='QLDBlong'">
            <xsl:text>Amazon QLDB</xsl:text>
         </xsl:when>
         <xsl:when test="$id='QLDB'">
            <xsl:text>QLDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='QSlong'">
            <xsl:text>Amazon QuickSight</xsl:text>
         </xsl:when>
         <xsl:when test="$id='QS'">
            <xsl:text>Amazon QuickSight</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RAMlong'">
            <xsl:text>AWS Resource Access Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RAM'">
            <xsl:text>AWS RAM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlong'">
            <xsl:text>Amazon Relational Database Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDS'">
            <xsl:text>Amazon RDS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlongMaria'">
            <xsl:text>Amazon RDS for MariaDB</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSMaria'">
            <xsl:text>RDS for MariaDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlongMSlong'">
            <xsl:text>Amazon RDS for Microsoft SQL Server</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSlongMS'">
            <xsl:text>Amazon RDS for SQL Server</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSMSlong'">
            <xsl:text>RDS for Microsoft SQL Server</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSMS'">
            <xsl:text>RDS for SQL Server</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlongMySQL'">
            <xsl:text>Amazon RDS for MySQL</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSMySQL'">
            <xsl:text>RDS for MySQL</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlongOra'">
            <xsl:text>Amazon RDS for Oracle</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSOra'">
            <xsl:text>RDS for Oracle</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RDSlongPostgres'">
            <xsl:text>Amazon RDS for PostgreSQL</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDSPostgres'">
            <xsl:text>RDS for PostgreSQL</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RAlong'">
            <xsl:text>VPC Reachability Analyzer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RA'">
            <xsl:text>Reachability Analyzer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RClong'">
            <xsl:text>Amazon Remote Configuration</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RC'">
            <xsl:text>Amazon Remote Configuration</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RSlong'">
            <xsl:text>Amazon Redshift</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RS'">
            <xsl:text>Amazon Redshift</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SPClong'">
            <xsl:text>Amazon Redshift Spectrum</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SPC'">
            <xsl:text>Redshift Spectrum</xsl:text>
         </xsl:when>


         <xsl:when test="$id='REKlong'">
            <xsl:text>Amazon Rekognition</xsl:text>
         </xsl:when>
         <xsl:when test="$id='REK'">
            <xsl:text>Amazon Rekognition</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARHlong'">
            <xsl:text>AWS Resilience Hub</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ARH'">
            <xsl:text>Resilience Hub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARGlong'">
            <xsl:text>AWS Resource Groups</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ARG'">
            <xsl:text>Resource Groups</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ARGTAPIlong'">
            <xsl:text>AWS Resource Groups Tagging API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ARGTAPI'">
            <xsl:text>Resource Groups Tagging API</xsl:text>
         </xsl:when>


         <xsl:when test="$id='RBMlong'">
            <xsl:text>AWS RoboMaker</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RBM'">
            <xsl:text>AWS RoboMaker</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53long'">
            <xsl:text>Amazon Route 53</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53'">
            <xsl:text>Route 53</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53PDPlong'">
            <xsl:text>Amazon Route 53 Public Data Plane</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53PDP'">
            <xsl:text>Route 53 Public Data Plane</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53AWSIntlong'">
            <xsl:text>Amazon Route 53 AWS Integration</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53AWSInt'">
            <xsl:text>Route 53 AWS Integration</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53PDNSVPClong'">
            <xsl:text>Amazon Route 53 Private DNS for VPCs</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53PDNSVPC'">
            <xsl:text>Route 53 Private DNS for VPCs</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53DRlong'">
            <xsl:text>Amazon Route 53 domain registration</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53DR'">
            <xsl:text>Route 53 domain registration</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53Rlong'">
            <xsl:text>Amazon Route 53 Resolver</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53R'">
            <xsl:text>Route 53 Resolver</xsl:text>
         </xsl:when>


         <xsl:when test="$id='R53ARClong'">
            <xsl:text>Amazon Route 53 Application Recovery Controller</xsl:text>
         </xsl:when>
         <xsl:when test="$id='R53ARC'">
            <xsl:text>Route 53 ARC</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SMlong'">
            <xsl:text>Amazon SageMaker</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SM'">
            <xsl:text>SageMaker</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SAIlong'">
            <xsl:text>Amazon SageMaker Ground Truth</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SAI'">
            <xsl:text>Ground Truth</xsl:text>
         </xsl:when>


         <xsl:when test="$id='a2ilong'">
            <xsl:text>Amazon Augmented AI</xsl:text>
         </xsl:when>
         <xsl:when test="$id='a2ishort'">
            <xsl:text>Amazon A2I</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SMRuntimelong'">
            <xsl:text>Amazon SageMaker</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SMRuntime'">
            <xsl:text>SageMaker</xsl:text>
         </xsl:when>


         <xsl:when test="$id='S3long'">
            <xsl:text>Amazon Simple Storage Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3'">
            <xsl:text>Amazon S3</xsl:text>
         </xsl:when>


         <xsl:when test="$id='S3onOutpostsLong'">
            <xsl:text>Amazon S3 on Outposts</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3onOutposts'">
            <xsl:text>S3 on Outposts</xsl:text>
         </xsl:when>


         <xsl:when test="$id='S3Controllong'">
            <xsl:text>Amazon S3 Control</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3Control'">
            <xsl:text>Amazon S3 Control</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSSCTlong'">
            <xsl:text>AWS Schema Conversion Tool</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSSCT'">
            <xsl:text>AWS SCT</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Androidlong'">
            <xsl:text>AWS Mobile SDK for Android</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Android'">
            <xsl:text>Mobile SDK for Android</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CPPlong'">
            <xsl:text>AWS SDK for C++</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CPP'">
            <xsl:text>SDK for C++</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Golong'">
            <xsl:text>AWS SDK for Go</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Go'">
            <xsl:text>SDK for Go</xsl:text>
         </xsl:when>


         <xsl:when test="$id='iOSlong'">
            <xsl:text>AWS Mobile SDK for iOS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='iOS'">
            <xsl:text>Mobile SDK for iOS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Javalong'">
            <xsl:text>AWS SDK for Java</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Java'">
            <xsl:text>SDK for Java</xsl:text>
         </xsl:when>


         <xsl:when test="$id='JavaV2long'">
            <xsl:text>AWS SDK for Java 2.x</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JavaV2'">
            <xsl:text>SDK for Java 2.x</xsl:text>
         </xsl:when>


         <xsl:when test="$id='JSBlong'">
            <xsl:text>AWS SDK for JavaScript</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JSB'">
            <xsl:text>SDK for JavaScript</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SDKMlong'">
            <xsl:text>AWS SDK Metrics for Enterprise Support</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SDKM'">
            <xsl:text>SDK Metrics</xsl:text>
         </xsl:when>


         <xsl:when test="$id='NETlong'">
            <xsl:text>AWS SDK for .NET</xsl:text>
         </xsl:when>
         <xsl:when test="$id='NET'">
            <xsl:text>AWS SDK for .NET</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PHPlong'">
            <xsl:text>AWS SDK for PHP</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PHP'">
            <xsl:text>SDK for PHP</xsl:text>
         </xsl:when>


         <xsl:when test="$id='PHP2long'">
            <xsl:text>AWS SDK for PHP</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PHP2'">
            <xsl:text>SDK for PHP</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Pythonlong'">
            <xsl:text>AWS SDK for Python (Boto)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Python'">
            <xsl:text>SDK for Python</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Python3long'">
            <xsl:text>AWS SDK for Python (Boto3)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Python3'">
            <xsl:text>SDK for Python (Boto3)</xsl:text>
         </xsl:when>


         <xsl:when test="$id='Rubylong'">
            <xsl:text>AWS SDK for Ruby</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Ruby'">
            <xsl:text>SDK for Ruby</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SMSlong'">
            <xsl:text>AWS Server Migration Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SMS'">
            <xsl:text>AWS SMS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ASMlong'">
            <xsl:text>AWS Secrets Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ASM'">
            <xsl:text>Secrets Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ASHlong'">
            <xsl:text>AWS Security Hub</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ASH'">
            <xsl:text>Security Hub</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SAMlong'">
            <xsl:text>AWS Serverless Application Model</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SAM'">
            <xsl:text>AWS SAM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SARlong'">
            <xsl:text>AWS Serverless Application Repository</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SAR'">
            <xsl:text>AWS Serverless Application Repository</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SAZRlong'">
            <xsl:text>Service Authorization Reference</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SAZR'">
            <xsl:text>Service Authorization Reference</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SClong'">
            <xsl:text>AWS Service Catalog</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SC'">
            <xsl:text>AWS Service Catalog</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SCARlong'">
            <xsl:text>AWS Service Catalog AppRegistry</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SCAR'">
            <xsl:text>AWS Service Catalog AppRegistry</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SQlong'">
            <xsl:text>Service Quotas</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SQ'">
            <xsl:text>Service Quotas</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SESlong'">
            <xsl:text>Amazon Simple Email Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SES'">
            <xsl:text>Amazon SES</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SFTPlong'">
            <xsl:text>AWS Transfer for SFTP</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SFTP'">
            <xsl:text>AWS SFTP</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SHDlong'">
            <xsl:text>AWS Shield</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SHD'">
            <xsl:text>Shield</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SHDSTDlong'">
            <xsl:text>AWS Shield Standard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SHDSTD'">
            <xsl:text>Shield Standard</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SHDADVlong'">
            <xsl:text>AWS Shield Advanced</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SHDADV'">
            <xsl:text>Shield Advanced</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SLKlong'">
            <xsl:text>Amazon Silk</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SLK'">
            <xsl:text>Amazon Silk</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SPlong'">
            <xsl:text>Amazon Simple Pay</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SP'">
            <xsl:text>Amazon Simple Pay</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SSOlong'">
            <xsl:text>AWS Single Sign-On</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SSO'">
            <xsl:text>AWS SSO</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SDMlong'">
            <xsl:text>AWS Snow Device Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SDM'">
            <xsl:text>Snow Device Management</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SPKlong'">
            <xsl:text>Secure Packager and Encoder Key Exchange</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SPK'">
            <xsl:text>SPEKE</xsl:text>
         </xsl:when>


         <xsl:when test="$id='sumerianlong'">
            <xsl:text>Amazon Sumerian</xsl:text>
         </xsl:when>
         <xsl:when test="$id='sumerian'">
            <xsl:text>Sumerian</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SYSlong'">
            <xsl:text>AWS Systems Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SYS'">
            <xsl:text>Systems Manager</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SSMlong'">
            <xsl:text>Amazon EC2 Systems Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SSM'">
            <xsl:text>SSM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SYSElong'">
            <xsl:text>AWS Systems Manager Explorer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SYSE'">
            <xsl:text>Systems Manager Explorer</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SDBlong'">
            <xsl:text>Amazon SimpleDB</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SDB'">
            <xsl:text>Amazon SimpleDB</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SNSlong'">
            <xsl:text>Amazon Simple Notification Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SNS'">
            <xsl:text>Amazon SNS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SQSlong'">
            <xsl:text>Amazon Simple Queue Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SQS'">
            <xsl:text>Amazon SQS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SFNlong'">
            <xsl:text>AWS Step Functions</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SFN'">
            <xsl:text>Step Functions</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SFNSElong'">
            <xsl:text>AWS Step Functions - Sync Express</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SFNSE'">
            <xsl:text>Step Functions - Sync Express</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSSGlong'">
            <xsl:text>AWS Storage Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSSG'">
            <xsl:text>Storage Gateway</xsl:text>
         </xsl:when>


         <xsl:when test="$id='STSlong'">
            <xsl:text>AWS Security Token Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='STS'">
            <xsl:text>AWS STS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SUPlong'">
            <xsl:text>AWS Support</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SUP'">
            <xsl:text>AWS Support</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SUPCtrConsolelong'">
            <xsl:text>AWS Support Center Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SUPCtrConsole'">
            <xsl:text>Support Center Console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='SWFlong'">
            <xsl:text>Amazon Simple Workflow Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SWF'">
            <xsl:text>Amazon SWF</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TEXTRACTlong'">
            <xsl:text>Amazon Textract</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TEXTRACT'">
            <xsl:text>Amazon Textract</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TIMElong'">
            <xsl:text>Amazon Timestream</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TIME'">
            <xsl:text>Timestream</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TElong'">
            <xsl:text>AWS Toolkit for Eclipse</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TE'">
            <xsl:text>Toolkit for Eclipse</xsl:text>
         </xsl:when>


         <xsl:when test="$id='JBIDEToolkitlong'">
            <xsl:text>AWS Toolkit for JetBrains</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JBIDEToolkit'">
            <xsl:text>AWS Toolkit for JetBrains</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TVSlong'">
            <xsl:text>AWS Toolkit for Visual Studio</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TVS'">
            <xsl:text>Toolkit for Visual Studio</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VSCIDElong'">
            <xsl:text>Visual Studio Code</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VSCIDE'">
            <xsl:text>VS Code</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VSCIDEToolkit'">
            <xsl:text>AWS Toolkit for Visual Studio Code</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VSCIDEToolkitshort'">
            <xsl:text>Toolkit for VS Code</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TTSlong'">
            <xsl:text>AWS Toolkit for Microsoft Azure DevOps</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TTS'">
            <xsl:text>AWS Toolkit for Azure DevOps</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TWPlong'">
            <xsl:text>AWS Tools for Windows PowerShell</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TWP'">
            <xsl:text>Tools for Windows PowerShell</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TWPALLlong'">
            <xsl:text>AWS Tools for PowerShell</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TWPALL'">
            <xsl:text>Tools for PowerShell</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TPClong'">
            <xsl:text>AWS Tools for PowerShell Core</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TPC'">
            <xsl:text>Tools for PowerShell Core</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TFlong'">
            <xsl:text>AWS Transfer Family</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TF'">
            <xsl:text>Transfer Family</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FTPlong'">
            <xsl:text>AWS Transfer for FTP</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FTP'">
            <xsl:text>AWS FTP</xsl:text>
         </xsl:when>


         <xsl:when test="$id='FTPSlong'">
            <xsl:text>AWS Transfer for FTPS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FTPS'">
            <xsl:text>AWS FTPS</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TSLlong'">
            <xsl:text>Amazon Translate</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TSL'">
            <xsl:text>Amazon Translate</xsl:text>
         </xsl:when>


         <xsl:when test="$id='TSClong'">
            <xsl:text>Amazon Transcribe</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TSC'">
            <xsl:text>Amazon Transcribe</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWS-TA-long'">
            <xsl:text>AWS Trusted Advisor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-TA'">
            <xsl:text>Trusted Advisor</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VMIElong'">
            <xsl:text>VM Import/Export</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VMIE'">
            <xsl:text>VM Import/Export</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VPClong'">
            <xsl:text>Amazon Virtual Private Cloud</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VPC'">
            <xsl:text>Amazon VPC</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VPCConsolelong'">
            <xsl:text>Amazon Virtual Private Cloud Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VPCConsole'">
            <xsl:text>Amazon VPC Console</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ipam-long'">
            <xsl:text>Amazon VPC IP Address Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ipam'">
            <xsl:text>IPAM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='AWSTGlong'">
            <xsl:text>AWS Transit Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSTG'">
            <xsl:text>Transit Gateway</xsl:text>
         </xsl:when>


         <xsl:when test="$id='CVPNlong'">
            <xsl:text>AWS Client VPN</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CVPN'">
            <xsl:text>Client VPN</xsl:text>
         </xsl:when>


         <xsl:when test="$id='S2Slong'">
            <xsl:text>AWS Site-to-Site VPN</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S2S'">
            <xsl:text>Site-to-Site VPN</xsl:text>
         </xsl:when>


         <xsl:when test="$id='VPNlong'">
            <xsl:text>AWS Virtual Private Network</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VPN'">
            <xsl:text>AWS VPN</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WAFlong'">
            <xsl:text>AWS WAF</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAF'">
            <xsl:text>AWS WAF</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WAFv2long'">
            <xsl:text>AWS WAFV2</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAFv2'">
            <xsl:text>AWS WAFV2</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WAFRegionallong'">
            <xsl:text>AWS WAF</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAFRegional'">
            <xsl:text>AWS WAF</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WAVElong'">
            <xsl:text>AWS Wavelength</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAVE'">
            <xsl:text>Wavelength</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WATlong'">
            <xsl:text>AWS Well-Architected Tool</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAT'">
            <xsl:text>AWS WA Tool</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WSPlong'">
            <xsl:text>Amazon WorkSpaces</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WSP'">
            <xsl:text>WorkSpaces</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WAMlong'">
            <xsl:text>Amazon WorkSpaces Application Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAM'">
            <xsl:text>Amazon WAM</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WLKlong'">
            <xsl:text>Amazon WorkLink</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WLK'">
            <xsl:text>Amazon WorkLink</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WMlong'">
            <xsl:text>Amazon WorkMail</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WM'">
            <xsl:text>Amazon WorkMail</xsl:text>
         </xsl:when>


         <xsl:when test="$id='WDlong'">
            <xsl:text>Amazon WorkDocs</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WD'">
            <xsl:text>Amazon WorkDocs</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ZCLlong'">
            <xsl:text>Amazon WorkDocs</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ZCL'">
            <xsl:text>Amazon WorkDocs</xsl:text>
         </xsl:when>


         <xsl:when test="$id='xraylong'">
            <xsl:text>AWS X-Ray</xsl:text>
         </xsl:when>
         <xsl:when test="$id='xray'">
            <xsl:text>X-Ray</xsl:text>
         </xsl:when>


         <xsl:when test="$id='zelkovalong'">
            <xsl:text>AWS Zelkova Service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='zelkova'">
            <xsl:text>Zelkova Service</xsl:text>
         </xsl:when>


         <xsl:when test="$id='ad-connector'">
            <xsl:text>AD Connector</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ALB'">
            <xsl:text>Application Load Balancer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ALBs'">
            <xsl:text>Application Load Balancers</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMR'">
            <xsl:text>AWS Managed Rules</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMRrg'">
            <xsl:text>AWS Managed Rules rule group</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMRrgs'">
            <xsl:text>AWS Managed Rules rule groups</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AMS-Acclong'">
            <xsl:text>AMS Accelerate</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ASMshort'">
            <xsl:text>Secrets Manager</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS'">
            <xsl:text>AWS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-always'">
            <xsl:text>AWS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWSlong'">
            <xsl:text>Amazon Web Services</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-account'">
            <xsl:text>AWS account</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-accounts'">
            <xsl:text>AWS accounts</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-Cloud'">
            <xsl:text>AWS Cloud</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-DC-Long'">
            <xsl:text>AWS Direct Connect</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-DClong'">
            <xsl:text>AWS Direct Connect</xsl:text>
         </xsl:when>
         <xsl:when test="$id='aws-managed-key'">
            <xsl:text>AWS managed key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='aws-managed-keys'">
            <xsl:text>AWS managed keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='aws-owned-key'">
            <xsl:text>AWS owned key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='aws-owned-keys'">
            <xsl:text>AWS owned keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-Region'">
            <xsl:text>AWS Region</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-Regions'">
            <xsl:text>AWS Regions</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-service'">
            <xsl:text>AWS service</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-services'">
            <xsl:text>AWS services</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-TA-Long'">
            <xsl:text>AWS Trusted Advisor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='AWS-Training'">
            <xsl:text>AWS Training</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Billinglong'">
            <xsl:text>AWS Billing</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Billing'">
            <xsl:text>Billing</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Budgetslong'">
            <xsl:text>AWS Budgets</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Bulda'">
            <xsl:text>Snowball client</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CCLong'">
            <xsl:text>AWS Config</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CDKshort'">
            <xsl:text>CDK</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CFNLong'">
            <xsl:text>AWS CloudFormation</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CFNshort'">
            <xsl:text>CloudFormation</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CFNGUARDlong'">
            <xsl:text>AWS CloudFormation Guard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CFNGUARDshort'">
            <xsl:text>Guard</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CHM_plus'">
            <xsl:text>plus license</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CHM_pro'">
            <xsl:text>pro license</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CHMPro'">
            <xsl:text>Amazon Chime Pro</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CLB'">
            <xsl:text>Classic Load Balancer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CLBs'">
            <xsl:text>Classic Load Balancers</xsl:text>
         </xsl:when>
         <xsl:when test="$id='cluster'">
            <xsl:text>cluster</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Cluster'">
            <xsl:text>Cluster</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CMG'">
            <xsl:text>AWS Cost Management</xsl:text>
         </xsl:when>
         <xsl:when test="$id='COGID'">
            <xsl:text>Amazon Cognito Identity</xsl:text>
         </xsl:when>
         <xsl:when test="$id='COGUP'">
            <xsl:text>Amazon Cognito user pools</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CryptoSDKC'">
            <xsl:text>AWS Encryption SDK for C</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CryptoSDKJava'">
            <xsl:text>AWS Encryption SDK for Java</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CryptoSDKJS'">
            <xsl:text>AWS Encryption SDK for JavaScript</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CryptoSDKPy'">
            <xsl:text>AWS Encryption SDK for Python</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CSC'">
            <xsl:text>AWS CodeStar connections</xsl:text>
         </xsl:when>
         <xsl:when test="$id='CURlong'">
            <xsl:text>AWS Cost and Usage Report</xsl:text>
         </xsl:when>
         <xsl:when test="$id='cust-key'">
            <xsl:text>customer managed key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='cust-keys'">
            <xsl:text>customer managed keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='cust-key-cap'">
            <xsl:text>Customer managed key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='cust-keys-cap'">
            <xsl:text>Customer managed keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='data-key'">
            <xsl:text>data key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='data-keys'">
            <xsl:text>data keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='data-key-cap'">
            <xsl:text>Data key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='data-keys-cap'">
            <xsl:text>Data keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DCV'">
            <xsl:text>NICE DCV</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EBSapis'">
            <xsl:text>EBS direct APIs</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EBSencrypt'">
            <xsl:text>Amazon EBS encryption</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EBSencrypt_capitalized'">
            <xsl:text>Amazon EBS Encryption</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ecr-public-gallery'">
            <xsl:text>Amazon ECR Public Gallery</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECRfirst'">
            <xsl:text>Amazon Elastic Container Registry (Amazon ECR)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ECSfirst'">
            <xsl:text>Amazon Elastic Container Service (Amazon ECS)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='EMR-EKS'">
            <xsl:text>Amazon EMR on EKS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ES-OPEN'">
            <xsl:text>OpenSearch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FARGATEfirst'">
            <xsl:text>AWS Fargate (Fargate)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FGW-S3long'">
            <xsl:text>Amazon S3 File Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FGW-S3'">
            <xsl:text>S3 File Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FGW-FSxWlong'">
            <xsl:text>Amazon FSx File Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='FGW-FSxW'">
            <xsl:text>FSx File Gateway</xsl:text>
         </xsl:when>
         <xsl:when test="$id='flex'">
            <xsl:text>FlexMatch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLB'">
            <xsl:text>Gateway Load Balancer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLBs'">
            <xsl:text>Gateway Load Balancers</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLshort'">
            <xsl:text>S3 Glacier</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLUAPI'">
            <xsl:text>AWS Glue API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GLverylong'">
            <xsl:text>Amazon Simple Storage Service Glacier</xsl:text>
         </xsl:when>
         <xsl:when test="$id='govcloud-us'">
            <xsl:text>AWS GovCloud (US)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='govcloud-us-region'">
            <xsl:text>AWS GovCloud (US) Region</xsl:text>
         </xsl:when>
         <xsl:when test="$id='GSG'">
            <xsl:text>Getting Started with AWS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IntellijIDE'">
            <xsl:text>IntelliJ IDE</xsl:text>
         </xsl:when>
         <xsl:when test="$id='iot-lorawan'">
            <xsl:text>AWS IoT Core for LoRaWAN</xsl:text>
         </xsl:when>
         <xsl:when test="$id='iot-wireless-api'">
            <xsl:text>AWS IoT Wireless</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTAYSDK'">
            <xsl:text>AWS IoT Device SDK for Arduino Yún</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTC'">
            <xsl:text>AWS IOT Device SDK for C</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTCEmbeddedSDK'">
            <xsl:text>AWS IoT Device SDK for Embedded C</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTCore'">
            <xsl:text>AWS IoT Core</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTCPPSDK'">
            <xsl:text>AWS IoT Device SDK for C++</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTDA'">
            <xsl:text>Device Advisor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTDAlong'">
            <xsl:text>AWS IoT Core Device Advisor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTDD'">
            <xsl:text>AWS IoT Device Defender</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTDSDK'">
            <xsl:text>AWS IoT Device SDK</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTDT'">
            <xsl:text>AWS IoT Device Tester</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTFH'">
            <xsl:text>AWS IoT Fleet Hub</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTJavaSDK'">
            <xsl:text>AWS IoT Device SDK for Java</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTJobsData'">
            <xsl:text>AWS IoT jobs data</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTJS'">
            <xsl:text>AWS IoT Device SDK for JavaScript</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTJSSDK'">
            <xsl:text>AWS IoT Device SDK for JavaScript</xsl:text>
         </xsl:when>
         <xsl:when test="$id='IoTPythonSDK'">
            <xsl:text>AWS IoT Device SDK for Python</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITE-data'">
            <xsl:text>AWS IoT Events Data</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITTG-data-model'">
            <xsl:text>AWS IoT Things Graph Data Model</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITTGconsole'">
            <xsl:text>AWS IoT Things Graph console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITTGmapdes'">
            <xsl:text>AWS IoT Things Graph mapping designer</xsl:text>
         </xsl:when>
         <xsl:when test="$id='ITTGmodel'">
            <xsl:text>AWS IoT Things Graph model editor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JBIDE'">
            <xsl:text>JetBrains</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JBIDEToolkitIntelliJ'">
            <xsl:text>AWS Toolkit for IntelliJ</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JBIDEToolkitPyCharm'">
            <xsl:text>AWS Toolkit for PyCharm</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JBToolkitMarketName'">
            <xsl:text>AWS Toolkit</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong'">
            <xsl:text>Amazon Corretto</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong8'">
            <xsl:text>Amazon Corretto 8</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong11'">
            <xsl:text>Amazon Corretto 11</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong15'">
            <xsl:text>Amazon Corretto 15</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong16'">
            <xsl:text>Amazon Corretto 16</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlong17'">
            <xsl:text>Amazon Corretto 17</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKlongpreview'">
            <xsl:text>Amazon Corretto 8</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKpreview'">
            <xsl:text>Corretto 8</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort'">
            <xsl:text>Corretto</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort8'">
            <xsl:text>Corretto 8</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort11'">
            <xsl:text>Corretto 11</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort15'">
            <xsl:text>Corretto 15</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort16'">
            <xsl:text>Corretto 16</xsl:text>
         </xsl:when>
         <xsl:when test="$id='JDKshort17'">
            <xsl:text>Corretto 17</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MGMTACCT-NoCaps'">
            <xsl:text>management account</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MGMTACCT-Caps'">
            <xsl:text>Management account</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKT'">
            <xsl:text>AWS Marketplace</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MKTlong'">
            <xsl:text>AWS Marketplace</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MMPlong'">
            <xsl:text>AWS Marketplace Management Portal</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MSExtractlong'">
            <xsl:text>AWS Microservice Extractor for .NET</xsl:text>
         </xsl:when>
         <xsl:when test="$id='MSExtract'">
            <xsl:text>Microservice Extractor</xsl:text>
         </xsl:when>
         <xsl:when test="$id='NLBs'">
            <xsl:text>Network Load Balancers</xsl:text>
         </xsl:when>
         <xsl:when test="$id='opensearch'">
            <xsl:text>OpenSearch</xsl:text>
         </xsl:when>
         <xsl:when test="$id='OPSStack'">
            <xsl:text>AWS OpsWorks Stacks</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PCAshort'">
            <xsl:text>ACM Private CA</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PClong'">
            <xsl:text>AWS Promotional Credit</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PIN-Email-API'">
            <xsl:text>Amazon Pinpoint Email API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PIN-SMS-Voice-API'">
            <xsl:text>Amazon Pinpoint SMS and Voice API</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PLlong'">
            <xsl:text>AWS Price List</xsl:text>
         </xsl:when>
         <xsl:when test="$id='privatelink'">
            <xsl:text>AWS PrivateLink</xsl:text>
         </xsl:when>
         <xsl:when test="$id='PyCharmIDE'">
            <xsl:text>PyCharm IDE</xsl:text>
         </xsl:when>
         <xsl:when test="$id='QLDBfirst'">
            <xsl:text>Amazon Quantum Ledger Database (Amazon QLDB)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='RDS-VMW'">
            <xsl:text>Amazon RDS on VMware</xsl:text>
         </xsl:when>
         <xsl:when test="$id='REKimg'">
            <xsl:text>Amazon Rekognition Image</xsl:text>
         </xsl:when>
         <xsl:when test="$id='REKvid'">
            <xsl:text>Amazon Rekognition Video</xsl:text>
         </xsl:when>
         <xsl:when test="$id='REPOST'">
            <xsl:text>AWS re:Post</xsl:text>
         </xsl:when>
         <xsl:when test="$id='root-key'">
            <xsl:text>root key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='root-keys'">
            <xsl:text>root keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='root-key-cap'">
            <xsl:text>Root key</xsl:text>
         </xsl:when>
         <xsl:when test="$id='root-keys-cap'">
            <xsl:text>Root keys</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3-storage-class-glacier'">
            <xsl:text>S3 Glacier Flexible Retrieval</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3-storage-class-glacier-ir'">
            <xsl:text>S3 Glacier Instant Retrieval</xsl:text>
         </xsl:when>
         <xsl:when test="$id='S3-storage-class-deep-archive'">
            <xsl:text>S3 Glacier Deep Archive</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SDKCodeSampCat'">
            <xsl:text>AWS Code Sample Catalog</xsl:text>
         </xsl:when>
         <xsl:when test="$id='simple-ad'">
            <xsl:text>Simple AD</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Swift'">
            <xsl:text>SDK for Swift</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Swiftlong'">
            <xsl:text>AWS SDK for Swift</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Snowball'">
            <xsl:text>Snowball</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Snowballlong'">
            <xsl:text>AWS Snowball</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Snowconsole'">
            <xsl:text>AWS Snow Family Management Console</xsl:text>
         </xsl:when>
         <xsl:when test="$id='Snowlong'">
            <xsl:text>Snowball appliance</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SnowDevices'">
            <xsl:text>Snow Family devices</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SnowDeviceslong'">
            <xsl:text>AWS Snow Family devices</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SnowFamily'">
            <xsl:text>Snow Family</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SnowFamilylong'">
            <xsl:text>AWS Snow Family</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SP-singular'">
            <xsl:text>Savings Plan</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SPs'">
            <xsl:text>Savings Plans</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SLN'">
            <xsl:text>Amazon States Language</xsl:text>
         </xsl:when>
         <xsl:when test="$id='STSshort'">
            <xsl:text>AWS STS</xsl:text>
         </xsl:when>
         <xsl:when test="$id='SvrlessAppTitle'">
            <xsl:text>AWS Serverless Application</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TFW'">
            <xsl:text>AWS Tools for Windows</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TIME-query'">
            <xsl:text>Amazon Timestream Query</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TIME-write'">
            <xsl:text>Amazon Timestream Write</xsl:text>
         </xsl:when>
         <xsl:when test="$id='TTSshort'">
            <xsl:text>Toolkit for Azure DevOps</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VS'">
            <xsl:text>Visual Studio</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VS-req-ver'">
            <xsl:text>Visual Studio 2010 or later</xsl:text>
         </xsl:when>
         <xsl:when test="$id='VSCTKMarketName'">
            <xsl:text>AWS Toolkit for Visual Studio Code</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAFclassic'">
            <xsl:text>AWS WAF Classic</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAFClassicRegional'">
            <xsl:text>AWS WAF Classic Regional</xsl:text>
         </xsl:when>
         <xsl:when test="$id='WAMfirst'">
            <xsl:text>Amazon WorkSpaces Application Manager (Amazon WAM)</xsl:text>
         </xsl:when>
         <xsl:when test="$id='xray-dotnetsdk'">
            <xsl:text>AWS X-Ray SDK for .NET</xsl:text>
         </xsl:when>
         <xsl:when test="$id='xray-javasdk'">
            <xsl:text>AWS X-Ray SDK for Java</xsl:text>
         </xsl:when>
         <xsl:when test="$id='xray-nodejssdk'">
            <xsl:text>AWS X-Ray SDK for Node.js</xsl:text>
         </xsl:when>
         <xsl:when test="$id='xray-pythonsdk'">
            <xsl:text>AWS X-Ray SDK for Python</xsl:text>
         </xsl:when>
         <xsl:when test="$id='DCA-top-secret'">
            <xsl:text/>
         </xsl:when>
         <xsl:when test="$id='LCK-secret'">
            <xsl:text/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:message terminate="yes">ERROR: The shared element id=<xsl:value-of select="$id"/> is undefined. Please check to make sure the ID is correct.</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
