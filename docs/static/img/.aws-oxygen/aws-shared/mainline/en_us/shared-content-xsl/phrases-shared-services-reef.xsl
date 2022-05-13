<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:character-map name="ascii-to-unicode">
<xsl:output-character character="&#x86;" string="&amp;#8224;"/>
<xsl:output-character character="&#x87;" string="&amp;#8225;"/>
<xsl:output-character character="&#x97;" string="&amp;#8212;"/>
<xsl:output-character character="&#x9b;" string="&amp;#8250;"/>
<xsl:output-character character=" " string="&amp;#160;"/></xsl:character-map>
<xsl:output method="xml" use-character-maps="ascii-to-unicode"/>
<!--Account Management-->
<!--AWS Account Management-->
  <xsl:template match="*[name()='shared' and @id='ACCTlong']" priority="1"><phrase api="web"><shared id="ACCTlong"/></phrase><phrase api="sdk">Account Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACCT']" priority="1">Account Management</xsl:template>
<!--**************************************-->

<!--Activate Console-->
<!--AWS Activate Console-->
  <xsl:template match="*[name()='shared' and @id='ActivateConsolelong']" priority="1"><phrase api="web"><shared id="ActivateConsolelong"/></phrase><phrase api="sdk">Activate Console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ActivateConsole']" priority="1">Activate Console</xsl:template>
<!--**************************************-->

<!--AWS Agent Service-->
<!--AWS Agent Service-->
  <xsl:template match="*[name()='shared' and @id='AGTSVClong']" priority="1"><phrase api="web"><shared id="AGTSVClong"/></phrase><phrase api="sdk">Agent Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AGTSVC']" priority="1"><phrase api="web"><shared id="AGTSVC"/></phrase><phrase api="sdk">Agent Service</phrase></xsl:template>
<!--**************************************-->

<!--Alexa for Business-->
<!--Alexa for Business-->
  <xsl:template match="*[name()='shared' and @id='ABUSlong']" priority="1">Alexa for Business</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABUS']" priority="1">Alexa for Business</xsl:template>
<!--**************************************-->

<!--Alexa Top Sites-->
<!--Alexa Top Sites-->
  <xsl:template match="*[name()='shared' and @id='ATSlong']" priority="1">Alexa Top Sites</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATS']" priority="1">Alexa Top Sites</xsl:template>
<!--**************************************-->

<!--Alexa Web Information Service-->
<!--Alexa Web Information Service-->
  <xsl:template match="*[name()='shared' and @id='AWISlong']" priority="1">Alexa Web Information Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWIS']" priority="1">Alexa Web Information Service</xsl:template>
<!--**************************************-->

<!--Amplify-->
<!--Alexa Web Information Service-->
  <xsl:template match="*[name()='shared' and @id='AMPLIFYlong']" priority="1"><phrase api="web"><shared id="AMPLIFYlong"/></phrase><phrase api="sdk">Amplify</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMPLIFY']" priority="1">Amplify</xsl:template>
<!--**************************************-->

<!--API Gateway-->
<!--Amazon API Gateway-->
  <xsl:template match="*[name()='shared' and @id='ABPlong']" priority="1">Amazon API Gateway</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABP']" priority="1">API Gateway</xsl:template>
<!--**************************************-->

<!--AWS AppConfig-->
<!--AppConfig-->
  <xsl:template match="*[name()='shared' and @id='APPClong']" priority="1"><phrase api="web"><shared id="APPClong"/></phrase><phrase api="sdk">AppConfig</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APPC']" priority="1"><phrase api="web"><shared id="APPC"/></phrase><phrase api="sdk">AppConfig</phrase></xsl:template>
<!--**************************************-->

<!--AWS AppConfig Data-->
<!--AWS AppConfig Data-->
  <xsl:template match="*[name()='shared' and @id='AppConfigDatalong']" priority="1"><phrase api="web"><shared id="AppConfigDatalong"/></phrase><phrase api="sdk">AppConfig Data</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AppConfigData']" priority="1"><phrase api="web"><shared id="AppConfigData"/></phrase><phrase api="sdk">AppConfig Data</phrase></xsl:template>
<!--**************************************-->

<!--Amazon AppFlow-->
<!--Amazon AppFlow-->
  <xsl:template match="*[name()='shared' and @id='APFLlong']" priority="1">Amazon AppFlow</xsl:template>
  <xsl:template match="*[name()='shared' and @id='APFL']" priority="1">Amazon AppFlow</xsl:template>
<!--**************************************-->

<!--Application Discovery Service-->
<!--AWS Application Discovery Service-->
  <xsl:template match="*[name()='shared' and @id='APP-DSlong']" priority="1"><phrase api="web"><shared id="APP-DSlong"/></phrase><phrase api="sdk">Application Discovery Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APP-DS']" priority="1">Application Discovery Service</xsl:template>
<!--**************************************-->

<!--Application Migration Service-->
<!--AWS Application Migration Service-->
  <xsl:template match="*[name()='shared' and @id='MGNlong']" priority="1"><phrase api="web"><shared id="MGNlong"/></phrase><phrase api="sdk">Application Migration Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGN']" priority="1">Application Migration Service</xsl:template>
<!--**************************************-->

<!--CloudWatch Application Insights-->
<!--Amazon CloudWatch Application Insights-->
  <xsl:template match="*[name()='shared' and @id='AIlong']" priority="1">Amazon CloudWatch Application Insights</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AI']" priority="1">CloudWatch Application Insights</xsl:template>
<!--**************************************-->

<!--App Mesh-->
<!--AWS App Mesh-->
  <xsl:template match="*[name()='shared' and @id='MESHlong']" priority="1"><phrase api="web"><shared id="MESHlong"/></phrase><phrase api="sdk">App Mesh</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MESH']" priority="1">App Mesh</xsl:template>
<!--**************************************-->

<!--App Runner-->
<!--App Runner-->
  <xsl:template match="*[name()='shared' and @id='ARlong']" priority="1"><phrase api="web"><shared id="ARlong"/></phrase><phrase api="sdk">App Runner</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AR']" priority="1">App Runner</xsl:template>
<!--**************************************-->

<!--AppStream 2.0-->
<!--Amazon AppStream 2.0-->
  <xsl:template match="*[name()='shared' and @id='AAS2long']" priority="1">Amazon AppStream 2.0</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AAS2']" priority="1">AppStream 2.0</xsl:template>
<!--**************************************-->

<!--Amazon AppStream-->
<!--Amazon AppStream-->
  <xsl:template match="*[name()='shared' and @id='AASlong']" priority="1">Amazon AppStream</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AAS']" priority="1">Amazon AppStream</xsl:template>
<!--**************************************-->

<!--AWS AppSync-->
<!--AWS AppSync-->
  <xsl:template match="*[name()='shared' and @id='APSYlong']" priority="1"><phrase api="web"><shared id="APSYlong"/></phrase><phrase api="sdk">AppSync</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APSY']" priority="1"><phrase api="web"><shared id="APSY"/></phrase><phrase api="sdk">AppSync</phrase></xsl:template>
<!--**************************************-->

<!--AWS Artifact-->
<!--AWS Artifact-->
  <xsl:template match="*[name()='shared' and @id='ARTlong']" priority="1"><phrase api="web"><shared id="ARTlong"/></phrase><phrase api="sdk">Artifact</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ART']" priority="1"><phrase api="web"><shared id="ART"/></phrase><phrase api="sdk">Artifact</phrase></xsl:template>
<!--**************************************-->

<!--Athena-->
<!--Amazon Athena-->
  <xsl:template match="*[name()='shared' and @id='ATElong']" priority="1">Amazon Athena</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATE']" priority="1">Athena</xsl:template>
<!--**************************************-->

<!--Audit Manager-->
<!--Audit Manager-->
  <xsl:template match="*[name()='shared' and @id='AMlong']" priority="1"><phrase api="web"><shared id="AMlong"/></phrase><phrase api="sdk">Audit Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AM']" priority="1">Audit Manager</xsl:template>
<!--**************************************-->

<!--Aurora-->
<!--Amazon Aurora-->
  <xsl:template match="*[name()='shared' and @id='AURlong']" priority="1">Amazon Aurora</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AUR']" priority="1">Aurora</xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-->
<!--Amazon Aurora PostgreSQL-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgres']" priority="1">Amazon Aurora PostgreSQL</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgres']" priority="1">Aurora PostgreSQL</xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-Compatible-->
<!--Amazon Aurora PostgreSQL-Compatible-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgresmed']" priority="1">Amazon Aurora PostgreSQL-Compatible</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgresmed']" priority="1">Aurora PostgreSQL-Compatible</xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-Compatible Edition-->
<!--Amazon Aurora PostgreSQL-Compatible Edition-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgreslong']" priority="1">Amazon Aurora PostgreSQL-Compatible Edition</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgreslong']" priority="1">Aurora PostgreSQL-Compatible Edition</xsl:template>
<!--**************************************-->

<!--Aurora MySQL-->
<!--Amazon Aurora MySQL-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQL']" priority="1">Amazon Aurora MySQL</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQL']" priority="1">Aurora MySQL</xsl:template>
<!--**************************************-->

<!--Aurora MySQL-Compatible-->
<!--Amazon Aurora MySQL-Compatible-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQLmed']" priority="1">Amazon Aurora MySQL-Compatible</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQLmed']" priority="1">Aurora MySQL-Compatible</xsl:template>
<!--**************************************-->

<!--Aurora MySQL-Compatible Edition-->
<!--Amazon Aurora MySQL-Compatible Edition-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQLlong']" priority="1">Amazon Aurora MySQL-Compatible Edition</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQLlong']" priority="1">Aurora MySQL-Compatible Edition</xsl:template>
<!--**************************************-->

<!--Auto Scaling Plans-->
<!--AWS Auto Scaling Plans-->
  <xsl:template match="*[name()='shared' and @id='AWS-ASPlanslong']" priority="1"><phrase api="web"><shared id="AWS-ASPlanslong"/></phrase><phrase api="sdk">Auto Scaling Plans</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-ASPlans']" priority="1">Auto Scaling Plans</xsl:template>
<!--**************************************-->

<!--AWS Auto Scaling-->
<!--Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='AWS-ASlong']" priority="1"><phrase api="web"><shared id="AWS-ASlong"/></phrase><phrase api="sdk">Auto Scaling</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-AS']" priority="1"><phrase api="web"><shared id="AWS-AS"/></phrase><phrase api="sdk">Auto Scaling</phrase></xsl:template>
<!--**************************************-->

<!--Application Auto Scaling-->
<!--Application Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='APP-ASlong']" priority="1">Application Auto Scaling</xsl:template>
  <xsl:template match="*[name()='shared' and @id='APP-AS']" priority="1">Application Auto Scaling</xsl:template>
<!--**************************************-->

<!--Auto Scaling-->
<!--EC2 Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='ASlong']" priority="1">Amazon EC2 Auto Scaling</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AS']" priority="1">Auto Scaling</xsl:template>
<!--**************************************-->

<!--AWS Backup-->
<!--AWS Backup-->
  <xsl:template match="*[name()='shared' and @id='BKPlong']" priority="1"><phrase api="web"><shared id="BKPlong"/></phrase><phrase api="sdk">Backup</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BKP']" priority="1"><phrase api="web"><shared id="BKP"/></phrase><phrase api="sdk">Backup</phrase></xsl:template>
<!--**************************************-->

<!--Backup gateway-->
<!--AWS Backup gateway-->
  <xsl:template match="*[name()='shared' and @id='BGWlong']" priority="1"><phrase api="web"><shared id="BGWlong"/></phrase><phrase api="sdk">Backup gateway</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BGW']" priority="1">Backup gateway</xsl:template>
<!--**************************************-->

<!--AWS Batch-->
<!--AWS Batch-->
  <xsl:template match="*[name()='shared' and @id='BATCHlong']" priority="1"><phrase api="web"><shared id="BATCHlong"/></phrase><phrase api="sdk">Batch</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BATCH']" priority="1"><phrase api="web"><shared id="BATCH"/></phrase><phrase api="sdk">Batch</phrase></xsl:template>
<!--**************************************-->

<!--Billing and Cost Management-->
<!--AWS Billing and Cost Management-->
  <xsl:template match="*[name()='shared' and @id='ABlong']" priority="1"><phrase api="web"><shared id="ABlong"/></phrase><phrase api="sdk">Billing and Cost Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AB']" priority="1">Billing and Cost Management</xsl:template>
<!--**************************************-->

<!--Billing Conductor-->
<!--AWS Billing Conductor-->
  <xsl:template match="*[name()='shared' and @id='ABClong']" priority="1"><phrase api="web"><shared id="ABClong"/></phrase><phrase api="sdk">Billing Conductor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABC']" priority="1">Billing Conductor</xsl:template>
<!--**************************************-->

<!--Cost Management Console-->
<!--AWS Cost Management Console-->
  <xsl:template match="*[name()='shared' and @id='CMConsolelong']" priority="1"><phrase api="web"><shared id="CMConsolelong"/></phrase><phrase api="sdk">Cost Management Console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMConsole']" priority="1">Cost Management Console</xsl:template>
<!--**************************************-->

<!--AWS Documentation-->
<!--AWS Documentation-->
  <xsl:template match="*[name()='shared' and @id='AWSDOCSlong']" priority="1"><phrase api="web"><shared id="AWSDOCSlong"/></phrase><phrase api="sdk">Amazon Web Services Documentation</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDOCS']" priority="1"><phrase api="web"><shared id="AWSDOCS"/></phrase><phrase api="sdk">Amazon Web Services Documentation</phrase></xsl:template>
<!--**************************************-->

<!--AWS Management Console-->
<!--AWS Management Console-->
  <xsl:template match="*[name()='shared' and @id='consolelong']" priority="1"><phrase api="web"><shared id="consolelong"/></phrase><phrase api="sdk">Amazon Web Services Management Console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='console']" priority="1"><phrase api="web"><shared id="console"/></phrase><phrase api="sdk">Amazon Web Services Management Console</phrase></xsl:template>
<!--**************************************-->

<!--AWS Console Home-->
<!--AWS Console Home-->
  <xsl:template match="*[name()='shared' and @id='consolehomelong']" priority="1"><phrase api="web"><shared id="consolehomelong"/></phrase><phrase api="sdk">Amazon Web Services Console Home</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='consolehome']" priority="1"><phrase api="web"><shared id="consolehome"/></phrase><phrase api="sdk">Amazon Web Services Console Home</phrase></xsl:template>
<!--**************************************-->

<!--AWS Marketing Website-->
<!--AWS Marketing Website-->
  <xsl:template match="*[name()='shared' and @id='MarketingSitelong']" priority="1"><phrase api="web"><shared id="MarketingSitelong"/></phrase><phrase api="sdk">Amazon Web Services Marketing Website</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MarketingSite']" priority="1"><phrase api="web"><shared id="MarketingSite"/></phrase><phrase api="sdk">Amazon Web Services Marketing Website</phrase></xsl:template>
<!--**************************************-->

<!--Cost Explorer-->
<!--Cost Explorer-->
  <xsl:template match="*[name()='shared' and @id='ce-long']" priority="1"><phrase api="web"><shared id="ce-long"/></phrase><phrase api="sdk">Cost Explorer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ce']" priority="1">Cost Explorer</xsl:template>
<!--**************************************-->

<!--Blox-->
<!--Blox-->
  <xsl:template match="*[name()='shared' and @id='BLXlong']" priority="1">Blox</xsl:template>
  <xsl:template match="*[name()='shared' and @id='BLX']" priority="1">Blox</xsl:template>
<!--**************************************-->

<!--Braket-->
<!--Amazon Braket-->
  <xsl:template match="*[name()='shared' and @id='BRAKETlong']" priority="1">Amazon Braket</xsl:template>
  <xsl:template match="*[name()='shared' and @id='BRAKET']" priority="1">Braket</xsl:template>
<!--**************************************-->

<!--AWS BugBust-->
<!--AWS BugBust-->
  <xsl:template match="*[name()='shared' and @id='ABBlong']" priority="1"><phrase api="web"><shared id="ABBlong"/></phrase><phrase api="sdk">BugBust</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABB']" priority="1"><phrase api="web"><shared id="ABB"/></phrase><phrase api="sdk">BugBust</phrase></xsl:template>
<!--**************************************-->

<!--ACM-->
<!--AWS Certificate Manager-->
  <xsl:template match="*[name()='shared' and @id='ACMlong']" priority="1"><phrase api="web"><shared id="ACMlong"/></phrase><phrase api="sdk">Certificate Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACM']" priority="1">ACM</xsl:template>
<!--**************************************-->

<!--AWS Chatbot-->
<!--Chatbot-->
  <xsl:template match="*[name()='shared' and @id='CBTlong']" priority="1"><phrase api="web"><shared id="CBTlong"/></phrase><phrase api="sdk">Chatbot</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CBT']" priority="1"><phrase api="web"><shared id="CBT"/></phrase><phrase api="sdk">Chatbot</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Chime-->
<!--Amazon Chime-->
  <xsl:template match="*[name()='shared' and @id='CHMlong']" priority="1">Amazon Chime</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM']" priority="1">Amazon Chime</xsl:template>
<!--**************************************-->

<!--AWS Cloud9-->
<!--AWS Cloud9-->
  <xsl:template match="*[name()='shared' and @id='AC9long']" priority="1"><phrase api="web"><shared id="AC9long"/></phrase><phrase api="sdk">Cloud9</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AC9']" priority="1"><phrase api="web"><shared id="AC9"/></phrase><phrase api="sdk">Cloud9</phrase></xsl:template>
<!--**************************************-->

<!--AWS CDI-->
<!--Cloud Digital Interface (CDI)-->
  <xsl:template match="*[name()='shared' and @id='CDIlong']" priority="1"><phrase api="web"><shared id="CDIlong"/></phrase><phrase api="sdk">Cloud Digital Interface</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDI']" priority="1"><phrase api="web"><shared id="CDI"/></phrase><phrase api="sdk">CDI</phrase></xsl:template>
<!--**************************************-->

<!--AWS CDK-->
<!--AWS Cloud Development Kit (CDK)-->
  <xsl:template match="*[name()='shared' and @id='CDKlong']" priority="1"><phrase api="web"><shared id="CDKlong"/></phrase><phrase api="sdk">Cloud Development Kit (CDK)</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDK']" priority="1"><phrase api="web"><shared id="CDK"/></phrase><phrase api="sdk">CDK</phrase></xsl:template>
<!--**************************************-->

<!--AWS Cloud Map-->
<!--AWS Cloud Map-->
  <xsl:template match="*[name()='shared' and @id='CMAPlong']" priority="1"><phrase api="web"><shared id="CMAPlong"/></phrase><phrase api="sdk">Cloud Map</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMAP']" priority="1"><phrase api="web"><shared id="CMAP"/></phrase><phrase api="sdk">Cloud Map</phrase></xsl:template>
<!--**************************************-->

<!--AWS CloudFormation-->
<!--CloudFormation-->
  <xsl:template match="*[name()='shared' and @id='CFNlong']" priority="1"><phrase api="web"><shared id="CFNlong"/></phrase><phrase api="sdk">CloudFormation</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFN']" priority="1"><phrase api="web"><shared id="CFN"/></phrase><phrase api="sdk">CloudFormation</phrase></xsl:template>
<!--**************************************-->

<!--CloudFront-->
<!--CloudFront-->
  <xsl:template match="*[name()='shared' and @id='CFlong']" priority="1">Amazon CloudFront</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CF']" priority="1">CloudFront</xsl:template>
<!--**************************************-->

<!--AWS CloudHSM-->
<!--CloudHSM-->
  <xsl:template match="*[name()='shared' and @id='HSMlong']" priority="1"><phrase api="web"><shared id="HSMlong"/></phrase><phrase api="sdk">CloudHSM</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='HSM']" priority="1"><phrase api="web"><shared id="HSM"/></phrase><phrase api="sdk">CloudHSM</phrase></xsl:template>
<!--**************************************-->

<!--AWS CloudHSM Classic-->
<!--AWS CloudHSM Classic-->
  <xsl:template match="*[name()='shared' and @id='HSMClassiclong']" priority="1"><phrase api="web"><shared id="HSMClassiclong"/></phrase><phrase api="sdk">CloudHSM Classic</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='HSMClassic']" priority="1"><phrase api="web"><shared id="HSMClassic"/></phrase><phrase api="sdk">CloudHSM Classic</phrase></xsl:template>
<!--**************************************-->

<!--Amazon CloudSearch-->
<!--Amazon CloudSearch-->
  <xsl:template match="*[name()='shared' and @id='CSlong']" priority="1">Amazon CloudSearch</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CS']" priority="1">Amazon CloudSearch</xsl:template>
<!--**************************************-->

<!--CloudShell-->
<!--CloudShell-->
  <xsl:template match="*[name()='shared' and @id='CShell']" priority="1"><phrase api="web"><shared id="CShell"/></phrase><phrase api="sdk">CloudShell</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CShellshort']" priority="1">CloudShell</xsl:template>
<!--**************************************-->

<!--CloudTrail-->
<!--AWS CloudTrail-->
  <xsl:template match="*[name()='shared' and @id='CTlong']" priority="1"><phrase api="web"><shared id="CTlong"/></phrase><phrase api="sdk">CloudTrail</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CT']" priority="1">CloudTrail</xsl:template>
<!--**************************************-->

<!--CloudWatch-->
<!--Amazon CloudWatch-->
  <xsl:template match="*[name()='shared' and @id='CWlong']" priority="1">Amazon CloudWatch</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CW']" priority="1">CloudWatch</xsl:template>
<!--**************************************-->

<!--CloudWatch Events-->
<!--Amazon CloudWatch Events-->
  <xsl:template match="*[name()='shared' and @id='CWElong']" priority="1">Amazon CloudWatch Events</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CWE']" priority="1">CloudWatch Events</xsl:template>
<!--**************************************-->

<!--CloudWatch Logs-->
<!--Amazon CloudWatch Logs-->
  <xsl:template match="*[name()='shared' and @id='CWLlong']" priority="1">Amazon CloudWatch Logs</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CWL']" priority="1">CloudWatch Logs</xsl:template>
<!--**************************************-->

<!--CodeArtifact-->
<!--CodeArtifact-->
  <xsl:template match="*[name()='shared' and @id='ACAlong']" priority="1"><phrase api="web"><shared id="ACAlong"/></phrase><phrase api="sdk">CodeArtifact</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACA']" priority="1">CodeArtifact</xsl:template>
<!--**************************************-->

<!--CodeBuild-->
<!--AWS CodeBuild-->
  <xsl:template match="*[name()='shared' and @id='ACBlong']" priority="1"><phrase api="web"><shared id="ACBlong"/></phrase><phrase api="sdk">CodeBuild</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACB']" priority="1">CodeBuild</xsl:template>
<!--**************************************-->

<!--CodeCommit-->
<!--AWS CodeCommit-->
  <xsl:template match="*[name()='shared' and @id='ACClong']" priority="1"><phrase api="web"><shared id="ACClong"/></phrase><phrase api="sdk">CodeCommit</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACC']" priority="1">CodeCommit</xsl:template>
<!--**************************************-->

<!--CodeDeploy-->
<!--AWS CodeDeploy-->
  <xsl:template match="*[name()='shared' and @id='ACDlong']" priority="1"><phrase api="web"><shared id="ACDlong"/></phrase><phrase api="sdk">CodeDeploy</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACD']" priority="1">CodeDeploy</xsl:template>
<!--**************************************-->

<!--CodePipeline-->
<!--AWS CodePipeline-->
  <xsl:template match="*[name()='shared' and @id='ACPlong']" priority="1"><phrase api="web"><shared id="ACPlong"/></phrase><phrase api="sdk">CodePipeline</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACP']" priority="1">CodePipeline</xsl:template>
<!--**************************************-->

<!--CodeGuru-->
<!--CodeGuru-->
  <xsl:template match="*[name()='shared' and @id='GURUALLlong']" priority="1">Amazon CodeGuru</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GURUALLshort']" priority="1">CodeGuru</xsl:template>
<!--**************************************-->

<!--CodeGuru Profiler-->
<!--CodeGuru Profiler-->
  <xsl:template match="*[name()='shared' and @id='ACPRlong']" priority="1">Amazon CodeGuru Profiler</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACPR']" priority="1">CodeGuru Profiler</xsl:template>
<!--**************************************-->

<!--CodeGuru Reviewer-->
<!--CodeGuru Reviewer-->
  <xsl:template match="*[name()='shared' and @id='ACRElong']" priority="1">Amazon CodeGuru Reviewer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACRE']" priority="1">CodeGuru Reviewer</xsl:template>
<!--**************************************-->

<!--AWS CodeStar-->
<!--AWS CodeStar-->
  <xsl:template match="*[name()='shared' and @id='ACSlong']" priority="1">AWS CodeStar</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACS']" priority="1">AWS CodeStar</xsl:template>
<!--**************************************-->

<!--Amazon Cognito-->
<!--Amazon Cognito-->
  <xsl:template match="*[name()='shared' and @id='COGlong']" priority="1">Amazon Cognito</xsl:template>
  <xsl:template match="*[name()='shared' and @id='COG']" priority="1">Amazon Cognito</xsl:template>
<!--**************************************-->

<!--Amazon Cognito Sync-->
<!--Amazon Cognito Sync-->
  <xsl:template match="*[name()='shared' and @id='COGSYNClong']" priority="1">Amazon Cognito Sync</xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGSYNC']" priority="1">Amazon Cognito Sync</xsl:template>
<!--**************************************-->

<!--AWS CLI-->
<!--Command Line Interface (CLI)-->
  <xsl:template match="*[name()='shared' and @id='CLIlong']" priority="1"><phrase api="web"><shared id="CLIlong"/></phrase><phrase api="sdk">Command Line Interface</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLI']" priority="1"><phrase api="web"><shared id="CLI"/></phrase><phrase api="sdk">CLI</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Comprehend-->
<!--Amazon Comprehend-->
  <xsl:template match="*[name()='shared' and @id='CMPlong']" priority="1">Amazon Comprehend</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMP']" priority="1">Amazon Comprehend</xsl:template>
<!--**************************************-->

<!--Amazon Comprehend Medical-->
<!--Amazon Comprehend Medical-->
  <xsl:template match="*[name()='shared' and @id='CMPMlong']" priority="1">Amazon Comprehend Medical</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMPM']" priority="1">Amazon Comprehend Medical</xsl:template>
<!--**************************************-->

<!--Compute Optimizer-->
<!--Compute Optimizer-->
  <xsl:template match="*[name()='shared' and @id='COlong']" priority="1"><phrase api="web"><shared id="COlong"/></phrase><phrase api="sdk">Compute Optimizer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CO']" priority="1">Compute Optimizer</xsl:template>
<!--**************************************-->

<!--AWS Config-->
<!--Config-->
  <xsl:template match="*[name()='shared' and @id='CClong']" priority="1"><phrase api="web"><shared id="CClong"/></phrase><phrase api="sdk">Config</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CC']" priority="1"><phrase api="web"><shared id="CC"/></phrase><phrase api="sdk">Config</phrase></xsl:template>
<!--**************************************-->

<!--Cloud Control API-->
<!--AWS Cloud Control API-->
  <xsl:template match="*[name()='shared' and @id='CCAPIlong']" priority="1"><phrase api="web"><shared id="CCAPIlong"/></phrase><phrase api="sdk">Cloud Control API</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCAPI']" priority="1">Cloud Control API</xsl:template>
<!--**************************************-->

<!--AWS Config Rules-->
<!--Config Rules-->
  <xsl:template match="*[name()='shared' and @id='CCRlong']" priority="1"><phrase api="web"><shared id="CCRlong"/></phrase><phrase api="sdk">Config Rules</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCR']" priority="1"><phrase api="web"><shared id="CCR"/></phrase><phrase api="sdk">Config Rules</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Connect-->
<!--Amazon Connect-->
  <xsl:template match="*[name()='shared' and @id='CONlong']" priority="1">Amazon Connect</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CON']" priority="1">Amazon Connect</xsl:template>
<!--**************************************-->

<!--Connector Service-->
<!--AWS Connector Service-->
  <xsl:template match="*[name()='shared' and @id='AWSConnectorServicelong']" priority="1"><phrase api="web"><shared id="AWSConnectorServicelong"/></phrase><phrase api="sdk">Connector Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSConnectorService']" priority="1">Connector Service</xsl:template>
<!--**************************************-->

<!--Console Mobile Application-->
<!--Console Mobile Application-->
  <xsl:template match="*[name()='shared' and @id='CMAlong']" priority="1"><phrase api="web"><shared id="CMAlong"/></phrase><phrase api="sdk">Console Mobile Application</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMA']" priority="1">Console Mobile Application</xsl:template>
<!--**************************************-->

<!--AWS Control Tower-->
<!--Control Tower-->
  <xsl:template match="*[name()='shared' and @id='CTowerlong']" priority="1"><phrase api="web"><shared id="CTowerlong"/></phrase><phrase api="sdk">Control Tower</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CTower']" priority="1"><phrase api="web"><shared id="CTower"/></phrase><phrase api="sdk">Control Tower</phrase></xsl:template>
<!--**************************************-->

<!--Cost Explorer Service-->
<!--AWS Cost Explorer Service-->
  <xsl:template match="*[name()='shared' and @id='AWSCostExplorerServicelong']" priority="1"><phrase api="web"><shared id="AWSCostExplorerServicelong"/></phrase><phrase api="sdk">Cost Explorer Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSCostExplorerService']" priority="1">Cost Explorer Service</xsl:template>
<!--**************************************-->

<!--Amazon Data Lifecycle Manager-->
<!--Amazon Data Lifecycle Manager-->
  <xsl:template match="*[name()='shared' and @id='DLMlong']" priority="1">Amazon Data Lifecycle Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DLM']" priority="1">Amazon Data Lifecycle Manager</xsl:template>
<!--**************************************-->

<!--AWS Data Exchange-->
<!--AWS Data Exchange-->
  <xsl:template match="*[name()='shared' and @id='ADElong']" priority="1"><phrase api="web"><shared id="ADElong"/></phrase><phrase api="sdk">Data Exchange</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ADE']" priority="1"><phrase api="web"><shared id="ADE"/></phrase><phrase api="sdk">Data Exchange</phrase></xsl:template>
<!--**************************************-->

<!--AWS Data Pipeline-->
<!--Data Pipeline-->
  <xsl:template match="*[name()='shared' and @id='AWSDPlong']" priority="1"><phrase api="web"><shared id="AWSDPlong"/></phrase><phrase api="sdk">Data Pipeline</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDP']" priority="1"><phrase api="web"><shared id="AWSDP"/></phrase><phrase api="sdk">Data Pipeline</phrase></xsl:template>
<!--**************************************-->

<!--AWS DMS-->
<!--Database Migration Service-->
  <xsl:template match="*[name()='shared' and @id='DMSlong']" priority="1"><phrase api="web"><shared id="DMSlong"/></phrase><phrase api="sdk">Database Migration Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DMS']" priority="1"><phrase api="web"><shared id="DMS"/></phrase><phrase api="sdk">DMS</phrase></xsl:template>
<!--**************************************-->

<!--DataSync-->
<!--AWS DataSync-->
  <xsl:template match="*[name()='shared' and @id='DSYlong']" priority="1"><phrase api="web"><shared id="DSYlong"/></phrase><phrase api="sdk">DataSync</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DSY']" priority="1">DataSync</xsl:template>
<!--**************************************-->

<!--DLAMI-->
<!--Deep Learning AMI-->
  <xsl:template match="*[name()='shared' and @id='dlalong']" priority="1"><phrase api="web"><shared id="dlalong"/></phrase><phrase api="sdk">Deep Learning AMI</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='dla']" priority="1">DLAMI</xsl:template>
<!--**************************************-->

<!--AWS DeepLens-->
<!--AWS DeepLens-->
  <xsl:template match="*[name()='shared' and @id='DLlong']" priority="1"><phrase api="web"><shared id="DLlong"/></phrase><phrase api="sdk">DeepLens</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DL']" priority="1"><phrase api="web"><shared id="DL"/></phrase><phrase api="sdk">DeepLens</phrase></xsl:template>
<!--**************************************-->

<!--AWS DeepRacer-->
<!--AWS DeepRacer-->
  <xsl:template match="*[name()='shared' and @id='AWSDeepRacerlong']" priority="1"><phrase api="web"><shared id="AWSDeepRacerlong"/></phrase><phrase api="sdk">DeepRacer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDeepRacer']" priority="1"><phrase api="web"><shared id="AWSDeepRacer"/></phrase><phrase api="sdk">DeepRacer</phrase></xsl:template>
<!--**************************************-->

<!--Detective-->
<!--Detective-->
  <xsl:template match="*[name()='shared' and @id='DETlong']" priority="1">Amazon Detective</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DET']" priority="1">Detective</xsl:template>
<!--**************************************-->

<!--Device Farm-->
<!--AWS Device Farm-->
  <xsl:template match="*[name()='shared' and @id='ATPlong']" priority="1"><phrase api="web"><shared id="ATPlong"/></phrase><phrase api="sdk">Device Farm</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATP']" priority="1">Device Farm</xsl:template>
<!--**************************************-->

<!--DevOps Guru-->
<!--Amazon DevOps Guru-->
  <xsl:template match="*[name()='shared' and @id='CGOlong']" priority="1">Amazon DevOps Guru</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CGO']" priority="1">DevOps Guru</xsl:template>
<!--**************************************-->

<!--Amazon DevPay-->
<!--DevPay-->
  <xsl:template match="*[name()='shared' and @id='DPlong']" priority="1">Amazon DevPay</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DP']" priority="1">Amazon DevPay</xsl:template>
<!--**************************************-->

<!--AWS Direct Connect-->
<!--AWS Direct Connect-->
  <xsl:template match="*[name()='shared' and @id='AWS-DC-long']" priority="1"><phrase api="web"><shared id="AWS-DC-long"/></phrase><phrase api="sdk">Direct Connect</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DC']" priority="1"><phrase api="web"><shared id="AWS-DC"/></phrase><phrase api="sdk">Direct Connect</phrase></xsl:template>
<!--**************************************-->

<!--AWS Directory Service-->
<!--Directory Service (Galaxy)-->
  <xsl:template match="*[name()='shared' and @id='ADSlong']" priority="1"><phrase api="web"><shared id="ADSlong"/></phrase><phrase api="sdk">Directory Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ADS']" priority="1"><phrase api="web"><shared id="ADS"/></phrase><phrase api="sdk">Directory Service</phrase></xsl:template>
<!--**************************************-->

<!--AWS Directory Service-->
<!--Directory Service (Galaxy)-->
  <xsl:template match="*[name()='shared' and @id='GXYlong']" priority="1"><phrase api="web"><shared id="GXYlong"/></phrase><phrase api="sdk">Directory Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GXY']" priority="1"><phrase api="web"><shared id="GXY"/></phrase><phrase api="sdk">Directory Service</phrase></xsl:template>
<!--**************************************-->

<!--AWS Managed Microsoft AD-->
<!--Managed Microsoft AD-->
  <xsl:template match="*[name()='shared' and @id='managed-ad-long']" priority="1"><phrase api="web"><shared id="managed-ad-long"/></phrase><phrase api="sdk">Directory Service for Microsoft Active Directory</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='managed-ad']" priority="1"><phrase api="web"><shared id="managed-ad"/></phrase><phrase api="sdk">Managed Microsoft AD</phrase></xsl:template>
<!--**************************************-->

<!--Cloud Directory-->
<!--Cloud Directory-->
  <xsl:template match="*[name()='shared' and @id='CDSlong']" priority="1">Amazon Cloud Directory</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDS']" priority="1">Cloud Directory</xsl:template>
<!--**************************************-->

<!--Amazon DocumentDB-->
<!--Amazon DocumentDB-->
  <xsl:template match="*[name()='shared' and @id='DocDBlong']" priority="1">Amazon DocumentDB (with MongoDB compatibility)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DocDB']" priority="1">Amazon DocumentDB</xsl:template>
<!--**************************************-->

<!--DynamoDB-->
<!--DynamoDB-->
  <xsl:template match="*[name()='shared' and @id='DDBlong']" priority="1">Amazon DynamoDB</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DDB']" priority="1">DynamoDB</xsl:template>
<!--**************************************-->

<!--DAX-->
<!--DynamoDB Accelerator-->
  <xsl:template match="*[name()='shared' and @id='DAXlong']" priority="1">DynamoDB Accelerator</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DAX']" priority="1">DAX</xsl:template>
<!--**************************************-->

<!--DynamoDB Encryption Client-->
<!--DynamoDB Encryption Client-->
  <xsl:template match="*[name()='shared' and @id='DDBEClong']" priority="1">Amazon DynamoDB Encryption Client</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DDBEC']" priority="1">DynamoDB Encryption Client</xsl:template>
<!--**************************************-->

<!--DynamoDB Streams-->
<!--Amazon DynamoDB Streams-->
  <xsl:template match="*[name()='shared' and @id='DSlong']" priority="1">Amazon DynamoDB Streams</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DS']" priority="1">DynamoDB Streams</xsl:template>
<!--**************************************-->

<!--Amazon EBS-->
<!--EBS-->
  <xsl:template match="*[name()='shared' and @id='EBSlong']" priority="1">Amazon Elastic Block Store</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBS']" priority="1">Amazon EBS</xsl:template>
<!--**************************************-->

<!--Amazon EC2-->
<!--EC2-->
  <xsl:template match="*[name()='shared' and @id='EC2long']" priority="1">Amazon Elastic Compute Cloud</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2']" priority="1">Amazon EC2</xsl:template>
<!--**************************************-->

<!--Amazon EC2 console-->
<!--Amazon Elastic Compute Cloud console-->
  <xsl:template match="*[name()='shared' and @id='EC2Consolelong']" priority="1">Amazon Elastic Compute Cloud console</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2Console']" priority="1">Amazon EC2 console</xsl:template>
<!--**************************************-->

<!--Amazon EC2 Dedicated Hosts-->
<!--Amazon Elastic Compute Cloud Dedicate Hosts-->
  <xsl:template match="*[name()='shared' and @id='EC2DedicatedHostslong']" priority="1"><phrase api="web"><shared id="EC2DedicatedHostslong"/></phrase><phrase api="sdk">Amazon Elastic Compute Cloud Dedicated Hosts</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2DedicatedHosts']" priority="1">Amazon EC2 Dedicated Hosts</xsl:template>
<!--**************************************-->

<!--EC2Launch-->
<!--EC2Launch v2-->
  <xsl:template match="*[name()='shared' and @id='EC2LV2long']" priority="1">EC2Launch v2</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2LV2']" priority="1">EC2Launch</xsl:template>
<!--**************************************-->

<!--Amazon ECR-->
<!--Amazon Elastic Container Registry-->
  <xsl:template match="*[name()='shared' and @id='ECRlong']" priority="1">Amazon Elastic Container Registry</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECR']" priority="1">Amazon ECR</xsl:template>
<!--**************************************-->

<!--Amazon ECR Public-->
<!--Amazon Elastic Container Registry-->
  <xsl:template match="*[name()='shared' and @id='ECRPubliclong']" priority="1">Amazon Elastic Container Registry Public</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECRPublic']" priority="1">Amazon ECR Public</xsl:template>
<!--**************************************-->

<!--Amazon ECS-->
<!--Amazon Elastic Container Service-->
  <xsl:template match="*[name()='shared' and @id='ECSlong']" priority="1">Amazon Elastic Container Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECS']" priority="1">Amazon ECS</xsl:template>
<!--**************************************-->

<!--Fargate-->
<!--Fargate-->
  <xsl:template match="*[name()='shared' and @id='FARGATElong']" priority="1"><phrase api="web"><shared id="FARGATElong"/></phrase><phrase api="sdk">Fargate</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FARGATE']" priority="1">Fargate</xsl:template>
<!--**************************************-->

<!--Amazon EKS-->
<!--Amazon Elastic Kubernetes Service-->
  <xsl:template match="*[name()='shared' and @id='EKSlong']" priority="1">Amazon Elastic Kubernetes Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EKS']" priority="1">Amazon EKS</xsl:template>
<!--**************************************-->

<!--Elastic Beanstalk-->
<!--AWS Elastic Beanstalk-->
  <xsl:template match="*[name()='shared' and @id='AEBlong']" priority="1"><phrase api="web"><shared id="AEBlong"/></phrase><phrase api="sdk">Elastic Beanstalk</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AEB']" priority="1">Elastic Beanstalk</xsl:template>
<!--**************************************-->

<!--Elastic Disaster Recovery-->
<!--AWS Elastic Disaster Recovery-->
  <xsl:template match="*[name()='shared' and @id='DRSlong']" priority="1"><phrase api="web"><shared id="DRSlong"/></phrase><phrase api="sdk">Elastic Disaster Recovery</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DRS']" priority="1">Elastic Disaster Recovery</xsl:template>
<!--**************************************-->

<!--Amazon EFS-->
<!--Amazon Elastic File System-->
  <xsl:template match="*[name()='shared' and @id='EFSlong']" priority="1">Amazon Elastic File System</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EFS']" priority="1">Amazon EFS</xsl:template>
<!--**************************************-->

<!--Elastic Inference-->
<!--Elastic Inference-->
  <xsl:template match="*[name()='shared' and @id='EIAlong']" priority="1">Amazon Elastic Inference</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EIA']" priority="1">Elastic Inference</xsl:template>
<!--**************************************-->

<!--Elastic Load Balancing-->
<!--Elastic Load Balancing-->
  <xsl:template match="*[name()='shared' and @id='ELBlong']" priority="1">Elastic Load Balancing</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELB']" priority="1">Elastic Load Balancing</xsl:template>
<!--**************************************-->

<!--Network Load Balancer-->
<!--Network Load Balancer-->
  <xsl:template match="*[name()='shared' and @id='NLBlong']" priority="1">Network Load Balancer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='NLB']" priority="1">Network Load Balancer</xsl:template>
<!--**************************************-->

<!--ElastiCache-->
<!--Amazon ElastiCache-->
  <xsl:template match="*[name()='shared' and @id='ELClong']" priority="1">Amazon ElastiCache</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELC']" priority="1">ElastiCache</xsl:template>
<!--**************************************-->

<!--ElastiCache for Redis-->
<!--ElastiCache for Redis-->
  <xsl:template match="*[name()='shared' and @id='ELCRlong']" priority="1">Amazon ElastiCache for Redis</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELCR']" priority="1">ElastiCache for Redis</xsl:template>
<!--**************************************-->

<!--ElastiCache for Memcached-->
<!--ElastiCache for Memcached-->
  <xsl:template match="*[name()='shared' and @id='ELCMlong']" priority="1">Amazon ElastiCache for Memcached</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELCM']" priority="1">ElastiCache for Memcached</xsl:template>
<!--**************************************-->

<!--OpenSearch Service-->
<!--Amazon OpenSearch Service-->
  <xsl:template match="*[name()='shared' and @id='ESlong']" priority="1">Amazon OpenSearch Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ES']" priority="1">OpenSearch Service</xsl:template>
<!--**************************************-->

<!--Conductor File-->
<!--Conductor File-->
  <xsl:template match="*[name()='shared' and @id='ECFlong']" priority="1">AWS Elemental Conductor File</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECF']" priority="1">Conductor File</xsl:template>
<!--**************************************-->

<!--Conductor Live-->
<!--Conductor-->
  <xsl:template match="*[name()='shared' and @id='ECL3long']" priority="1">AWS Elemental Conductor Live</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECL3']" priority="1">Conductor Live</xsl:template>
<!--**************************************-->

<!--AWS Elemental Cloud-->
<!--Elemental Cloud-->
  <xsl:template match="*[name()='shared' and @id='ECLDlong']" priority="1">AWS Elemental Cloud</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECLD']" priority="1">AWS Elemental Cloud</xsl:template>
<!--**************************************-->

<!--Delta-->
<!--Delta-->
  <xsl:template match="*[name()='shared' and @id='EDLTlong']" priority="1">AWS Elemental Delta</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EDLT']" priority="1">Delta</xsl:template>
<!--**************************************-->

<!--AWS Elemental Link-->
<!--Elemental Link-->
  <xsl:template match="*[name()='shared' and @id='ELNKlong']" priority="1">AWS Elemental Link</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELNK']" priority="1">AWS Elemental Link</xsl:template>
<!--**************************************-->

<!--Elemental Live-->
<!--Elemental Live-->
  <xsl:template match="*[name()='shared' and @id='ELVlong']" priority="1">AWS Elemental Live</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELV']" priority="1">Elemental Live</xsl:template>
<!--**************************************-->

<!--MediaConnect-->
<!--AWS Elemental MediaConnect-->
  <xsl:template match="*[name()='shared' and @id='EMXlong']" priority="1">AWS Elemental MediaConnect</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMX']" priority="1">MediaConnect</xsl:template>
<!--**************************************-->

<!--MediaConvert-->
<!--AWS Elemental MediaConvert-->
  <xsl:template match="*[name()='shared' and @id='EMClong']" priority="1">AWS Elemental MediaConvert</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMC']" priority="1">MediaConvert</xsl:template>
<!--**************************************-->

<!--MediaLive-->
<!--AWS Elemental MediaLive-->
  <xsl:template match="*[name()='shared' and @id='EMLlong']" priority="1">AWS Elemental MediaLive</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EML']" priority="1">MediaLive</xsl:template>
<!--**************************************-->

<!--MediaPackage-->
<!--AWS Elemental MediaPackage-->
  <xsl:template match="*[name()='shared' and @id='EMPlong']" priority="1">AWS Elemental MediaPackage</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMP']" priority="1">MediaPackage</xsl:template>
<!--**************************************-->

<!--MediaStore-->
<!--AWS Elemental MediaStore-->
  <xsl:template match="*[name()='shared' and @id='EMSlong']" priority="1">AWS Elemental MediaStore</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMS']" priority="1">MediaStore</xsl:template>
<!--**************************************-->

<!--MediaTailor-->
<!--AWS Elemental MediaTailor-->
  <xsl:template match="*[name()='shared' and @id='EMTlong']" priority="1">AWS Elemental MediaTailor</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMT']" priority="1">MediaTailor</xsl:template>
<!--**************************************-->

<!--AWS Elemental Server-->
<!--Elemental Server-->
  <xsl:template match="*[name()='shared' and @id='ESRVRlong']" priority="1">AWS Elemental Server</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ESRVR']" priority="1">AWS Elemental Server</xsl:template>
<!--**************************************-->

<!--Statmux-->
<!--Statmux-->
  <xsl:template match="*[name()='shared' and @id='ESMXlong']" priority="1">AWS Elemental Statmux</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ESMX']" priority="1">Statmux</xsl:template>
<!--**************************************-->

<!--Amazon EMR-->
<!--Amazon EMR-->
  <xsl:template match="*[name()='shared' and @id='EMRlong']" priority="1">Amazon EMR</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMR']" priority="1">Amazon EMR</xsl:template>
<!--**************************************-->

<!--AWS Encryption SDK-->
<!--Encryption SDK-->
  <xsl:template match="*[name()='shared' and @id='CryptoSDKlong']" priority="1"><phrase api="web"><shared id="CryptoSDKlong"/></phrase><phrase api="sdk">Encryption SDK</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDK']" priority="1"><phrase api="web"><shared id="CryptoSDK"/></phrase><phrase api="sdk">Encryption SDK</phrase></xsl:template>
<!--**************************************-->

<!--Elastic Transcoder-->
<!--Amazon Elastic Transcoder-->
  <xsl:template match="*[name()='shared' and @id='ETlong']" priority="1">Amazon Elastic Transcoder</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ET']" priority="1">Elastic Transcoder</xsl:template>
<!--**************************************-->

<!--EventBridge-->
<!--Amazon EventBridge-->
  <xsl:template match="*[name()='shared' and @id='EVlong']" priority="1">Amazon EventBridge</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EV']" priority="1">EventBridge</xsl:template>
<!--**************************************-->

<!--AWS FIS-->
<!--Fault Injection Simulator (FIS)-->
  <xsl:template match="*[name()='shared' and @id='FISlong']" priority="1"><phrase api="web"><shared id="FISlong"/></phrase><phrase api="sdk">Fault Injection Simulator</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FIS']" priority="1"><phrase api="web"><shared id="FIS"/></phrase><phrase api="sdk">FIS</phrase></xsl:template>
<!--**************************************-->

<!--FinSpace-->
<!--Amazon FinSpace-->
  <xsl:template match="*[name()='shared' and @id='FSlong']" priority="1"><phrase api="web"><shared id="FSlong"/></phrase><phrase api="sdk">FinSpace</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FS']" priority="1">FinSpace</xsl:template>
<!--**************************************-->

<!--Firewall Manager-->
<!--AWS Firewall Manager-->
  <xsl:template match="*[name()='shared' and @id='FMSlong']" priority="1"><phrase api="web"><shared id="FMSlong"/></phrase><phrase api="sdk">Firewall Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FMS']" priority="1">Firewall Manager</xsl:template>
<!--**************************************-->

<!--the framework-->
<!--Flow Framework (see also "SWF")-->
  <xsl:template match="*[name()='shared' and @id='FFlong']" priority="1"><phrase api="web"><shared id="FFlong"/></phrase><phrase api="sdk">Flow Framework</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FF']" priority="1">the framework</xsl:template>
<!--**************************************-->

<!--Forecast-->
<!--Forecast-->
  <xsl:template match="*[name()='shared' and @id='FORlong']" priority="1">Amazon Forecast</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FOR']" priority="1">Forecast</xsl:template>
<!--**************************************-->

<!--Amazon FPS-->
<!--Amazon FPS-->
  <xsl:template match="*[name()='shared' and @id='FPSlong']" priority="1">Amazon Flexible Payments Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FPS']" priority="1">Amazon FPS</xsl:template>
<!--**************************************-->

<!--Amazon Fraud Detector-->
<!--Amazon Fraud Detector-->
  <xsl:template match="*[name()='shared' and @id='AFDlong']" priority="1">Amazon Fraud Detector</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AFD']" priority="1">Amazon Fraud Detector</xsl:template>
<!--**************************************-->

<!--FreeRTOS-->
<!--FreeRTOS-->
  <xsl:template match="*[name()='shared' and @id='RTOSlong']" priority="1">FreeRTOS</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RTOS']" priority="1">FreeRTOS</xsl:template>
<!--**************************************-->

<!--Amazon FSx-->
<!--Amazon FSx-->
  <xsl:template match="*[name()='shared' and @id='FSXlong']" priority="1">Amazon FSx</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSX']" priority="1">Amazon FSx</xsl:template>
<!--**************************************-->

<!--FSx for Lustre-->
<!--Amazon FSx for Lustre-->
  <xsl:template match="*[name()='shared' and @id='FSXLustrelong']" priority="1">Amazon FSx for Lustre</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSXLustre']" priority="1">FSx for Lustre</xsl:template>
<!--**************************************-->

<!--FSx for ONTAP-->
<!--Amazon FSx for NetApp ONTAP-->
  <xsl:template match="*[name()='shared' and @id='FSxONTAPlong']" priority="1">Amazon FSx for NetApp ONTAP</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSxONTAP']" priority="1">FSx for ONTAP</xsl:template>
<!--**************************************-->

<!--FSx for OpenZFS-->
<!--Amazon FSx for OpenZFS-->
  <xsl:template match="*[name()='shared' and @id='FSxOpenZFSlong']" priority="1">Amazon FSx for OpenZFS</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSxOpenZFS']" priority="1">FSx for OpenZFS</xsl:template>
<!--**************************************-->

<!--FSx for Windows File Server-->
<!--Amazon FSx for Windows File Server-->
  <xsl:template match="*[name()='shared' and @id='FSXWindowslong']" priority="1">Amazon FSx for Windows File Server</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSXWindows']" priority="1">FSx for Windows File Server</xsl:template>
<!--**************************************-->

<!--Amazon FWS-->
<!--Amazon FWS-->
  <xsl:template match="*[name()='shared' and @id='FWSlong']" priority="1">Amazon Fulfillment Web Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FWS']" priority="1">Amazon FWS</xsl:template>
<!--**************************************-->

<!--GameLift-->
<!--Amazon GameLift-->
  <xsl:template match="*[name()='shared' and @id='AGSlong']" priority="1">Amazon GameLift</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AGS']" priority="1">GameLift</xsl:template>
<!--**************************************-->

<!--S3 Glacier-->
<!--Amazon S3 Glacier-->
  <xsl:template match="*[name()='shared' and @id='GLlong']" priority="1">Amazon S3 Glacier</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GL']" priority="1">S3 Glacier</xsl:template>
<!--**************************************-->

<!--Global Accelerator-->
<!--Global Accelerator-->
  <xsl:template match="*[name()='shared' and @id='GAXlong']" priority="1"><phrase api="web"><shared id="GAXlong"/></phrase><phrase api="sdk">Global Accelerator</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GAX']" priority="1">Global Accelerator</xsl:template>
<!--**************************************-->

<!--AWS Glue-->
<!--AWS Glue-->
  <xsl:template match="*[name()='shared' and @id='GLUlong']" priority="1"><phrase api="web"><shared id="GLUlong"/></phrase><phrase api="sdk">Glue</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLU']" priority="1"><phrase api="web"><shared id="GLU"/></phrase><phrase api="sdk">Glue</phrase></xsl:template>
<!--**************************************-->

<!--AWSGlueSchemaRegistry-->
<!--AWSGlueSchemaRegistry-->
  <xsl:template match="*[name()='shared' and @id='dsrlong']" priority="1"><phrase api="web"><shared id="dsrlong"/></phrase><phrase api="sdk">GlueSchemaRegistry</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='dsr']" priority="1"><phrase api="web"><shared id="dsr"/></phrase><phrase api="sdk">GlueSchemaRegistry</phrase></xsl:template>
<!--**************************************-->

<!--Data Catalog-->
<!--Glue Data Catalog-->
  <xsl:template match="*[name()='shared' and @id='GLUDCLong']" priority="1"><phrase api="web"><shared id="GLUDCLong"/></phrase><phrase api="sdk">Glue Data Catalog</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLUDC']" priority="1">Data Catalog</xsl:template>
<!--**************************************-->

<!--Jobs system-->
<!--Jobs system-->
  <xsl:template match="*[name()='shared' and @id='JESlong']" priority="1"><phrase api="web"><shared id="JESlong"/></phrase><phrase api="sdk">Glue Jobs system</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JES']" priority="1">Jobs system</xsl:template>
<!--**************************************-->

<!--DataBrew-->
<!--DataBrew-->
  <xsl:template match="*[name()='shared' and @id='BRUlong']" priority="1"><phrase api="web"><shared id="BRUlong"/></phrase><phrase api="sdk">Glue DataBrew</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BRU']" priority="1">DataBrew</xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass-->
<!--AWS IoT Greengrass-->
  <xsl:template match="*[name()='shared' and @id='GGlong']" priority="1"><phrase api="web"><shared id="GGlong"/></phrase><phrase api="sdk">IoT Greengrass</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG']" priority="1"><phrase api="web"><shared id="GG"/></phrase><phrase api="sdk">IoT Greengrass</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass V1-->
<!--AWS IoT Greengrass V1-->
  <xsl:template match="*[name()='shared' and @id='GG1long']" priority="1"><phrase api="web"><shared id="GG1long"/></phrase><phrase api="sdk">IoT Greengrass Version 1</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG1']" priority="1"><phrase api="web"><shared id="GG1"/></phrase><phrase api="sdk">IoT Greengrass V1</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass V2-->
<!--AWS IoT Greengrass V2-->
  <xsl:template match="*[name()='shared' and @id='GG2long']" priority="1"><phrase api="web"><shared id="GG2long"/></phrase><phrase api="sdk">IoT Greengrass Version 2</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG2']" priority="1"><phrase api="web"><shared id="GG2"/></phrase><phrase api="sdk">IoT Greengrass V2</phrase></xsl:template>
<!--**************************************-->

<!--AWS Ground Station-->
<!--Ground Station-->
  <xsl:template match="*[name()='shared' and @id='GRSlong']" priority="1"><phrase api="web"><shared id="GRSlong"/></phrase><phrase api="sdk">Ground Station</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GRS']" priority="1"><phrase api="web"><shared id="GRS"/></phrase><phrase api="sdk">Ground Station</phrase></xsl:template>
<!--**************************************-->

<!--GuardDuty-->
<!--Amazon GuardDuty-->
  <xsl:template match="*[name()='shared' and @id='GDUlong']" priority="1">Amazon GuardDuty</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GDU']" priority="1">GuardDuty</xsl:template>
<!--**************************************-->

<!--AWS Health-->
<!--AWS Health-->
  <xsl:template match="*[name()='shared' and @id='awshealthlong']" priority="1"><phrase api="web"><shared id="awshealthlong"/></phrase><phrase api="sdk">Health</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='awshealth']" priority="1"><phrase api="web"><shared id="awshealth"/></phrase><phrase api="sdk">Health</phrase></xsl:template>
<!--**************************************-->

<!--AWS Health Dashboard-->
<!--AWS Health Dashboard-->
  <xsl:template match="*[name()='shared' and @id='phdlong']" priority="1"><phrase api="web"><shared id="phdlong"/></phrase><phrase api="sdk">Health Dashboard</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='phd']" priority="1"><phrase api="web"><shared id="phd"/></phrase><phrase api="sdk">Health Dashboard</phrase></xsl:template>
<!--**************************************-->

<!--IAM-->
<!--AWS Identity and Access Management-->
  <xsl:template match="*[name()='shared' and @id='IAMlong']" priority="1"><phrase api="web"><shared id="IAMlong"/></phrase><phrase api="sdk">Identity and Access Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IAM']" priority="1">IAM</xsl:template>
<!--**************************************-->

<!--IAM Access Analyzer-->
<!--IAM Access Analyzer-->
  <xsl:template match="*[name()='shared' and @id='iam-citadel-long']" priority="1"><phrase api="web"><shared id="iam-citadel-long"/></phrase><phrase api="sdk">Identity and Access Management Access Analyzer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iam-citadel']" priority="1">IAM Access Analyzer</xsl:template>
<!--**************************************-->

<!--Image Builder-->
<!--Image Builder-->
  <xsl:template match="*[name()='shared' and @id='IBlong']" priority="1">EC2 Image Builder</xsl:template>
  <xsl:template match="*[name()='shared' and @id='IB']" priority="1">Image Builder</xsl:template>
<!--**************************************-->

<!--AWSTOE-->
<!--AWS TOE-->
  <xsl:template match="*[name()='shared' and @id='TOElong']" priority="1"><phrase api="web"><shared id="TOElong"/></phrase><phrase api="sdk">Task Orchestrator and Executor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TOE']" priority="1"><phrase api="web"><shared id="TOE"/></phrase><phrase api="sdk">Amazon Web Services TOE</phrase></xsl:template>
<!--**************************************-->

<!--AWS Import/Export-->
<!--Import/Export-->
  <xsl:template match="*[name()='shared' and @id='IElong']" priority="1"><phrase api="web"><shared id="IElong"/></phrase><phrase api="sdk">Import/Export</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IE']" priority="1"><phrase api="web"><shared id="IE"/></phrase><phrase api="sdk">Import/Export</phrase></xsl:template>
<!--**************************************-->

<!--Disk-->
<!--AWS Import/Export Disk-->
  <xsl:template match="*[name()='shared' and @id='Disklong']" priority="1"><phrase api="web"><shared id="Disklong"/></phrase><phrase api="sdk">Import/Export Disk</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Disk']" priority="1">Disk</xsl:template>
<!--**************************************-->

<!--Snowball-->
<!--AWS Snowball-->
  <xsl:template match="*[name()='shared' and @id='Frozenlong']" priority="1"><phrase api="web"><shared id="Frozenlong"/></phrase><phrase api="sdk">Snowball</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Frozen']" priority="1">Snowball</xsl:template>
<!--**************************************-->

<!--Signer-->
<!--Signer-->
  <xsl:template match="*[name()='shared' and @id='Signerlong']" priority="1"><phrase api="web"><shared id="Signerlong"/></phrase><phrase api="sdk">Signer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Signer']" priority="1">Signer</xsl:template>
<!--**************************************-->

<!--Snowball Edge-->
<!--AWS Snowball Edge-->
  <xsl:template match="*[name()='shared' and @id='SnowballEdgelong']" priority="1"><phrase api="web"><shared id="SnowballEdgelong"/></phrase><phrase api="sdk">Snowball Edge</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowballEdge']" priority="1">Snowball Edge</xsl:template>
<!--**************************************-->

<!--Snowcone-->
<!--Snowcone-->
  <xsl:template match="*[name()='shared' and @id='SNClong']" priority="1"><phrase api="web"><shared id="SNClong"/></phrase><phrase api="sdk">Snowcone</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SNC']" priority="1">Snowcone</xsl:template>
<!--**************************************-->

<!--AWS OpsHub-->
<!--OpsHub-->
  <xsl:template match="*[name()='shared' and @id='OpsHublong']" priority="1"><phrase api="web"><shared id="OpsHublong"/></phrase><phrase api="sdk">OpsHub for Snow Family</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OpsHub']" priority="1"><phrase api="web"><shared id="OpsHub"/></phrase><phrase api="sdk">OpsHub</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Inspector Classic-->
<!--Amazon Inspector Classic-->
  <xsl:template match="*[name()='shared' and @id='INS1long']" priority="1">Amazon Inspector Classic</xsl:template>
  <xsl:template match="*[name()='shared' and @id='INS1']" priority="1">Amazon Inspector Classic</xsl:template>
<!--**************************************-->

<!--Amazon Inspector-->
<!--Amazon Inspector-->
  <xsl:template match="*[name()='shared' and @id='INSlong']" priority="1">Amazon Inspector</xsl:template>
  <xsl:template match="*[name()='shared' and @id='INS']" priority="1">Amazon Inspector</xsl:template>
<!--**************************************-->

<!--AWS IoT-->
<!--AWS IoT-->
  <xsl:template match="*[name()='shared' and @id='IoTlong']" priority="1"><phrase api="web"><shared id="IoTlong"/></phrase><phrase api="sdk">IoT</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoT']" priority="1"><phrase api="web"><shared id="IoT"/></phrase><phrase api="sdk">IoT</phrase></xsl:template>
<!--**************************************-->

<!--AVS for AWS IoT-->
<!--AVS for IoT-->
  <xsl:template match="*[name()='shared' and @id='IoTAlexa']" priority="1"><phrase api="web"><shared id="IoTAlexa"/></phrase><phrase api="sdk">Alexa Voice Service (AVS) Integration for IoT</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTAlexashort']" priority="1"><phrase api="web"><shared id="IoTAlexashort"/></phrase><phrase api="sdk">AVS for IoT</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Analytics-->
<!--AWS IoT Analytics-->
  <xsl:template match="*[name()='shared' and @id='ITAlong']" priority="1"><phrase api="web"><shared id="ITAlong"/></phrase><phrase api="sdk">IoT Analytics</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITA']" priority="1"><phrase api="web"><shared id="ITA"/></phrase><phrase api="sdk">IoT Analytics</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT data-->
<!--Amazon IoT data-->
  <xsl:template match="*[name()='shared' and @id='IoTDatalong']" priority="1"><phrase api="web"><shared id="IoTDatalong"/></phrase><phrase api="sdk">IoT data</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTData']" priority="1"><phrase api="web"><shared id="IoTData"/></phrase><phrase api="sdk">IoT data</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Device Defender-->
<!--AWS IoT Device Defender-->
  <xsl:template match="*[name()='shared' and @id='ITDDlong']" priority="1"><phrase api="web"><shared id="ITDDlong"/></phrase><phrase api="sdk">IoT Device Defender</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITDD']" priority="1"><phrase api="web"><shared id="ITDD"/></phrase><phrase api="sdk">IoT Device Defender</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Device Management-->
<!--AWS IoT Device Management-->
  <xsl:template match="*[name()='shared' and @id='ITDMlong']" priority="1"><phrase api="web"><shared id="ITDMlong"/></phrase><phrase api="sdk">IoT Device Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITDM']" priority="1"><phrase api="web"><shared id="ITDM"/></phrase><phrase api="sdk">IoT Device Management</phrase></xsl:template>
<!--**************************************-->

<!--Fleet Hub-->
<!--Fleet Hub-->
  <xsl:template match="*[name()='shared' and @id='IoTMonitorlong']" priority="1"><phrase api="web"><shared id="IoTMonitorlong"/></phrase><phrase api="sdk">Fleet Hub for IoT Device Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTMonitor']" priority="1">Fleet Hub</xsl:template>
<!--**************************************-->

<!--AWS IoT Events-->
<!--AWS IoT Events-->
  <xsl:template match="*[name()='shared' and @id='ITElong']" priority="1"><phrase api="web"><shared id="ITElong"/></phrase><phrase api="sdk">IoT Events</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITE']" priority="1"><phrase api="web"><shared id="ITE"/></phrase><phrase api="sdk">IoT Events</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Events-Data-->
<!--AWS IoT Events-Data-->
  <xsl:template match="*[name()='shared' and @id='ITEDlong']" priority="1"><phrase api="web"><shared id="ITEDlong"/></phrase><phrase api="sdk">IoT Events-Data</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITED']" priority="1"><phrase api="web"><shared id="ITED"/></phrase><phrase api="sdk">IoT Events-Data</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Identity-->
<!--AWS IoT Identity-->
  <xsl:template match="*[name()='shared' and @id='IoTIdentitylong']" priority="1"><phrase api="web"><shared id="IoTIdentitylong"/></phrase><phrase api="sdk">IoT Identity</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTIdentity']" priority="1"><phrase api="web"><shared id="IoTIdentity"/></phrase><phrase api="sdk">IoT Identity</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT 1-Click-->
<!--AWS IoT 1-Click-->
  <xsl:template match="*[name()='shared' and @id='ITOClong']" priority="1"><phrase api="web"><shared id="ITOClong"/></phrase><phrase api="sdk">IoT 1-Click</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITOC']" priority="1"><phrase api="web"><shared id="ITOC"/></phrase><phrase api="sdk">IoT 1-Click</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Jobs SDK release-->
<!--AWS IoT Jobs SDK release-->
  <xsl:template match="*[name()='shared' and @id='IoTJobsSDKreleaselong']" priority="1"><phrase api="web"><shared id="IoTJobsSDKreleaselong"/></phrase><phrase api="sdk">IoT Jobs SDK release</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJobsSDKrelease']" priority="1"><phrase api="web"><shared id="IoTJobsSDKrelease"/></phrase><phrase api="sdk">IoT Jobs SDK release</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT Secure Tunneling-->
<!--AWS IoT Secure Tunneling-->
  <xsl:template match="*[name()='shared' and @id='IoTSecureTunnellong']" priority="1"><phrase api="web"><shared id="IoTSecureTunnellong"/></phrase><phrase api="sdk">IoT Secure Tunneling</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTSecureTunnel']" priority="1"><phrase api="web"><shared id="IoTSecureTunnel"/></phrase><phrase api="sdk">IoT Secure Tunneling</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT SiteWise-->
<!--AWS IoT SiteWise-->
  <xsl:template match="*[name()='shared' and @id='ITSWlong']" priority="1"><phrase api="web"><shared id="ITSWlong"/></phrase><phrase api="sdk">IoT SiteWise</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITSW']" priority="1"><phrase api="web"><shared id="ITSW"/></phrase><phrase api="sdk">IoT SiteWise</phrase></xsl:template>
<!--**************************************-->

<!--SiteWise Monitor-->
<!--AWS IoT SiteWise Monitor-->
  <xsl:template match="*[name()='shared' and @id='ITSWMlong']" priority="1"><phrase api="web"><shared id="ITSWMlong"/></phrase><phrase api="sdk">IoT SiteWise Monitor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITSWM']" priority="1">SiteWise Monitor</xsl:template>
<!--**************************************-->

<!--AWS IoT Things Graph-->
<!--AWS IoT Things Graph-->
  <xsl:template match="*[name()='shared' and @id='ITTGlong']" priority="1"><phrase api="web"><shared id="ITTGlong"/></phrase><phrase api="sdk">IoT Things Graph</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTG']" priority="1"><phrase api="web"><shared id="ITTG"/></phrase><phrase api="sdk">IoT Things Graph</phrase></xsl:template>
<!--**************************************-->

<!--AWS IoT TwinMaker-->
<!--AWS IoT TwinMaker-->
  <xsl:template match="*[name()='shared' and @id='IoTTMlong']" priority="1"><phrase api="web"><shared id="IoTTMlong"/></phrase><phrase api="sdk">IoT TwinMaker</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTTM']" priority="1"><phrase api="web"><shared id="IoTTM"/></phrase><phrase api="sdk">IoT TwinMaker</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Kendra-->
<!--Amazon Kendra-->
  <xsl:template match="*[name()='shared' and @id='KENlong']" priority="1">Amazon Kendra</xsl:template>
  <xsl:template match="*[name()='shared' and @id='KEN']" priority="1">Amazon Kendra</xsl:template>
<!--**************************************-->

<!--Amazon Keyspaces-->
<!--Amazon Keyspaces-->
  <xsl:template match="*[name()='shared' and @id='KEYlong']" priority="1">Amazon Keyspaces (for Apache Cassandra)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='KEY']" priority="1">Amazon Keyspaces</xsl:template>
<!--**************************************-->

<!--AWS KMS-->
<!--AWS Key Management Service-->
  <xsl:template match="*[name()='shared' and @id='KMSlong']" priority="1"><phrase api="web"><shared id="KMSlong"/></phrase><phrase api="sdk">Key Management Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='KMS']" priority="1"><phrase api="web"><shared id="KMS"/></phrase><phrase api="sdk">KMS</phrase></xsl:template>
<!--**************************************-->

<!--KMS key-->
<!--KMS key-->
  <xsl:template match="*[name()='shared' and @id='kms-key-long']" priority="1"><phrase api="web"><shared id="kms-key-long"/></phrase><phrase api="sdk">KMS key</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='kms-key']" priority="1">KMS key</xsl:template>
<!--**************************************-->

<!--KMS keys-->
<!--KMS keys-->
  <xsl:template match="*[name()='shared' and @id='kms-keys-long']" priority="1"><phrase api="web"><shared id="kms-keys-long"/></phrase><phrase api="sdk">KMS keys</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='kms-keys']" priority="1">KMS keys</xsl:template>
<!--**************************************-->

<!--Kinesis-->
<!--Kinesis-->
  <xsl:template match="*[name()='shared' and @id='AKlong']" priority="1">Amazon Kinesis</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AK']" priority="1">Kinesis</xsl:template>
<!--**************************************-->

<!--Kinesis Data Analytics-->
<!--Amazon Kinesis Data Analytics-->
  <xsl:template match="*[name()='shared' and @id='AKAlong']" priority="1">Amazon Kinesis Data Analytics</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKA']" priority="1">Kinesis Data Analytics</xsl:template>
<!--**************************************-->

<!--Kinesis Data Firehose-->
<!--Kinesis Data Firehose-->
  <xsl:template match="*[name()='shared' and @id='FHlong']" priority="1">Amazon Kinesis Data Firehose</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FH']" priority="1">Kinesis Data Firehose</xsl:template>
<!--**************************************-->

<!--Kinesis Data Firehose-->
<!--Amazon Kinesis Data Firehose-->
  <xsl:template match="*[name()='shared' and @id='AKFlong']" priority="1">Amazon Kinesis Data Firehose</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKF']" priority="1">Kinesis Data Firehose</xsl:template>
<!--**************************************-->

<!--HealthLake-->
<!--HealthLake-->
  <xsl:template match="*[name()='shared' and @id='AHLlong']" priority="1">Amazon HealthLake</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AHL']" priority="1">HealthLake</xsl:template>
<!--**************************************-->

<!--Incident Manager-->
<!--Incident Manager-->
  <xsl:template match="*[name()='shared' and @id='commander-long']" priority="1"><phrase api="web"><shared id="commander-long"/></phrase><phrase api="sdk">Systems Manager Incident Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='commander']" priority="1">Incident Manager</xsl:template>
<!--**************************************-->

<!--Kinesis Data Streams-->
<!--Amazon Kinesis Data Streams-->
  <xsl:template match="*[name()='shared' and @id='AKSlong']" priority="1">Amazon Kinesis Data Streams</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKS']" priority="1">Kinesis Data Streams</xsl:template>
<!--**************************************-->

<!--Kinesis Video Streams-->
<!--Kinesis Video Streams-->
  <xsl:template match="*[name()='shared' and @id='AKVSlong']" priority="1">Amazon Kinesis Video Streams</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKVS']" priority="1">Kinesis Video Streams</xsl:template>
<!--**************************************-->

<!--Kinesis video stream-->
<!--Kinesis video stream-->
  <xsl:template match="*[name()='shared' and @id='AKVS-res-long']" priority="1">Amazon Kinesis video stream</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKVS-res']" priority="1">Kinesis video stream</xsl:template>
<!--**************************************-->

<!--Amazon IVS-->
<!--Amazon IVS-->
  <xsl:template match="*[name()='shared' and @id='IVSlong']" priority="1">Amazon Interactive Video Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='IVS']" priority="1">Amazon IVS</xsl:template>
<!--**************************************-->

<!--Lake Formation-->
<!--Lake Formation-->
  <xsl:template match="*[name()='shared' and @id='LFlong']" priority="1"><phrase api="web"><shared id="LFlong"/></phrase><phrase api="sdk">Lake Formation</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LF']" priority="1">Lake Formation</xsl:template>
<!--**************************************-->

<!--Lambda-->
<!--AWS Lambda-->
  <xsl:template match="*[name()='shared' and @id='LAMlong']" priority="1"><phrase api="web"><shared id="LAMlong"/></phrase><phrase api="sdk">Lambda</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LAM']" priority="1">Lambda</xsl:template>
<!--**************************************-->

<!--Lambda console-->
<!--AWS Lambda console-->
  <xsl:template match="*[name()='shared' and @id='LAMConsolelong']" priority="1"><phrase api="web"><shared id="LAMConsolelong"/></phrase><phrase api="sdk">Lambda console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LAMConsole']" priority="1">Lambda console</xsl:template>
<!--**************************************-->

<!--Launch Wizard-->
<!--Launch Wizard-->
  <xsl:template match="*[name()='shared' and @id='LWlong']" priority="1"><phrase api="web"><shared id="LWlong"/></phrase><phrase api="sdk">Launch Wizard</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LW']" priority="1">Launch Wizard</xsl:template>
<!--**************************************-->

<!--Amazon Lex MBS-->
<!--Amazon Lex Model Building Service-->
  <xsl:template match="*[name()='shared' and @id='LEXMBSlong']" priority="1">Amazon Lex Model Building Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEXMBS']" priority="1">Amazon Lex MBS</xsl:template>
<!--**************************************-->

<!--Amazon Lex-->
<!--Amazon Lex-->
  <xsl:template match="*[name()='shared' and @id='LEXlong']" priority="1">Amazon Lex</xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEX']" priority="1">Amazon Lex</xsl:template>
<!--**************************************-->

<!--Amazon Lex-->
<!--Amazon Lex-->
  <xsl:template match="*[name()='shared' and @id='LEX2long']" priority="1">Amazon Lex</xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEX2']" priority="1">Amazon Lex</xsl:template>
<!--**************************************-->

<!--License Manager-->
<!--AWS License Manager-->
  <xsl:template match="*[name()='shared' and @id='LIClong']" priority="1"><phrase api="web"><shared id="LIClong"/></phrase><phrase api="sdk">License Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LIC']" priority="1">License Manager</xsl:template>
<!--**************************************-->

<!--License Manager master account SLR-->
<!--AWS License Manager master account SLR-->
  <xsl:template match="*[name()='shared' and @id='LICMasterAcctSlrlong']" priority="1"><phrase api="web"><shared id="LICMasterAcctSlrlong"/></phrase><phrase api="sdk">License Manager master account SLR</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LICMasterAcctSlr']" priority="1">License Manager master account SLR</xsl:template>
<!--**************************************-->

<!--License Manager member account SLR-->
<!--AWS License Manager member account SLR-->
  <xsl:template match="*[name()='shared' and @id='LICMemberAcctSlrlong']" priority="1"><phrase api="web"><shared id="LICMemberAcctSlrlong"/></phrase><phrase api="sdk">License Manager member account SLR</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LICMemberAcctSlr']" priority="1">License Manager member account SLR</xsl:template>
<!--**************************************-->

<!--Lightsail-->
<!--Amazon Lightsail-->
  <xsl:template match="*[name()='shared' and @id='lightsaillong']" priority="1">Amazon Lightsail</xsl:template>
  <xsl:template match="*[name()='shared' and @id='lightsail']" priority="1">Lightsail</xsl:template>
<!--**************************************-->

<!--Amazon Location-->
<!--Amazon Location-->
  <xsl:template match="*[name()='shared' and @id='ALlong']" priority="1">Amazon Location Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALshort']" priority="1">Amazon Location</xsl:template>
<!--**************************************-->

<!--Lumberyard-->
<!--Lumberyard-->
  <xsl:template match="*[name()='shared' and @id='ALYlong']" priority="1">Amazon Lumberyard</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALY']" priority="1">Lumberyard</xsl:template>
<!--**************************************-->

<!--Lookout for Equipment-->
<!--Lookout for Equipment-->
  <xsl:template match="*[name()='shared' and @id='HOGlong']" priority="1">Amazon Lookout for Equipment</xsl:template>
  <xsl:template match="*[name()='shared' and @id='HOG']" priority="1">Lookout for Equipment</xsl:template>
<!--**************************************-->

<!--Lookout for Metrics-->
<!--Lookout for Metrics-->
  <xsl:template match="*[name()='shared' and @id='LFMlong']" priority="1">Amazon Lookout for Metrics</xsl:template>
  <xsl:template match="*[name()='shared' and @id='LFM']" priority="1">Lookout for Metrics</xsl:template>
<!--**************************************-->

<!--Lookout for Vision-->
<!--Lookout for Vision-->
  <xsl:template match="*[name()='shared' and @id='LYRAlong']" priority="1">Amazon Lookout for Vision</xsl:template>
  <xsl:template match="*[name()='shared' and @id='LYRA']" priority="1">Lookout for Vision</xsl:template>
<!--**************************************-->

<!--Amazon ML-->
<!--Amazon Machine Learning-->
  <xsl:template match="*[name()='shared' and @id='MLlong']" priority="1">Amazon Machine Learning</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ML']" priority="1">Amazon ML</xsl:template>
<!--**************************************-->

<!--Macie-->
<!--Amazon Macie-->
  <xsl:template match="*[name()='shared' and @id='MCElong']" priority="1">Amazon Macie</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MCE']" priority="1">Macie</xsl:template>
<!--**************************************-->

<!--Managed Blockchain-->
<!--Managed Blockchain-->
  <xsl:template match="*[name()='shared' and @id='AMBlong']" priority="1">Amazon Managed Blockchain</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMB']" priority="1">Managed Blockchain</xsl:template>
<!--**************************************-->

<!--Amazon Managed Grafana-->
<!--AMG-->
  <xsl:template match="*[name()='shared' and @id='GRAlong']" priority="1">Amazon Managed Grafana</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GRA']" priority="1">Amazon Managed Grafana</xsl:template>
<!--**************************************-->

<!--Amazon Managed Service for Prometheus-->
<!--AMP-->
  <xsl:template match="*[name()='shared' and @id='PROlong']" priority="1">Amazon Managed Service for Prometheus</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PRO']" priority="1">Amazon Managed Service for Prometheus</xsl:template>
<!--**************************************-->

<!--AMS-->
<!--AMS-->
  <xsl:template match="*[name()='shared' and @id='AMSlong']" priority="1"><phrase api="web"><shared id="AMSlong"/></phrase><phrase api="sdk">Managed Services</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMS']" priority="1">AMS</xsl:template>
<!--**************************************-->

<!--Amazon MSK-->
<!--Amazon Managed Streaming for Apache Kafka-->
  <xsl:template match="*[name()='shared' and @id='MSKlong']" priority="1">Amazon Managed Streaming for Apache Kafka</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSK']" priority="1">Amazon MSK</xsl:template>
<!--**************************************-->

<!--management portal-->
<!--management portal-->
  <xsl:template match="*[name()='shared' and @id='AMPlong']" priority="1"><phrase api="web"><shared id="AMPlong"/></phrase><phrase api="sdk">Management Portal for vCenter</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMP']" priority="1">management portal</xsl:template>
<!--**************************************-->

<!--connector-->
<!--connector-->
  <xsl:template match="*[name()='shared' and @id='AMPClong']" priority="1"><phrase api="web"><shared id="AMPClong"/></phrase><phrase api="sdk">Connector for vCenter</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMPC']" priority="1">connector</xsl:template>
<!--**************************************-->

<!--AWS Marketplace Catalog API-->
<!--AWS Marketplace Catalog API-->
  <xsl:template match="*[name()='shared' and @id='MKTCAPIlong']" priority="1"><phrase api="web"><shared id="MKTCAPIlong"/></phrase><phrase api="sdk">Marketplace Catalog API</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTCAPI']" priority="1"><phrase api="web"><shared id="MKTCAPI"/></phrase><phrase api="sdk">Marketplace Catalog API</phrase></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Commerce Analytics-->
<!--AWS Marketplace Commerce Analytics-->
  <xsl:template match="*[name()='shared' and @id='MKTCAlong']" priority="1"><phrase api="web"><shared id="MKTCAlong"/></phrase><phrase api="sdk">Marketplace Commerce Analytics</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTCA']" priority="1"><phrase api="web"><shared id="MKTCA"/></phrase><phrase api="sdk">Marketplace Commerce Analytics</phrase></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Entitlement Service-->
<!--AWS Marketplace Entitlement Service-->
  <xsl:template match="*[name()='shared' and @id='MKTESlong']" priority="1"><phrase api="web"><shared id="MKTESlong"/></phrase><phrase api="sdk">Marketplace Entitlement Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTES']" priority="1"><phrase api="web"><shared id="MKTES"/></phrase><phrase api="sdk">Marketplace Entitlement Service</phrase></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Metering Service-->
<!--AWS Marketplace Metering Service-->
  <xsl:template match="*[name()='shared' and @id='MKTMSlong']" priority="1"><phrase api="web"><shared id="MKTMSlong"/></phrase><phrase api="sdk">Marketplace Metering Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTMS']" priority="1"><phrase api="web"><shared id="MKTMS"/></phrase><phrase api="sdk">Marketplace Metering Service</phrase></xsl:template>
<!--**************************************-->

<!--Mechanical Turk-->
<!--Amazon Mechanical Turk-->
  <xsl:template match="*[name()='shared' and @id='MTlong']" priority="1">Amazon Mechanical Turk</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MT']" priority="1">Mechanical Turk</xsl:template>
<!--**************************************-->

<!--MemoryDB-->
<!--Amazon MemoryDB for Redis-->
  <xsl:template match="*[name()='shared' and @id='MDBlong']" priority="1">Amazon MemoryDB for Redis</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MDB']" priority="1">MemoryDB</xsl:template>
<!--**************************************-->

<!--Migration Hub-->
<!--AWS Migration Hub-->
  <xsl:template match="*[name()='shared' and @id='MHBlong']" priority="1"><phrase api="web"><shared id="MHBlong"/></phrase><phrase api="sdk">Migration Hub</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MHB']" priority="1">Migration Hub</xsl:template>
<!--**************************************-->

<!--Refactor Spaces-->
<!--AWS Migration Hub Refactor Spaces-->
  <xsl:template match="*[name()='shared' and @id='MHBRefactorlong']" priority="1"><phrase api="web"><shared id="MHBRefactorlong"/></phrase><phrase api="sdk">Migration Hub Refactor Spaces</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MHBRefactor']" priority="1">Refactor Spaces</xsl:template>
<!--**************************************-->

<!--Mobile Analytics-->
<!--Amazon Mobile Analytics-->
  <xsl:template match="*[name()='shared' and @id='MAlong']" priority="1">Amazon Mobile Analytics</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MA']" priority="1">Mobile Analytics</xsl:template>
<!--**************************************-->

<!--Mobile Hub-->
<!--Mobile Hub-->
  <xsl:template match="*[name()='shared' and @id='AMHlong']" priority="1"><phrase api="web"><shared id="AMHlong"/></phrase><phrase api="sdk">Mobile Hub</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMH']" priority="1">Mobile Hub</xsl:template>
<!--**************************************-->

<!--Molecular Modeling-->
<!--Molecular Modeling-->
  <xsl:template match="*[name()='shared' and @id='MMlong']" priority="1"><phrase api="web"><shared id="MMlong"/></phrase><phrase api="sdk">Molecular Modeling</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MM']" priority="1">Molecular Modeling</xsl:template>
<!--**************************************-->

<!--Amazon Monitron-->
<!--Amazon Monitron-->
  <xsl:template match="*[name()='shared' and @id='MONlong']" priority="1">Amazon Monitron</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MON']" priority="1">Amazon Monitron</xsl:template>
<!--**************************************-->

<!--Amazon MQ-->
<!--Amazon MQ-->
  <xsl:template match="*[name()='shared' and @id='AMQlong']" priority="1">Amazon MQ</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMQ']" priority="1">Amazon MQ</xsl:template>
<!--**************************************-->

<!--Neptune-->
<!--Amazon Neptune-->
  <xsl:template match="*[name()='shared' and @id='neptunelong']" priority="1">Amazon Neptune</xsl:template>
  <xsl:template match="*[name()='shared' and @id='neptune']" priority="1">Neptune</xsl:template>
<!--**************************************-->

<!--Neptune DB instance-->
<!--Neptune DB instance-->
  <xsl:template match="*[name()='shared' and @id='nep_dbinstancelong']" priority="1">Amazon Neptune DB instance</xsl:template>
  <xsl:template match="*[name()='shared' and @id='nep_dbinstance']" priority="1">Neptune DB instance</xsl:template>
<!--**************************************-->

<!--Network Firewall-->
<!--Network Firewall-->
  <xsl:template match="*[name()='shared' and @id='NWFWlong']" priority="1"><phrase api="web"><shared id="NWFWlong"/></phrase><phrase api="sdk">Network Firewall</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NWFW']" priority="1">Network Firewall</xsl:template>
<!--**************************************-->

<!--Network Manager-->
<!--Network Manager-->
  <xsl:template match="*[name()='shared' and @id='NMlong']" priority="1">Transit Gateway Network Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='NM']" priority="1">Network Manager</xsl:template>
<!--**************************************-->

<!--Nimble Studio-->
<!--Nimble Studio-->
  <xsl:template match="*[name()='shared' and @id='ANSlong']" priority="1">Amazon Nimble Studio</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ANS']" priority="1">Nimble Studio</xsl:template>
<!--**************************************-->

<!--OpenSearch Service-->
<!--Amazon OpenSearch Service-->
  <xsl:template match="*[name()='shared' and @id='AOSlong']" priority="1">Amazon OpenSearch Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AOS']" priority="1">OpenSearch Service</xsl:template>
<!--**************************************-->

<!--AWS OpsWorks-->
<!--AWS OpsWorks-->
  <xsl:template match="*[name()='shared' and @id='OPSlong']" priority="1"><phrase api="web"><shared id="OPSlong"/></phrase><phrase api="sdk">OpsWorks</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPS']" priority="1"><phrase api="web"><shared id="OPS"/></phrase><phrase api="sdk">OpsWorks</phrase></xsl:template>
<!--**************************************-->

<!--AWS OpsWorks for Chef Automate-->
<!--OpsWorks for Chef Automate-->
  <xsl:template match="*[name()='shared' and @id='OPSCAlong']" priority="1"><phrase api="web"><shared id="OPSCAlong"/></phrase><phrase api="sdk">OpsWorks for Chef Automate</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSCA']" priority="1"><phrase api="web"><shared id="OPSCA"/></phrase><phrase api="sdk">OpsWorks for Chef Automate</phrase></xsl:template>
<!--**************************************-->

<!--OpsWorks for Puppet Enterprise-->
<!--OpsWorks for Puppet Enterprise-->
  <xsl:template match="*[name()='shared' and @id='OPSPUPlong']" priority="1"><phrase api="web"><shared id="OPSPUPlong"/></phrase><phrase api="sdk">OpsWorks for Puppet Enterprise</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSPUP']" priority="1">OpsWorks for Puppet Enterprise</xsl:template>
<!--**************************************-->

<!--AWS OpsWorks CM-->
<!--AWS OpsWorks CM-->
  <xsl:template match="*[name()='shared' and @id='OPSCMlong']" priority="1"><phrase api="web"><shared id="OPSCMlong"/></phrase><phrase api="sdk">OpsWorks CM</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSCM']" priority="1"><phrase api="web"><shared id="OPSCM"/></phrase><phrase api="sdk">OpsWorks CM</phrase></xsl:template>
<!--**************************************-->

<!--Organizations-->
<!--AWS Organizations-->
  <xsl:template match="*[name()='shared' and @id='AOlong']" priority="1"><phrase api="web"><shared id="AOlong"/></phrase><phrase api="sdk">Organizations</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AO']" priority="1">Organizations</xsl:template>
<!--**************************************-->

<!--OrigamiServiceGateway-->
<!--AWSOrigamiServiceGateway-->
  <xsl:template match="*[name()='shared' and @id='OSGlong']" priority="1"><phrase api="web"><shared id="OSGlong"/></phrase><phrase api="sdk">OrigamiServiceGateway</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OSG']" priority="1">OrigamiServiceGateway</xsl:template>
<!--**************************************-->

<!--AWS Outposts-->
<!--Outposts-->
  <xsl:template match="*[name()='shared' and @id='OUTlong']" priority="1"><phrase api="web"><shared id="OUTlong"/></phrase><phrase api="sdk">Outposts</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OUT']" priority="1"><phrase api="web"><shared id="OUT"/></phrase><phrase api="sdk">Outposts</phrase></xsl:template>
<!--**************************************-->

<!--AWS Panorama-->
<!--Panorama-->
  <xsl:template match="*[name()='shared' and @id='PANlong']" priority="1"><phrase api="web"><shared id="PANlong"/></phrase><phrase api="sdk">Panorama</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PAN']" priority="1"><phrase api="web"><shared id="PAN"/></phrase><phrase api="sdk">Panorama</phrase></xsl:template>
<!--**************************************-->

<!--AWS ParallelCluster-->
<!--ParallelCluster-->
  <xsl:template match="*[name()='shared' and @id='parallelclusterlong']" priority="1"><phrase api="web"><shared id="parallelclusterlong"/></phrase><phrase api="sdk">ParallelCluster</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='parallelcluster']" priority="1"><phrase api="web"><shared id="parallelcluster"/></phrase><phrase api="sdk">ParallelCluster</phrase></xsl:template>
<!--**************************************-->

<!--AWSPaymentsGatewayService-->
<!--AWSPaymentsGatewayService-->
  <xsl:template match="*[name()='shared' and @id='PMNTGatewaylong']" priority="1"><phrase api="web"><shared id="PMNTGatewaylong"/></phrase><phrase api="sdk">PaymentsGatewayService</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PMNTGateway']" priority="1"><phrase api="web"><shared id="PMNTGateway"/></phrase><phrase api="sdk">PaymentsGatewayService</phrase></xsl:template>
<!--**************************************-->

<!--PA-API-->
<!--PA-API-->
  <xsl:template match="*[name()='shared' and @id='PAAPIlong']" priority="1">Product Advertising API</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PAAPI']" priority="1">PA-API</xsl:template>
<!--**************************************-->

<!--AWS Partner-->
<!--Partner Network-->
  <xsl:template match="*[name()='shared' and @id='APNlong']" priority="1"><phrase api="web"><shared id="APNlong"/></phrase><phrase api="sdk">Partner Network</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APN']" priority="1"><phrase api="web"><shared id="APN"/></phrase><phrase api="sdk">Partner</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Personalize-->
<!--Amazon Personalize-->
  <xsl:template match="*[name()='shared' and @id='PERSlong']" priority="1">Amazon Personalize</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PERS']" priority="1">Amazon Personalize</xsl:template>
<!--**************************************-->

<!--Policy Simulator-->
<!--Policy Simulator-->
  <xsl:template match="*[name()='shared' and @id='PSlong']" priority="1">IAM Policy Simulator</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PS']" priority="1">Policy Simulator</xsl:template>
<!--**************************************-->

<!--ACM PCA-->
<!--AWS Certificate Manager Private Certificate Authority-->
  <xsl:template match="*[name()='shared' and @id='PCAlong']" priority="1"><phrase api="web"><shared id="PCAlong"/></phrase><phrase api="sdk">Certificate Manager Private Certificate Authority</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PCA']" priority="1">ACM PCA</xsl:template>
<!--**************************************-->

<!--Amazon Pinpoint-->
<!--Amazon Pinpoint-->
  <xsl:template match="*[name()='shared' and @id='PINlong']" priority="1">Amazon Pinpoint</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN']" priority="1">Amazon Pinpoint</xsl:template>
<!--**************************************-->

<!--Amazon Polly-->
<!--Amazon Polly-->
  <xsl:template match="*[name()='shared' and @id='POLlong']" priority="1">Amazon Polly</xsl:template>
  <xsl:template match="*[name()='shared' and @id='POL']" priority="1">Amazon Polly</xsl:template>
<!--**************************************-->

<!--Porting Assistant for .NET-->
<!--Porting Assistant for .NET-->
  <xsl:template match="*[name()='shared' and @id='EClong']" priority="1">Porting Assistant for .NET</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC']" priority="1">Porting Assistant for .NET</xsl:template>
<!--**************************************-->

<!--AWS Pricing Calculator-->
<!--Pricing Calculator-->
  <xsl:template match="*[name()='shared' and @id='APClong']" priority="1"><phrase api="web"><shared id="APClong"/></phrase><phrase api="sdk">Pricing Calculator</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APC']" priority="1"><phrase api="web"><shared id="APC"/></phrase><phrase api="sdk">Pricing Calculator</phrase></xsl:template>
<!--**************************************-->

<!--interface endpoint-->
<!--interface endpoint-->
  <xsl:template match="*[name()='shared' and @id='interface-endpoint-long']" priority="1">interface VPC endpoint</xsl:template>
  <xsl:template match="*[name()='shared' and @id='interface-endpoint']" priority="1">interface endpoint</xsl:template>
<!--**************************************-->

<!--AWS Proton-->
<!--Proton-->
  <xsl:template match="*[name()='shared' and @id='ARWlong']" priority="1"><phrase api="web"><shared id="ARWlong"/></phrase><phrase api="sdk">Proton</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARW']" priority="1"><phrase api="web"><shared id="ARW"/></phrase><phrase api="sdk">Proton</phrase></xsl:template>
<!--**************************************-->

<!--QLDB-->
<!--QLDB-->
  <xsl:template match="*[name()='shared' and @id='QLDBlong']" priority="1">Amazon QLDB</xsl:template>
  <xsl:template match="*[name()='shared' and @id='QLDB']" priority="1">QLDB</xsl:template>
<!--**************************************-->

<!--Amazon QuickSight-->
<!--Amazon QuickSight-->
  <xsl:template match="*[name()='shared' and @id='QSlong']" priority="1">Amazon QuickSight</xsl:template>
  <xsl:template match="*[name()='shared' and @id='QS']" priority="1">Amazon QuickSight</xsl:template>
<!--**************************************-->

<!--AWS RAM-->
<!--AWS Resource Access Manager-->
  <xsl:template match="*[name()='shared' and @id='RAMlong']" priority="1"><phrase api="web"><shared id="RAMlong"/></phrase><phrase api="sdk">Resource Access Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RAM']" priority="1"><phrase api="web"><shared id="RAM"/></phrase><phrase api="sdk">RAM</phrase></xsl:template>
<!--**************************************-->

<!--Amazon RDS-->
<!--Amazon Relational Database Service-->
  <xsl:template match="*[name()='shared' and @id='RDSlong']" priority="1">Amazon Relational Database Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDS']" priority="1">Amazon RDS</xsl:template>
<!--**************************************-->

<!--RDS for MariaDB-->
<!--RDS for MariaDB-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMaria']" priority="1">Amazon RDS for MariaDB</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMaria']" priority="1">RDS for MariaDB</xsl:template>
<!--**************************************-->

<!--Amazon RDS for SQL Server-->
<!--RDS for SQL Server-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMSlong']" priority="1">Amazon RDS for Microsoft SQL Server</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSlongMS']" priority="1">Amazon RDS for SQL Server</xsl:template>
<!--**************************************-->

<!--RDS for SQL Server-->
<!--RDS for SQL Server-->
  <xsl:template match="*[name()='shared' and @id='RDSMSlong']" priority="1">RDS for Microsoft SQL Server</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMS']" priority="1">RDS for SQL Server</xsl:template>
<!--**************************************-->

<!--RDS for MySQL-->
<!--RDS for MySQL-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMySQL']" priority="1">Amazon RDS for MySQL</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMySQL']" priority="1">RDS for MySQL</xsl:template>
<!--**************************************-->

<!--RDS for Oracle-->
<!--RDS for Oracle-->
  <xsl:template match="*[name()='shared' and @id='RDSlongOra']" priority="1">Amazon RDS for Oracle</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSOra']" priority="1">RDS for Oracle</xsl:template>
<!--**************************************-->

<!--RDS for PostgreSQL-->
<!--RDS for PostgreSQL-->
  <xsl:template match="*[name()='shared' and @id='RDSlongPostgres']" priority="1">Amazon RDS for PostgreSQL</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSPostgres']" priority="1">RDS for PostgreSQL</xsl:template>
<!--**************************************-->

<!--Reachability Analyzer-->
<!--Reachability Analyzer-->
  <xsl:template match="*[name()='shared' and @id='RAlong']" priority="1">VPC Reachability Analyzer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RA']" priority="1">Reachability Analyzer</xsl:template>
<!--**************************************-->

<!--Amazon Remote Configuration-->
<!--Amazon Remote Configuration-->
  <xsl:template match="*[name()='shared' and @id='RClong']" priority="1">Amazon Remote Configuration</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RC']" priority="1">Amazon Remote Configuration</xsl:template>
<!--**************************************-->

<!--Amazon Redshift-->
<!--Amazon Redshift-->
  <xsl:template match="*[name()='shared' and @id='RSlong']" priority="1">Amazon Redshift</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RS']" priority="1">Amazon Redshift</xsl:template>
<!--**************************************-->

<!--Redshift Spectrum-->
<!--Redshift Spectrum-->
  <xsl:template match="*[name()='shared' and @id='SPClong']" priority="1">Amazon Redshift Spectrum</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPC']" priority="1">Redshift Spectrum</xsl:template>
<!--**************************************-->

<!--Amazon Rekognition-->
<!--Amazon Rekognition-->
  <xsl:template match="*[name()='shared' and @id='REKlong']" priority="1">Amazon Rekognition</xsl:template>
  <xsl:template match="*[name()='shared' and @id='REK']" priority="1">Amazon Rekognition</xsl:template>
<!--**************************************-->

<!--Resilience Hub-->
<!--AWS Resilience Hub-->
  <xsl:template match="*[name()='shared' and @id='ARHlong']" priority="1"><phrase api="web"><shared id="ARHlong"/></phrase><phrase api="sdk">Resilience Hub</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARH']" priority="1">Resilience Hub</xsl:template>
<!--**************************************-->

<!--Resource Groups-->
<!--Resource Groups-->
  <xsl:template match="*[name()='shared' and @id='ARGlong']" priority="1"><phrase api="web"><shared id="ARGlong"/></phrase><phrase api="sdk">Resource Groups</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARG']" priority="1">Resource Groups</xsl:template>
<!--**************************************-->

<!--Resource Groups Tagging API-->
<!--AWS Resource Groups-->
  <xsl:template match="*[name()='shared' and @id='ARGTAPIlong']" priority="1"><phrase api="web"><shared id="ARGTAPIlong"/></phrase><phrase api="sdk">Resource Groups Tagging API</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARGTAPI']" priority="1">Resource Groups Tagging API</xsl:template>
<!--**************************************-->

<!--AWS RoboMaker-->
<!--AWS RoboMaker-->
  <xsl:template match="*[name()='shared' and @id='RBMlong']" priority="1"><phrase api="web"><shared id="RBMlong"/></phrase><phrase api="sdk">RoboMaker</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RBM']" priority="1"><phrase api="web"><shared id="RBM"/></phrase><phrase api="sdk">RoboMaker</phrase></xsl:template>
<!--**************************************-->

<!--Route 53-->
<!--Route 53-->
  <xsl:template match="*[name()='shared' and @id='R53long']" priority="1">Amazon Route 53</xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53']" priority="1">Route 53</xsl:template>
<!--**************************************-->

<!--Route 53 Public Data Plane-->
<!--Amazon Route 53 Public Data Plane-->
  <xsl:template match="*[name()='shared' and @id='R53PDPlong']" priority="1"><phrase api="web"><shared id="R53PDPlong"/></phrase><phrase api="sdk">Route 53 Public Data Plane</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53PDP']" priority="1">Route 53 Public Data Plane</xsl:template>
<!--**************************************-->

<!--Route 53 AWS Integration-->
<!--Amazon Route 53 AWS Integration-->
  <xsl:template match="*[name()='shared' and @id='R53AWSIntlong']" priority="1"><phrase api="web"><shared id="R53AWSIntlong"/></phrase><phrase api="sdk">Route 53 Amazon Web Services Integration</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53AWSInt']" priority="1"><phrase api="web"><shared id="R53AWSInt"/></phrase><phrase api="sdk">Route 53 Amazon Web Services Integration</phrase></xsl:template>
<!--**************************************-->

<!--Route 53 Private DNS for VPCs-->
<!--Amazon Route 53 Private DNS for VPCs-->
  <xsl:template match="*[name()='shared' and @id='R53PDNSVPClong']" priority="1"><phrase api="web"><shared id="R53PDNSVPClong"/></phrase><phrase api="sdk">Route 53 Private DNS for VPCs</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53PDNSVPC']" priority="1">Route 53 Private DNS for VPCs</xsl:template>
<!--**************************************-->

<!--Route 53 domain registration-->
<!--Amazon Route 53 domain registration-->
  <xsl:template match="*[name()='shared' and @id='R53DRlong']" priority="1"><phrase api="web"><shared id="R53DRlong"/></phrase><phrase api="sdk">Route 53 domain registration</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53DR']" priority="1">Route 53 domain registration</xsl:template>
<!--**************************************-->

<!--Route 53 Resolver-->
<!--Amazon Route 53 Resolver-->
  <xsl:template match="*[name()='shared' and @id='R53Rlong']" priority="1"><phrase api="web"><shared id="R53Rlong"/></phrase><phrase api="sdk">Route 53 Resolver</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53R']" priority="1">Route 53 Resolver</xsl:template>
<!--**************************************-->

<!--Route 53 ARC-->
<!--Amazon Route 53 Application Recovery Controller-->
  <xsl:template match="*[name()='shared' and @id='R53ARClong']" priority="1">Amazon Route 53 Application Recovery Controller</xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53ARC']" priority="1">Route 53 ARC</xsl:template>
<!--**************************************-->

<!--SageMaker-->
<!--Amazon SageMaker-->
  <xsl:template match="*[name()='shared' and @id='SMlong']" priority="1">Amazon SageMaker</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SM']" priority="1">SageMaker</xsl:template>
<!--**************************************-->

<!--Ground Truth-->
<!--Ground Truth-->
  <xsl:template match="*[name()='shared' and @id='SAIlong']" priority="1">Amazon SageMaker Ground Truth</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAI']" priority="1">Ground Truth</xsl:template>
<!--**************************************-->

<!--Amazon A2I-->
<!--Amazon A2I-->
  <xsl:template match="*[name()='shared' and @id='a2ilong']" priority="1">Amazon Augmented AI</xsl:template>
  <xsl:template match="*[name()='shared' and @id='a2ishort']" priority="1">Amazon A2I</xsl:template>
<!--**************************************-->

<!--SageMaker-->
<!--Amazon SageMaker-->
  <xsl:template match="*[name()='shared' and @id='SMRuntimelong']" priority="1">Amazon SageMaker</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SMRuntime']" priority="1">SageMaker</xsl:template>
<!--**************************************-->

<!--Amazon S3-->
<!--Amazon S3-->
  <xsl:template match="*[name()='shared' and @id='S3long']" priority="1">Amazon Simple Storage Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3']" priority="1">Amazon S3</xsl:template>
<!--**************************************-->

<!--S3 on Outposts-->
<!--Amazon S3 on Outposts-->
  <xsl:template match="*[name()='shared' and @id='S3onOutpostsLong']" priority="1">Amazon S3 on Outposts</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3onOutposts']" priority="1">S3 on Outposts</xsl:template>
<!--**************************************-->

<!--Amazon S3 Control-->
<!--Amazon S3-->
  <xsl:template match="*[name()='shared' and @id='S3Controllong']" priority="1">Amazon S3 Control</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3Control']" priority="1">Amazon S3 Control</xsl:template>
<!--**************************************-->

<!--AWS SCT-->
<!--Schema Conversion Tool-->
  <xsl:template match="*[name()='shared' and @id='AWSSCTlong']" priority="1"><phrase api="web"><shared id="AWSSCTlong"/></phrase><phrase api="sdk">Schema Conversion Tool</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSSCT']" priority="1"><phrase api="web"><shared id="AWSSCT"/></phrase><phrase api="sdk">SCT</phrase></xsl:template>
<!--**************************************-->

<!--Mobile SDK for Android-->
<!--Mobile SDK for Android-->
  <xsl:template match="*[name()='shared' and @id='Androidlong']" priority="1"><phrase api="web"><shared id="Androidlong"/></phrase><phrase api="sdk">Mobile SDK for Android</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Android']" priority="1">Mobile SDK for Android</xsl:template>
<!--**************************************-->

<!--SDK for C++-->
<!--SDK for C++-->
  <xsl:template match="*[name()='shared' and @id='CPPlong']" priority="1"><phrase api="web"><shared id="CPPlong"/></phrase><phrase api="sdk">SDK for C++</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CPP']" priority="1">SDK for C++</xsl:template>
<!--**************************************-->

<!--SDK for Go-->
<!--SDK for Go-->
  <xsl:template match="*[name()='shared' and @id='Golong']" priority="1"><phrase api="web"><shared id="Golong"/></phrase><phrase api="sdk">SDK for Go</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Go']" priority="1">SDK for Go</xsl:template>
<!--**************************************-->

<!--Mobile SDK for iOS-->
<!--Mobile SDK for iOS-->
  <xsl:template match="*[name()='shared' and @id='iOSlong']" priority="1"><phrase api="web"><shared id="iOSlong"/></phrase><phrase api="sdk">Mobile SDK for iOS</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iOS']" priority="1">Mobile SDK for iOS</xsl:template>
<!--**************************************-->

<!--SDK for Java-->
<!--SDK for Java-->
  <xsl:template match="*[name()='shared' and @id='Javalong']" priority="1"><phrase api="web"><shared id="Javalong"/></phrase><phrase api="sdk">SDK for Java</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Java']" priority="1">SDK for Java</xsl:template>
<!--**************************************-->

<!--SDK for Java 2.x-->
<!--SDK for Java 2.x-->
  <xsl:template match="*[name()='shared' and @id='JavaV2long']" priority="1"><phrase api="web"><shared id="JavaV2long"/></phrase><phrase api="sdk">SDK for Java 2.x</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JavaV2']" priority="1">SDK for Java 2.x</xsl:template>
<!--**************************************-->

<!--SDK for JavaScript-->
<!--SDK for JavaScript-->
  <xsl:template match="*[name()='shared' and @id='JSBlong']" priority="1"><phrase api="web"><shared id="JSBlong"/></phrase><phrase api="sdk">SDK for JavaScript</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JSB']" priority="1">SDK for JavaScript</xsl:template>
<!--**************************************-->

<!--SDK Metrics-->
<!--SDK Metrics-->
  <xsl:template match="*[name()='shared' and @id='SDKMlong']" priority="1"><phrase api="web"><shared id="SDKMlong"/></phrase><phrase api="sdk">SDK Metrics for Enterprise Support</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDKM']" priority="1">SDK Metrics</xsl:template>
<!--**************************************-->

<!--AWS SDK for .NET-->
<!--SDK for .NET-->
  <xsl:template match="*[name()='shared' and @id='NETlong']" priority="1"><phrase api="web"><shared id="NETlong"/></phrase><phrase api="sdk">SDK for .NET</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NET']" priority="1"><phrase api="web"><shared id="NET"/></phrase><phrase api="sdk">SDK for .NET</phrase></xsl:template>
<!--**************************************-->

<!--SDK for PHP-->
<!--SDK for PHP-->
  <xsl:template match="*[name()='shared' and @id='PHPlong']" priority="1"><phrase api="web"><shared id="PHPlong"/></phrase><phrase api="sdk">SDK for PHP</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PHP']" priority="1">SDK for PHP</xsl:template>
<!--**************************************-->

<!--SDK for PHP-->
<!--SDK for PHP 2-->
  <xsl:template match="*[name()='shared' and @id='PHP2long']" priority="1"><phrase api="web"><shared id="PHP2long"/></phrase><phrase api="sdk">SDK for PHP</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PHP2']" priority="1">SDK for PHP</xsl:template>
<!--**************************************-->

<!--SDK for Python-->
<!--SDK for Python-->
  <xsl:template match="*[name()='shared' and @id='Pythonlong']" priority="1"><phrase api="web"><shared id="Pythonlong"/></phrase><phrase api="sdk">SDK for Python (Boto)</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Python']" priority="1">SDK for Python</xsl:template>
<!--**************************************-->

<!--SDK for Python (Boto3)-->
<!--SDK for Python (Boto3)-->
  <xsl:template match="*[name()='shared' and @id='Python3long']" priority="1"><phrase api="web"><shared id="Python3long"/></phrase><phrase api="sdk">SDK for Python (Boto3)</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Python3']" priority="1">SDK for Python (Boto3)</xsl:template>
<!--**************************************-->

<!--SDK for Ruby-->
<!--SDK for Ruby-->
  <xsl:template match="*[name()='shared' and @id='Rubylong']" priority="1"><phrase api="web"><shared id="Rubylong"/></phrase><phrase api="sdk">SDK for Ruby</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Ruby']" priority="1">SDK for Ruby</xsl:template>
<!--**************************************-->

<!--AWS SMS-->
<!--AWS Server Migration Service-->
  <xsl:template match="*[name()='shared' and @id='SMSlong']" priority="1"><phrase api="web"><shared id="SMSlong"/></phrase><phrase api="sdk">Server Migration Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SMS']" priority="1"><phrase api="web"><shared id="SMS"/></phrase><phrase api="sdk">Server Migration Service</phrase></xsl:template>
<!--**************************************-->

<!--Secrets Manager-->
<!--AWS Secrets Manager-->
  <xsl:template match="*[name()='shared' and @id='ASMlong']" priority="1"><phrase api="web"><shared id="ASMlong"/></phrase><phrase api="sdk">Secrets Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASM']" priority="1">Secrets Manager</xsl:template>
<!--**************************************-->

<!--Security Hub-->
<!--AWS Security Hub-->
  <xsl:template match="*[name()='shared' and @id='ASHlong']" priority="1"><phrase api="web"><shared id="ASHlong"/></phrase><phrase api="sdk">Security Hub</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASH']" priority="1">Security Hub</xsl:template>
<!--**************************************-->

<!--AWS SAM-->
<!--Serverless Application Model-->
  <xsl:template match="*[name()='shared' and @id='SAMlong']" priority="1"><phrase api="web"><shared id="SAMlong"/></phrase><phrase api="sdk">Serverless Application Model</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAM']" priority="1"><phrase api="web"><shared id="SAM"/></phrase><phrase api="sdk">SAM</phrase></xsl:template>
<!--**************************************-->

<!--AWS Serverless Application Repository-->
<!--AWS Serverless Application Repository-->
  <xsl:template match="*[name()='shared' and @id='SARlong']" priority="1"><phrase api="web"><shared id="SARlong"/></phrase><phrase api="sdk">Serverless Application Repository</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAR']" priority="1"><phrase api="web"><shared id="SAR"/></phrase><phrase api="sdk">Serverless Application Repository</phrase></xsl:template>
<!--**************************************-->

<!--Service Authorization Reference-->
<!--Service Authorization Reference-->
  <xsl:template match="*[name()='shared' and @id='SAZRlong']" priority="1">Service Authorization Reference</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAZR']" priority="1">Service Authorization Reference</xsl:template>
<!--**************************************-->

<!--AWS Service Catalog-->
<!--AWS Service Catalog-->
  <xsl:template match="*[name()='shared' and @id='SClong']" priority="1"><phrase api="web"><shared id="SClong"/></phrase><phrase api="sdk">Service Catalog</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SC']" priority="1"><phrase api="web"><shared id="SC"/></phrase><phrase api="sdk">Service Catalog</phrase></xsl:template>
<!--**************************************-->

<!--AWS Service Catalog AppRegistry-->
<!--AWS Service Catalog AppRegistry-->
  <xsl:template match="*[name()='shared' and @id='SCARlong']" priority="1"><phrase api="web"><shared id="SCARlong"/></phrase><phrase api="sdk">Service Catalog App Registry</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SCAR']" priority="1"><phrase api="web"><shared id="SCAR"/></phrase><phrase api="sdk">Service Catalog AppRegistry</phrase></xsl:template>
<!--**************************************-->

<!--Service Quotas-->
<!--Service Quotas-->
  <xsl:template match="*[name()='shared' and @id='SQlong']" priority="1">Service Quotas</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SQ']" priority="1">Service Quotas</xsl:template>
<!--**************************************-->

<!--Amazon SES-->
<!--Amazon Simple Email Service-->
  <xsl:template match="*[name()='shared' and @id='SESlong']" priority="1">Amazon Simple Email Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SES']" priority="1">Amazon SES</xsl:template>
<!--**************************************-->

<!--AWS SFTP-->
<!--SFTP-->
  <xsl:template match="*[name()='shared' and @id='SFTPlong']" priority="1"><phrase api="web"><shared id="SFTPlong"/></phrase><phrase api="sdk">Transfer for SFTP</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFTP']" priority="1"><phrase api="web"><shared id="SFTP"/></phrase><phrase api="sdk">SFTP</phrase></xsl:template>
<!--**************************************-->

<!--Shield-->
<!--AWS Shield-->
  <xsl:template match="*[name()='shared' and @id='SHDlong']" priority="1"><phrase api="web"><shared id="SHDlong"/></phrase><phrase api="sdk">Shield</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHD']" priority="1">Shield</xsl:template>
<!--**************************************-->

<!--Shield Standard-->
<!--Shield Standard-->
  <xsl:template match="*[name()='shared' and @id='SHDSTDlong']" priority="1"><phrase api="web"><shared id="SHDSTDlong"/></phrase><phrase api="sdk">Shield Standard</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHDSTD']" priority="1">Shield Standard</xsl:template>
<!--**************************************-->

<!--Shield Advanced-->
<!--Shield Advanced-->
  <xsl:template match="*[name()='shared' and @id='SHDADVlong']" priority="1"><phrase api="web"><shared id="SHDADVlong"/></phrase><phrase api="sdk">Shield Advanced</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHDADV']" priority="1">Shield Advanced</xsl:template>
<!--**************************************-->

<!--Amazon Silk-->
<!--Amazon Silk-->
  <xsl:template match="*[name()='shared' and @id='SLKlong']" priority="1">Amazon Silk</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SLK']" priority="1">Amazon Silk</xsl:template>
<!--**************************************-->

<!--Amazon Simple Pay-->
<!--Amazon Simple Pay-->
  <xsl:template match="*[name()='shared' and @id='SPlong']" priority="1">Amazon Simple Pay</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SP']" priority="1">Amazon Simple Pay</xsl:template>
<!--**************************************-->

<!--AWS SSO-->
<!--Single Sign-On-->
  <xsl:template match="*[name()='shared' and @id='SSOlong']" priority="1"><phrase api="web"><shared id="SSOlong"/></phrase><phrase api="sdk">Amazon Web Services Single Sign On</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SSO']" priority="1"><phrase api="web"><shared id="SSO"/></phrase><phrase api="sdk">Amazon Web Services SSO</phrase></xsl:template>
<!--**************************************-->

<!--Snow Device Management-->
<!--AWS Snow Device Management-->
  <xsl:template match="*[name()='shared' and @id='SDMlong']" priority="1"><phrase api="web"><shared id="SDMlong"/></phrase><phrase api="sdk">Snow Device Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDM']" priority="1">Snow Device Management</xsl:template>
<!--**************************************-->

<!--SPEKE-->
<!--SPEKE for DRM encryption-->
  <xsl:template match="*[name()='shared' and @id='SPKlong']" priority="1">Secure Packager and Encoder Key Exchange</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPK']" priority="1">SPEKE</xsl:template>
<!--**************************************-->

<!--Sumerian-->
<!--Amazon Sumerian-->
  <xsl:template match="*[name()='shared' and @id='sumerianlong']" priority="1">Amazon Sumerian</xsl:template>
  <xsl:template match="*[name()='shared' and @id='sumerian']" priority="1">Sumerian</xsl:template>
<!--**************************************-->

<!--Systems Manager-->
<!--EC2 Systems Manager-->
  <xsl:template match="*[name()='shared' and @id='SYSlong']" priority="1"><phrase api="web"><shared id="SYSlong"/></phrase><phrase api="sdk">Amazon Web Services Systems Manager</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SYS']" priority="1">Systems Manager</xsl:template>
<!--**************************************-->

<!--SSM-->
<!--SSM-->
  <xsl:template match="*[name()='shared' and @id='SSMlong']" priority="1">Amazon EC2 Systems Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SSM']" priority="1">SSM</xsl:template>
<!--**************************************-->

<!--Systems Manager Explorer-->
<!--AWS Systems Manager Explorer-->
  <xsl:template match="*[name()='shared' and @id='SYSElong']" priority="1"><phrase api="web"><shared id="SYSElong"/></phrase><phrase api="sdk">Systems Manager Explorer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SYSE']" priority="1">Systems Manager Explorer</xsl:template>
<!--**************************************-->

<!--Amazon SimpleDB-->
<!--Amazon SimpleDB-->
  <xsl:template match="*[name()='shared' and @id='SDBlong']" priority="1">Amazon SimpleDB</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDB']" priority="1">Amazon SimpleDB</xsl:template>
<!--**************************************-->

<!--Amazon SNS-->
<!--Amazon Simple Notification Service-->
  <xsl:template match="*[name()='shared' and @id='SNSlong']" priority="1">Amazon Simple Notification Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SNS']" priority="1">Amazon SNS</xsl:template>
<!--**************************************-->

<!--Amazon SQS-->
<!--Amazon Simple Queue Service-->
  <xsl:template match="*[name()='shared' and @id='SQSlong']" priority="1">Amazon Simple Queue Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SQS']" priority="1">Amazon SQS</xsl:template>
<!--**************************************-->

<!--Step Functions-->
<!--AWS Step Functions-->
  <xsl:template match="*[name()='shared' and @id='SFNlong']" priority="1"><phrase api="web"><shared id="SFNlong"/></phrase><phrase api="sdk">Step Functions</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFN']" priority="1">Step Functions</xsl:template>
<!--**************************************-->

<!--Step Functions - Sync Express-->
<!--AWS Step Functions - Sync Express-->
  <xsl:template match="*[name()='shared' and @id='SFNSElong']" priority="1"><phrase api="web"><shared id="SFNSElong"/></phrase><phrase api="sdk">Step Functions - Sync Express</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFNSE']" priority="1">Step Functions - Sync Express</xsl:template>
<!--**************************************-->

<!--Storage Gateway-->
<!--AWS Storage Gateway-->
  <xsl:template match="*[name()='shared' and @id='AWSSGlong']" priority="1"><phrase api="web"><shared id="AWSSGlong"/></phrase><phrase api="sdk">Storage Gateway</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSSG']" priority="1">Storage Gateway</xsl:template>
<!--**************************************-->

<!--AWS STS-->
<!--AWS Security Token Service-->
  <xsl:template match="*[name()='shared' and @id='STSlong']" priority="1"><phrase api="web"><shared id="STSlong"/></phrase><phrase api="sdk">Security Token Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='STS']" priority="1"><phrase api="web"><shared id="STS"/></phrase><phrase api="sdk">STS</phrase></xsl:template>
<!--**************************************-->

<!--AWS Support-->
<!--AWS Support-->
  <xsl:template match="*[name()='shared' and @id='SUPlong']" priority="1"><phrase api="web"><shared id="SUPlong"/></phrase><phrase api="sdk">Amazon Web Services Support</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SUP']" priority="1"><phrase api="web"><shared id="SUP"/></phrase><phrase api="sdk">Amazon Web Services Support</phrase></xsl:template>
<!--**************************************-->

<!--Support Center Console-->
<!--AWS Support Center Console-->
  <xsl:template match="*[name()='shared' and @id='SUPCtrConsolelong']" priority="1"><phrase api="web"><shared id="SUPCtrConsolelong"/></phrase><phrase api="sdk">Support Center Console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SUPCtrConsole']" priority="1">Support Center Console</xsl:template>
<!--**************************************-->

<!--Amazon SWF-->
<!--Amazon Simple Workflow Service-->
  <xsl:template match="*[name()='shared' and @id='SWFlong']" priority="1">Amazon Simple Workflow Service</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SWF']" priority="1">Amazon SWF</xsl:template>
<!--**************************************-->

<!--Amazon Textract-->
<!--Amazon Textract-->
  <xsl:template match="*[name()='shared' and @id='TEXTRACTlong']" priority="1">Amazon Textract</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TEXTRACT']" priority="1">Amazon Textract</xsl:template>
<!--**************************************-->

<!--Timestream-->
<!--Timestream-->
  <xsl:template match="*[name()='shared' and @id='TIMElong']" priority="1">Amazon Timestream</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME']" priority="1">Timestream</xsl:template>
<!--**************************************-->

<!--Toolkit for Eclipse-->
<!--Toolkit for Eclipse-->
  <xsl:template match="*[name()='shared' and @id='TElong']" priority="1"><phrase api="web"><shared id="TElong"/></phrase><phrase api="sdk">Toolkit for Eclipse</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TE']" priority="1">Toolkit for Eclipse</xsl:template>
<!--**************************************-->

<!--AWS Toolkit for JetBrains-->
<!--Toolkit for JetBrains-->
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitlong']" priority="1"><phrase api="web"><shared id="JBIDEToolkitlong"/></phrase><phrase api="sdk">Toolkit for JetBrains</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkit']" priority="1"><phrase api="web"><shared id="JBIDEToolkit"/></phrase><phrase api="sdk">Toolkit for JetBrains</phrase></xsl:template>
<!--**************************************-->

<!--Toolkit for Visual Studio-->
<!--Toolkit for Visual Studio-->
  <xsl:template match="*[name()='shared' and @id='TVSlong']" priority="1"><phrase api="web"><shared id="TVSlong"/></phrase><phrase api="sdk">Toolkit for Visual Studio</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TVS']" priority="1">Toolkit for Visual Studio</xsl:template>
<!--**************************************-->

<!--VS Code-->
<!--VS Code-->
  <xsl:template match="*[name()='shared' and @id='VSCIDElong']" priority="1">Visual Studio Code</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCIDE']" priority="1">VS Code</xsl:template>
<!--**************************************-->

<!--Toolkit for VS Code-->
<!--Toolkit for VS Code-->
  <xsl:template match="*[name()='shared' and @id='VSCIDEToolkit']" priority="1"><phrase api="web"><shared id="VSCIDEToolkit"/></phrase><phrase api="sdk">Toolkit for Visual Studio Code</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCIDEToolkitshort']" priority="1">Toolkit for VS Code</xsl:template>
<!--**************************************-->

<!--AWS Toolkit for Azure DevOps-->
<!--Toolkit for Azure DevOps-->
  <xsl:template match="*[name()='shared' and @id='TTSlong']" priority="1"><phrase api="web"><shared id="TTSlong"/></phrase><phrase api="sdk">Toolkit for Microsoft Azure DevOps</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TTS']" priority="1"><phrase api="web"><shared id="TTS"/></phrase><phrase api="sdk">Toolkit for Azure DevOps</phrase></xsl:template>
<!--**************************************-->

<!--Tools for Windows PowerShell-->
<!--Tools for Windows PowerShell-->
  <xsl:template match="*[name()='shared' and @id='TWPlong']" priority="1"><phrase api="web"><shared id="TWPlong"/></phrase><phrase api="sdk">Tools for Windows PowerShell</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TWP']" priority="1">Tools for Windows PowerShell</xsl:template>
<!--**************************************-->

<!--Tools for PowerShell-->
<!--Tools for PowerShell-->
  <xsl:template match="*[name()='shared' and @id='TWPALLlong']" priority="1"><phrase api="web"><shared id="TWPALLlong"/></phrase><phrase api="sdk">Tools for PowerShell</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TWPALL']" priority="1">Tools for PowerShell</xsl:template>
<!--**************************************-->

<!--Tools for PowerShell Core-->
<!--Tools for PowerShell Core-->
  <xsl:template match="*[name()='shared' and @id='TPClong']" priority="1"><phrase api="web"><shared id="TPClong"/></phrase><phrase api="sdk">Tools for PowerShell Core</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TPC']" priority="1">Tools for PowerShell Core</xsl:template>
<!--**************************************-->

<!--Transfer Family-->
<!--AWS Transfer Family-->
  <xsl:template match="*[name()='shared' and @id='TFlong']" priority="1"><phrase api="web"><shared id="TFlong"/></phrase><phrase api="sdk">Transfer Family</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TF']" priority="1">Transfer Family</xsl:template>
<!--**************************************-->

<!--AWS FTP-->
<!--Transfer for FTP-->
  <xsl:template match="*[name()='shared' and @id='FTPlong']" priority="1"><phrase api="web"><shared id="FTPlong"/></phrase><phrase api="sdk">Transfer for FTP</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FTP']" priority="1"><phrase api="web"><shared id="FTP"/></phrase><phrase api="sdk">FTP</phrase></xsl:template>
<!--**************************************-->

<!--AWS FTPS-->
<!--Transfer for FTPS-->
  <xsl:template match="*[name()='shared' and @id='FTPSlong']" priority="1"><phrase api="web"><shared id="FTPSlong"/></phrase><phrase api="sdk">Transfer for FTPS</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FTPS']" priority="1"><phrase api="web"><shared id="FTPS"/></phrase><phrase api="sdk">FTPS</phrase></xsl:template>
<!--**************************************-->

<!--Amazon Translate-->
<!--Amazon Translate-->
  <xsl:template match="*[name()='shared' and @id='TSLlong']" priority="1">Amazon Translate</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TSL']" priority="1">Amazon Translate</xsl:template>
<!--**************************************-->

<!--Amazon Transcribe-->
<!--Amazon Transcribe-->
  <xsl:template match="*[name()='shared' and @id='TSClong']" priority="1">Amazon Transcribe</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TSC']" priority="1">Amazon Transcribe</xsl:template>
<!--**************************************-->

<!--Trusted Advisor-->
<!--AWS Trusted Advisor-->
  <xsl:template match="*[name()='shared' and @id='AWS-TA-long']" priority="1"><phrase api="web"><shared id="AWS-TA-long"/></phrase><phrase api="sdk">Trusted Advisor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-TA']" priority="1"><phrase api="web"><shared id="AWS-TA"/></phrase><phrase api="sdk">Trusted Advisor</phrase></xsl:template>
<!--**************************************-->

<!--VM Import/Export-->
<!--VM Import/Export-->
  <xsl:template match="*[name()='shared' and @id='VMIElong']" priority="1">VM Import/Export</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VMIE']" priority="1">VM Import/Export</xsl:template>
<!--**************************************-->

<!--Amazon VPC-->
<!--Amazon VPC-->
  <xsl:template match="*[name()='shared' and @id='VPClong']" priority="1">Amazon Virtual Private Cloud</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPC']" priority="1">Amazon VPC</xsl:template>
<!--**************************************-->

<!--Amazon VPC Console-->
<!--Amazon VPC Console-->
  <xsl:template match="*[name()='shared' and @id='VPCConsolelong']" priority="1">Amazon Virtual Private Cloud Console</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPCConsole']" priority="1">Amazon VPC Console</xsl:template>
<!--**************************************-->

<!--IPAM-->
<!--Amazon VPC IP Address Manager-->
  <xsl:template match="*[name()='shared' and @id='ipam-long']" priority="1">Amazon VPC IP Address Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ipam']" priority="1">IPAM</xsl:template>
<!--**************************************-->

<!--Transit Gateway-->
<!--AWS Transit Gateway-->
  <xsl:template match="*[name()='shared' and @id='AWSTGlong']" priority="1"><phrase api="web"><shared id="AWSTGlong"/></phrase><phrase api="sdk">Transit Gateway</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSTG']" priority="1">Transit Gateway</xsl:template>
<!--**************************************-->

<!--Client VPN-->
<!--AWS Client VPN-->
  <xsl:template match="*[name()='shared' and @id='CVPNlong']" priority="1"><phrase api="web"><shared id="CVPNlong"/></phrase><phrase api="sdk">Client VPN</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CVPN']" priority="1">Client VPN</xsl:template>
<!--**************************************-->

<!--Site-to-Site VPN-->
<!--Site-to-Site VPN-->
  <xsl:template match="*[name()='shared' and @id='S2Slong']" priority="1"><phrase api="web"><shared id="S2Slong"/></phrase><phrase api="sdk">Site-to-Site VPN</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S2S']" priority="1">Site-to-Site VPN</xsl:template>
<!--**************************************-->

<!--AWS VPN-->
<!--AWS Virtual Private Network-->
  <xsl:template match="*[name()='shared' and @id='VPNlong']" priority="1"><phrase api="web"><shared id="VPNlong"/></phrase><phrase api="sdk">Virtual Private Network</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPN']" priority="1"><phrase api="web"><shared id="VPN"/></phrase><phrase api="sdk">VPN</phrase></xsl:template>
<!--**************************************-->

<!--AWS WAF-->
<!--AWS WAF-->
  <xsl:template match="*[name()='shared' and @id='WAFlong']" priority="1"><phrase api="web"><shared id="WAFlong"/></phrase><phrase api="sdk">WAF</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAF']" priority="1"><phrase api="web"><shared id="WAF"/></phrase><phrase api="sdk">WAF</phrase></xsl:template>
<!--**************************************-->

<!--AWS WAFV2-->
<!--AWS WAFV2-->
  <xsl:template match="*[name()='shared' and @id='WAFv2long']" priority="1"><phrase api="web"><shared id="WAFv2long"/></phrase><phrase api="sdk">WAF</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFv2']" priority="1"><phrase api="web"><shared id="WAFv2"/></phrase><phrase api="sdk">WAFV2</phrase></xsl:template>
<!--**************************************-->

<!--AWS WAF-->
<!--AWS WAF-->
  <xsl:template match="*[name()='shared' and @id='WAFRegionallong']" priority="1"><phrase api="web"><shared id="WAFRegionallong"/></phrase><phrase api="sdk">WAF</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFRegional']" priority="1"><phrase api="web"><shared id="WAFRegional"/></phrase><phrase api="sdk">WAF</phrase></xsl:template>
<!--**************************************-->

<!--Wavelength-->
<!--Wavelength-->
  <xsl:template match="*[name()='shared' and @id='WAVElong']" priority="1"><phrase api="web"><shared id="WAVElong"/></phrase><phrase api="sdk">Wavelength</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAVE']" priority="1">Wavelength</xsl:template>
<!--**************************************-->

<!--AWS WA Tool-->
<!--Well-Architected Tool-->
  <xsl:template match="*[name()='shared' and @id='WATlong']" priority="1"><phrase api="web"><shared id="WATlong"/></phrase><phrase api="sdk">Well-Architected Tool</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAT']" priority="1"><phrase api="web"><shared id="WAT"/></phrase><phrase api="sdk">WA Tool</phrase></xsl:template>
<!--**************************************-->

<!--WorkSpaces-->
<!--Amazon WorkSpaces-->
  <xsl:template match="*[name()='shared' and @id='WSPlong']" priority="1">Amazon WorkSpaces</xsl:template>
  <xsl:template match="*[name()='shared' and @id='WSP']" priority="1">WorkSpaces</xsl:template>
<!--**************************************-->

<!--Amazon WAM-->
<!--Amazon WorkSpaces Application Manager-->
  <xsl:template match="*[name()='shared' and @id='WAMlong']" priority="1">Amazon WorkSpaces Application Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAM']" priority="1">Amazon WAM</xsl:template>
<!--**************************************-->

<!--Amazon WorkLink-->
<!--Amazon WorkLink-->
  <xsl:template match="*[name()='shared' and @id='WLKlong']" priority="1">Amazon WorkLink</xsl:template>
  <xsl:template match="*[name()='shared' and @id='WLK']" priority="1">Amazon WorkLink</xsl:template>
<!--**************************************-->

<!--Amazon WorkMail-->
<!--Amazon WorkMail-->
  <xsl:template match="*[name()='shared' and @id='WMlong']" priority="1">Amazon WorkMail</xsl:template>
  <xsl:template match="*[name()='shared' and @id='WM']" priority="1">Amazon WorkMail</xsl:template>
<!--**************************************-->

<!--Amazon WorkDocs-->
<!--Amazon WorkDocs-->
  <xsl:template match="*[name()='shared' and @id='WDlong']" priority="1">Amazon WorkDocs</xsl:template>
  <xsl:template match="*[name()='shared' and @id='WD']" priority="1">Amazon WorkDocs</xsl:template>
<!--**************************************-->

<!--Amazon WorkDocs-->
<!--Former Zocalo Now Workdocs-->
  <xsl:template match="*[name()='shared' and @id='ZCLlong']" priority="1">Amazon WorkDocs</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ZCL']" priority="1">Amazon WorkDocs</xsl:template>
<!--**************************************-->

<!--X-Ray-->
<!--AWS X-Ray-->
  <xsl:template match="*[name()='shared' and @id='xraylong']" priority="1"><phrase api="web"><shared id="xraylong"/></phrase><phrase api="sdk">X-Ray</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray']" priority="1">X-Ray</xsl:template>
<!--**************************************-->

<!--Zelkova Service-->
<!--AWS Zelkova Service-->
  <xsl:template match="*[name()='shared' and @id='zelkovalong']" priority="1"><phrase api="web"><shared id="zelkovalong"/></phrase><phrase api="sdk">Zelkova Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='zelkova']" priority="1">Zelkova Service</xsl:template>
<!--**************************************-->

  <xsl:template match="*[name()='shared' and @id='ad-connector']" priority="1">AD Connector</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALB']" priority="1">Application Load Balancer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALBs']" priority="1">Application Load Balancers</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMR']" priority="1"><phrase api="web"><shared id="AMR"/></phrase><phrase api="sdk">Amazon Web Services Managed Rules</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMRrg']" priority="1"><phrase api="web"><shared id="AMRrg"/></phrase><phrase api="sdk">Amazon Web Services Managed Rules rule group</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMRrgs']" priority="1"><phrase api="web"><shared id="AMRrgs"/></phrase><phrase api="sdk">Amazon Web Services Managed Rules rule groups</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMS-Acclong']" priority="1">AMS Accelerate</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASMshort']" priority="1">Secrets Manager</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS']" priority="1"><phrase api="web"><shared id="AWS"/></phrase><phrase api="sdk">Amazon Web Services</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-always']" priority="1"><phrase api="web"><shared id="AWS-always"/></phrase><phrase api="sdk">Amazon Web Services</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSlong']" priority="1">Amazon Web Services</xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-account']" priority="1"><phrase api="web"><shared id="AWS-account"/></phrase><phrase api="sdk">Amazon Web Services account</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-accounts']" priority="1"><phrase api="web"><shared id="AWS-accounts"/></phrase><phrase api="sdk">Amazon Web Services accounts</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Cloud']" priority="1"><phrase api="web"><shared id="AWS-Cloud"/></phrase><phrase api="sdk">Amazon Web Services Cloud</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DC-Long']" priority="1"><phrase api="web"><shared id="AWS-DC-Long"/></phrase><phrase api="sdk">Direct Connect</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DClong']" priority="1"><phrase api="web"><shared id="AWS-DClong"/></phrase><phrase api="sdk">Direct Connect</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-managed-key']" priority="1"><phrase api="web"><shared id="aws-managed-key"/></phrase><phrase api="sdk">Amazon Web Services managed key</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-managed-keys']" priority="1"><phrase api="web"><shared id="aws-managed-keys"/></phrase><phrase api="sdk">Amazon Web Services managed keys</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-owned-key']" priority="1"><phrase api="web"><shared id="aws-owned-key"/></phrase><phrase api="sdk">Amazon Web Services owned key</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-owned-keys']" priority="1"><phrase api="web"><shared id="aws-owned-keys"/></phrase><phrase api="sdk">Amazon Web Services owned keys</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Region']" priority="1"><phrase api="web"><shared id="AWS-Region"/></phrase><phrase api="sdk">Amazon Web Services Region</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Regions']" priority="1"><phrase api="web"><shared id="AWS-Regions"/></phrase><phrase api="sdk">Amazon Web Services Regions</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-service']" priority="1"><phrase api="web"><shared id="AWS-service"/></phrase><phrase api="sdk">Amazon Web Service</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-services']" priority="1"><phrase api="web"><shared id="AWS-services"/></phrase><phrase api="sdk">Amazon Web Services</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-TA-Long']" priority="1"><phrase api="web"><shared id="AWS-TA-Long"/></phrase><phrase api="sdk">Trusted Advisor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Training']" priority="1"><phrase api="web"><shared id="AWS-Training"/></phrase><phrase api="sdk">Amazon Web Services Training</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Billinglong']" priority="1"><phrase api="web"><shared id="Billinglong"/></phrase><phrase api="sdk">Billing</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Billing']" priority="1">Billing</xsl:template>
  <xsl:template match="*[name()='shared' and @id='Budgetslong']" priority="1"><phrase api="web"><shared id="Budgetslong"/></phrase><phrase api="sdk">Amazon Web Services Budgets</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Bulda']" priority="1">Snowball client</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCLong']" priority="1"><phrase api="web"><shared id="CCLong"/></phrase><phrase api="sdk">Config</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDKshort']" priority="1">CDK</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNLong']" priority="1"><phrase api="web"><shared id="CFNLong"/></phrase><phrase api="sdk">CloudFormation</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNshort']" priority="1">CloudFormation</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNGUARDlong']" priority="1"><phrase api="web"><shared id="CFNGUARDlong"/></phrase><phrase api="sdk">CloudFormation Guard</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNGUARDshort']" priority="1">Guard</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM_plus']" priority="1">plus license</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM_pro']" priority="1">pro license</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHMPro']" priority="1">Amazon Chime Pro</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLB']" priority="1">Classic Load Balancer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLBs']" priority="1">Classic Load Balancers</xsl:template>
  <xsl:template match="*[name()='shared' and @id='cluster']" priority="1">cluster</xsl:template>
  <xsl:template match="*[name()='shared' and @id='Cluster']" priority="1">Cluster</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMG']" priority="1"><phrase api="web"><shared id="CMG"/></phrase><phrase api="sdk">Cost Management</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGID']" priority="1">Amazon Cognito Identity</xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGUP']" priority="1">Amazon Cognito user pools</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKC']" priority="1"><phrase api="web"><shared id="CryptoSDKC"/></phrase><phrase api="sdk">Amazon Web Services Encryption SDK for C</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKJava']" priority="1"><phrase api="web"><shared id="CryptoSDKJava"/></phrase><phrase api="sdk">Amazon Web Services Encryption SDK for Java</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKJS']" priority="1"><phrase api="web"><shared id="CryptoSDKJS"/></phrase><phrase api="sdk">Amazon Web Services Encryption SDK for JavaScript</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKPy']" priority="1"><phrase api="web"><shared id="CryptoSDKPy"/></phrase><phrase api="sdk">Amazon Web Services Encryption SDK for Python</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CSC']" priority="1">AWS CodeStar connections</xsl:template>
  <xsl:template match="*[name()='shared' and @id='CURlong']" priority="1"><phrase api="web"><shared id="CURlong"/></phrase><phrase api="sdk">Amazon Web Services Cost and Usage Report</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-key']" priority="1">customer managed key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-keys']" priority="1">customer managed keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-key-cap']" priority="1">Customer managed key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-keys-cap']" priority="1">Customer managed keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-key']" priority="1">data key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-keys']" priority="1">data keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-key-cap']" priority="1">Data key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-keys-cap']" priority="1">Data keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='DCV']" priority="1">NICE DCV</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSapis']" priority="1">EBS direct APIs</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSencrypt']" priority="1">Amazon EBS encryption</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSencrypt_capitalized']" priority="1">Amazon EBS Encryption</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ecr-public-gallery']" priority="1">Amazon ECR Public Gallery</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECRfirst']" priority="1">Amazon Elastic Container Registry (Amazon ECR)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECSfirst']" priority="1">Amazon Elastic Container Service (Amazon ECS)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMR-EKS']" priority="1">Amazon EMR on EKS</xsl:template>
  <xsl:template match="*[name()='shared' and @id='ES-OPEN']" priority="1">OpenSearch</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FARGATEfirst']" priority="1"><phrase api="web"><shared id="FARGATEfirst"/></phrase><phrase api="sdk">Fargate (Fargate)</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-S3long']" priority="1">Amazon S3 File Gateway</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-S3']" priority="1">S3 File Gateway</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-FSxWlong']" priority="1">Amazon FSx File Gateway</xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-FSxW']" priority="1">FSx File Gateway</xsl:template>
  <xsl:template match="*[name()='shared' and @id='flex']" priority="1">FlexMatch</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLB']" priority="1">Gateway Load Balancer</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLBs']" priority="1">Gateway Load Balancers</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLshort']" priority="1">S3 Glacier</xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLUAPI']" priority="1"><phrase api="web"><shared id="GLUAPI"/></phrase><phrase api="sdk">Amazon Web Services Glue API</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLverylong']" priority="1">Amazon Simple Storage Service Glacier</xsl:template>
  <xsl:template match="*[name()='shared' and @id='govcloud-us']" priority="1"><phrase api="web"><shared id="govcloud-us"/></phrase><phrase api="sdk">Amazon Web Services GovCloud (US)</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='govcloud-us-region']" priority="1"><phrase api="web"><shared id="govcloud-us-region"/></phrase><phrase api="sdk">Amazon Web Services GovCloud (US) Region</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GSG']" priority="1"><phrase api="web"><shared id="GSG"/></phrase><phrase api="sdk">Getting Started with Amazon Web Services</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IntellijIDE']" priority="1">IntelliJ IDE</xsl:template>
  <xsl:template match="*[name()='shared' and @id='iot-lorawan']" priority="1"><phrase api="web"><shared id="iot-lorawan"/></phrase><phrase api="sdk">Amazon Web Services IoT Core for LoRaWAN</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iot-wireless-api']" priority="1"><phrase api="web"><shared id="iot-wireless-api"/></phrase><phrase api="sdk">IoT Wireless</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTAYSDK']" priority="1"><phrase api="web"><shared id="IoTAYSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for Arduino Yún</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTC']" priority="1"><phrase api="web"><shared id="IoTC"/></phrase><phrase api="sdk">Amazon Web Services IOT Device SDK for C</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCEmbeddedSDK']" priority="1"><phrase api="web"><shared id="IoTCEmbeddedSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for Embedded C</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCore']" priority="1"><phrase api="web"><shared id="IoTCore"/></phrase><phrase api="sdk">Amazon Web Services IoT Core</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCPPSDK']" priority="1"><phrase api="web"><shared id="IoTCPPSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for C++</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDA']" priority="1">Device Advisor</xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDAlong']" priority="1"><phrase api="web"><shared id="IoTDAlong"/></phrase><phrase api="sdk">Amazon Web Services IoT Core Device Advisor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDD']" priority="1"><phrase api="web"><shared id="IoTDD"/></phrase><phrase api="sdk">Amazon Web Services IoT Device Defender</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDSDK']" priority="1"><phrase api="web"><shared id="IoTDSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDT']" priority="1"><phrase api="web"><shared id="IoTDT"/></phrase><phrase api="sdk">Amazon Web Services IoT Device Tester</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTFH']" priority="1"><phrase api="web"><shared id="IoTFH"/></phrase><phrase api="sdk">IoT Fleet Hub</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJavaSDK']" priority="1"><phrase api="web"><shared id="IoTJavaSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for Java</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJobsData']" priority="1"><phrase api="web"><shared id="IoTJobsData"/></phrase><phrase api="sdk">IoT jobs data</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJS']" priority="1"><phrase api="web"><shared id="IoTJS"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for JavaScript</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJSSDK']" priority="1"><phrase api="web"><shared id="IoTJSSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for JavaScript</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTPythonSDK']" priority="1"><phrase api="web"><shared id="IoTPythonSDK"/></phrase><phrase api="sdk">Amazon Web Services IoT Device SDK for Python</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITE-data']" priority="1"><phrase api="web"><shared id="ITE-data"/></phrase><phrase api="sdk">IoT Events Data</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTG-data-model']" priority="1"><phrase api="web"><shared id="ITTG-data-model"/></phrase><phrase api="sdk">IoT Things Graph Data Model</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGconsole']" priority="1"><phrase api="web"><shared id="ITTGconsole"/></phrase><phrase api="sdk">IoT Things Graph console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGmapdes']" priority="1"><phrase api="web"><shared id="ITTGmapdes"/></phrase><phrase api="sdk">IoT Things Graph mapping designer</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGmodel']" priority="1"><phrase api="web"><shared id="ITTGmodel"/></phrase><phrase api="sdk">IoT Things Graph model editor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDE']" priority="1">JetBrains</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitIntelliJ']" priority="1"><phrase api="web"><shared id="JBIDEToolkitIntelliJ"/></phrase><phrase api="sdk">Amazon Web Services Toolkit for IntelliJ</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitPyCharm']" priority="1"><phrase api="web"><shared id="JBIDEToolkitPyCharm"/></phrase><phrase api="sdk">Amazon Web Services Toolkit for PyCharm</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBToolkitMarketName']" priority="1"><phrase api="web"><shared id="JBToolkitMarketName"/></phrase><phrase api="sdk">Amazon Web Services Toolkit</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong']" priority="1">Amazon Corretto</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong8']" priority="1">Amazon Corretto 8</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong11']" priority="1">Amazon Corretto 11</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong15']" priority="1">Amazon Corretto 15</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong16']" priority="1">Amazon Corretto 16</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong17']" priority="1">Amazon Corretto 17</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlongpreview']" priority="1">Amazon Corretto 8</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKpreview']" priority="1">Corretto 8</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort']" priority="1">Corretto</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort8']" priority="1">Corretto 8</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort11']" priority="1">Corretto 11</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort15']" priority="1">Corretto 15</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort16']" priority="1">Corretto 16</xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort17']" priority="1">Corretto 17</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGMTACCT-NoCaps']" priority="1">management account</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGMTACCT-Caps']" priority="1">Management account</xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKT']" priority="1"><phrase api="web"><shared id="MKT"/></phrase><phrase api="sdk">Amazon Web Services Marketplace</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTlong']" priority="1"><phrase api="web"><shared id="MKTlong"/></phrase><phrase api="sdk">Amazon Web Services Marketplace</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MMPlong']" priority="1"><phrase api="web"><shared id="MMPlong"/></phrase><phrase api="sdk">Amazon Web Services Marketplace Management Portal</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSExtractlong']" priority="1"><phrase api="web"><shared id="MSExtractlong"/></phrase><phrase api="sdk">Microservice Extractor for .NET</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSExtract']" priority="1"><phrase api="web"><shared id="MSExtract"/></phrase><phrase api="sdk">Microservice Extractor</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NLBs']" priority="1">Network Load Balancers</xsl:template>
  <xsl:template match="*[name()='shared' and @id='opensearch']" priority="1">OpenSearch</xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSStack']" priority="1"><phrase api="web"><shared id="OPSStack"/></phrase><phrase api="sdk">Amazon Web Services OpsWorks Stacks</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PCAshort']" priority="1">ACM Private CA</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PClong']" priority="1"><phrase api="web"><shared id="PClong"/></phrase><phrase api="sdk">Amazon Web Services Promotional Credit</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN-Email-API']" priority="1">Amazon Pinpoint Email API</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN-SMS-Voice-API']" priority="1">Amazon Pinpoint SMS and Voice API</xsl:template>
  <xsl:template match="*[name()='shared' and @id='PLlong']" priority="1"><phrase api="web"><shared id="PLlong"/></phrase><phrase api="sdk">Amazon Web Services Price List</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='privatelink']" priority="1"><phrase api="web"><shared id="privatelink"/></phrase><phrase api="sdk">Amazon Web Services PrivateLink</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PyCharmIDE']" priority="1">PyCharm IDE</xsl:template>
  <xsl:template match="*[name()='shared' and @id='QLDBfirst']" priority="1">Amazon Quantum Ledger Database (Amazon QLDB)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDS-VMW']" priority="1">Amazon RDS on VMware</xsl:template>
  <xsl:template match="*[name()='shared' and @id='REKimg']" priority="1">Amazon Rekognition Image</xsl:template>
  <xsl:template match="*[name()='shared' and @id='REKvid']" priority="1">Amazon Rekognition Video</xsl:template>
  <xsl:template match="*[name()='shared' and @id='REPOST']" priority="1"><phrase api="web"><shared id="REPOST"/></phrase><phrase api="sdk">re:Post</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-key']" priority="1">root key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-keys']" priority="1">root keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-key-cap']" priority="1">Root key</xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-keys-cap']" priority="1">Root keys</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-glacier']" priority="1">S3 Glacier Flexible Retrieval</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-glacier-ir']" priority="1">S3 Glacier Instant Retrieval</xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-deep-archive']" priority="1">S3 Glacier Deep Archive</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDKCodeSampCat']" priority="1"><phrase api="web"><shared id="SDKCodeSampCat"/></phrase><phrase api="sdk">Amazon Web Services Code Sample Catalog</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='simple-ad']" priority="1">Simple AD</xsl:template>
  <xsl:template match="*[name()='shared' and @id='Swift']" priority="1">SDK for Swift</xsl:template>
  <xsl:template match="*[name()='shared' and @id='Swiftlong']" priority="1"><phrase api="web"><shared id="Swiftlong"/></phrase><phrase api="sdk">SDK for Swift</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowball']" priority="1">Snowball</xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowballlong']" priority="1"><phrase api="web"><shared id="Snowballlong"/></phrase><phrase api="sdk">Snowball</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowconsole']" priority="1"><phrase api="web"><shared id="Snowconsole"/></phrase><phrase api="sdk">Amazon Web Services Snow Family Management Console</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowlong']" priority="1">Snowball appliance</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowDevices']" priority="1">Snow Family devices</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowDeviceslong']" priority="1"><phrase api="web"><shared id="SnowDeviceslong"/></phrase><phrase api="sdk">Snow Family devices</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowFamily']" priority="1">Snow Family</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowFamilylong']" priority="1"><phrase api="web"><shared id="SnowFamilylong"/></phrase><phrase api="sdk">Snow Family</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SP-singular']" priority="1">Savings Plan</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPs']" priority="1">Savings Plans</xsl:template>
  <xsl:template match="*[name()='shared' and @id='SLN']" priority="1">Amazon States Language</xsl:template>
  <xsl:template match="*[name()='shared' and @id='STSshort']" priority="1"><phrase api="web"><shared id="STSshort"/></phrase><phrase api="sdk">Amazon Web Services STS</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SvrlessAppTitle']" priority="1"><phrase api="web"><shared id="SvrlessAppTitle"/></phrase><phrase api="sdk">Amazon Web Services Serverless Application</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TFW']" priority="1"><phrase api="web"><shared id="TFW"/></phrase><phrase api="sdk">Amazon Web Services Tools for Windows</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME-query']" priority="1">Amazon Timestream Query</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME-write']" priority="1">Amazon Timestream Write</xsl:template>
  <xsl:template match="*[name()='shared' and @id='TTSshort']" priority="1">Toolkit for Azure DevOps</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VS']" priority="1">Visual Studio</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VS-req-ver']" priority="1">Visual Studio 2010 or later</xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCTKMarketName']" priority="1"><phrase api="web"><shared id="VSCTKMarketName"/></phrase><phrase api="sdk">Amazon Web Services Toolkit for Visual Studio Code</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFclassic']" priority="1"><phrase api="web"><shared id="WAFclassic"/></phrase><phrase api="sdk">WAF Classic</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFClassicRegional']" priority="1"><phrase api="web"><shared id="WAFClassicRegional"/></phrase><phrase api="sdk">WAF Classic Regional</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAMfirst']" priority="1">Amazon WorkSpaces Application Manager (Amazon WAM)</xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-dotnetsdk']" priority="1"><phrase api="web"><shared id="xray-dotnetsdk"/></phrase><phrase api="sdk">Amazon Web Services X-Ray SDK for .NET</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-javasdk']" priority="1"><phrase api="web"><shared id="xray-javasdk"/></phrase><phrase api="sdk">Amazon Web Services X-Ray SDK for Java</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-nodejssdk']" priority="1"><phrase api="web"><shared id="xray-nodejssdk"/></phrase><phrase api="sdk">Amazon Web Services X-Ray SDK for Node.js</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-pythonsdk']" priority="1"><phrase api="web"><shared id="xray-pythonsdk"/></phrase><phrase api="sdk">Amazon Web Services X-Ray SDK for Python</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DCA-top-secret']" priority="1"><phrase api="web"><shared id="DCA-top-secret"/></phrase><phrase api="sdk">AWS</phrase></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LCK-secret']" priority="1"><phrase api="web"><shared id="LCK-secret"/></phrase><phrase api="sdk">AWS</phrase></xsl:template>

  <xsl:template match="*[name()='shared']" priority=".5"><xsl:message terminate="yes">ERROR: The shared element with id=<xsl:value-of select="@id"/> is undefined. Please check to make sure the ID is correct.</xsl:message></xsl:template>
<xsl:template match="node() | @*" priority="-1"><xsl:copy><xsl:apply-templates select="node() | @*"/></xsl:copy></xsl:template>
</xsl:stylesheet>