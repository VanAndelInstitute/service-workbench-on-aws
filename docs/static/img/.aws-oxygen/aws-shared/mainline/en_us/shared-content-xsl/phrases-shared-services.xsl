<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:character-map name="ascii-to-unicode">
<xsl:output-character character="&#8224;" string="&amp;#8224;"/>
<xsl:output-character character="&#8225;" string="&amp;#8225;"/>
<xsl:output-character character="&#8212;" string="&amp;#8212;"/>
<xsl:output-character character="&#8250;" string="&amp;#8250;"/>
<xsl:output-character character="&#160;" string="&amp;#160;"/></xsl:character-map>
<xsl:output method="xml" use-character-maps="ascii-to-unicode"/>
<!--Account Management-->
<!--AWS Account Management-->
  <xsl:template match="*[name()='shared' and @id='ACCTlong']" priority="1"><xsl:text>AWS Account Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACCT']" priority="1"><xsl:text>Account Management</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-account']" priority="1"><xsl:text>AWS Account Management</xsl:text></xsl:template>
<!--**************************************-->

<!--Activate Console-->
<!--AWS Activate Console-->
  <xsl:template match="*[name()='shared' and @id='ActivateConsolelong']" priority="1"><xsl:text>AWS Activate Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ActivateConsole']" priority="1"><xsl:text>Activate Console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-activate-console']" priority="1"><xsl:text>AWS Activate Console</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Agent Service-->
<!--AWS Agent Service-->
  <xsl:template match="*[name()='shared' and @id='AGTSVClong']" priority="1"><xsl:text>AWS Agent Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AGTSVC']" priority="1"><xsl:text>AWS Agent Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AgentService']" priority="1"><xsl:text>AWS Agent Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Alexa for Business-->
<!--Alexa for Business-->
  <xsl:template match="*[name()='shared' and @id='ABUSlong']" priority="1"><xsl:text>Alexa for Business</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABUS']" priority="1"><xsl:text>Alexa for Business</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-a4b']" priority="1"><xsl:text>Alexa for Business</xsl:text></xsl:template>
<!--**************************************-->

<!--Alexa Top Sites-->
<!--Alexa Top Sites-->
  <xsl:template match="*[name()='shared' and @id='ATSlong']" priority="1"><xsl:text>Alexa Top Sites</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATS']" priority="1"><xsl:text>Alexa Top Sites</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ats']" priority="1"><xsl:text>Alexa Top Sites</xsl:text></xsl:template>
<!--**************************************-->

<!--Alexa Web Information Service-->
<!--Alexa Web Information Service-->
  <xsl:template match="*[name()='shared' and @id='AWISlong']" priority="1"><xsl:text>Alexa Web Information Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWIS']" priority="1"><xsl:text>Alexa Web Information Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awis']" priority="1"><xsl:text>Alexa Web Information Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amplify-->
<!--Alexa Web Information Service-->
  <xsl:template match="*[name()='shared' and @id='AMPLIFYlong']" priority="1"><xsl:text>AWS Amplify</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMPLIFY']" priority="1"><xsl:text>Amplify</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-amplify']" priority="1"><xsl:text>AWS Amplify</xsl:text></xsl:template>
<!--**************************************-->

<!--API Gateway-->
<!--Amazon API Gateway-->
  <xsl:template match="*[name()='shared' and @id='ABPlong']" priority="1"><xsl:text>Amazon API Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABP']" priority="1"><xsl:text>API Gateway</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-apigateway']" priority="1"><xsl:text>Amazon API Gateway</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS AppConfig-->
<!--AppConfig-->
  <xsl:template match="*[name()='shared' and @id='APPClong']" priority="1"><xsl:text>AWS AppConfig</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APPC']" priority="1"><xsl:text>AWS AppConfig</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-appconfig']" priority="1"><xsl:text>AWS AppConfig</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS AppConfig Data-->
<!--AWS AppConfig Data-->
  <xsl:template match="*[name()='shared' and @id='AppConfigDatalong']" priority="1"><xsl:text>AWS AppConfig Data</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AppConfigData']" priority="1"><xsl:text>AWS AppConfig Data</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-appconfig-appconfigdata']" priority="1"><xsl:text>AWS AppConfig Data</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon AppFlow-->
<!--Amazon AppFlow-->
  <xsl:template match="*[name()='shared' and @id='APFLlong']" priority="1"><xsl:text>Amazon AppFlow</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APFL']" priority="1"><xsl:text>Amazon AppFlow</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-apfl']" priority="1"><xsl:text>Amazon AppFlow</xsl:text></xsl:template>
<!--**************************************-->

<!--Application Discovery Service-->
<!--AWS Application Discovery Service-->
  <xsl:template match="*[name()='shared' and @id='APP-DSlong']" priority="1"><xsl:text>AWS Application Discovery Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APP-DS']" priority="1"><xsl:text>Application Discovery Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-applicationdiscoveryservice']" priority="1"><xsl:text>AWS Application Discovery Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Application Migration Service-->
<!--AWS Application Migration Service-->
  <xsl:template match="*[name()='shared' and @id='MGNlong']" priority="1"><xsl:text>AWS Application Migration Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGN']" priority="1"><xsl:text>Application Migration Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mgn']" priority="1"><xsl:text>AWS Application Migration Service</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudWatch Application Insights-->
<!--Amazon CloudWatch Application Insights-->
  <xsl:template match="*[name()='shared' and @id='AIlong']" priority="1"><xsl:text>Amazon CloudWatch Application Insights</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AI']" priority="1"><xsl:text>CloudWatch Application Insights</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ai']" priority="1"><xsl:text>Amazon CloudWatch Application Insights</xsl:text></xsl:template>
<!--**************************************-->

<!--App Mesh-->
<!--AWS App Mesh-->
  <xsl:template match="*[name()='shared' and @id='MESHlong']" priority="1"><xsl:text>AWS App Mesh</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MESH']" priority="1"><xsl:text>App Mesh</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lattice']" priority="1"><xsl:text>AWS App Mesh</xsl:text></xsl:template>
<!--**************************************-->

<!--App Runner-->
<!--App Runner-->
  <xsl:template match="*[name()='shared' and @id='ARlong']" priority="1"><xsl:text>AWS App Runner</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AR']" priority="1"><xsl:text>App Runner</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-apprunner']" priority="1"><xsl:text>AWS App Runner</xsl:text></xsl:template>
<!--**************************************-->

<!--AppStream 2.0-->
<!--Amazon AppStream 2.0-->
  <xsl:template match="*[name()='shared' and @id='AAS2long']" priority="1"><xsl:text>Amazon AppStream 2.0</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AAS2']" priority="1"><xsl:text>AppStream 2.0</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-appstream2']" priority="1"><xsl:text>Amazon AppStream 2.0</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon AppStream-->
<!--Amazon AppStream-->
  <xsl:template match="*[name()='shared' and @id='AASlong']" priority="1"><xsl:text>Amazon AppStream</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AAS']" priority="1"><xsl:text>Amazon AppStream</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-appstream']" priority="1"><xsl:text>Amazon AppStream</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS AppSync-->
<!--AWS AppSync-->
  <xsl:template match="*[name()='shared' and @id='APSYlong']" priority="1"><xsl:text>AWS AppSync</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APSY']" priority="1"><xsl:text>AWS AppSync</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-appsync']" priority="1"><xsl:text>AWS AppSync</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Artifact-->
<!--AWS Artifact-->
  <xsl:template match="*[name()='shared' and @id='ARTlong']" priority="1"><xsl:text>AWS Artifact</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ART']" priority="1"><xsl:text>AWS Artifact</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-artifact']" priority="1"><xsl:text>AWS Artifact</xsl:text></xsl:template>
<!--**************************************-->

<!--Athena-->
<!--Amazon Athena-->
  <xsl:template match="*[name()='shared' and @id='ATElong']" priority="1"><xsl:text>Amazon Athena</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATE']" priority="1"><xsl:text>Athena</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-athena']" priority="1"><xsl:text>Amazon Athena</xsl:text></xsl:template>
<!--**************************************-->

<!--Audit Manager-->
<!--Audit Manager-->
  <xsl:template match="*[name()='shared' and @id='AMlong']" priority="1"><xsl:text>AWS Audit Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AM']" priority="1"><xsl:text>Audit Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-am']" priority="1"><xsl:text>AWS Audit Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora-->
<!--Amazon Aurora-->
  <xsl:template match="*[name()='shared' and @id='AURlong']" priority="1"><xsl:text>Amazon Aurora</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AUR']" priority="1"><xsl:text>Aurora</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurora']" priority="1"><xsl:text>Amazon Aurora</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-->
<!--Amazon Aurora PostgreSQL-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgres']" priority="1"><xsl:text>Amazon Aurora PostgreSQL</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgres']" priority="1"><xsl:text>Aurora PostgreSQL</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-rds.aurora.postgresql']" priority="1"><xsl:text>Amazon Aurora PostgreSQL</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-Compatible-->
<!--Amazon Aurora PostgreSQL-Compatible-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgresmed']" priority="1"><xsl:text>Amazon Aurora PostgreSQL-Compatible</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgresmed']" priority="1"><xsl:text>Aurora PostgreSQL-Compatible</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurpostgresmed']" priority="1"><xsl:text>Amazon Aurora PostgreSQL-Compatible</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora PostgreSQL-Compatible Edition-->
<!--Amazon Aurora PostgreSQL-Compatible Edition-->
  <xsl:template match="*[name()='shared' and @id='AURlongPostgreslong']" priority="1"><xsl:text>Amazon Aurora PostgreSQL-Compatible Edition</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURPostgreslong']" priority="1"><xsl:text>Aurora PostgreSQL-Compatible Edition</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurpostgreslong']" priority="1"><xsl:text>Amazon Aurora PostgreSQL-Compatible Edition</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora MySQL-->
<!--Amazon Aurora MySQL-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQL']" priority="1"><xsl:text>Amazon Aurora MySQL</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQL']" priority="1"><xsl:text>Aurora MySQL</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurmysql']" priority="1"><xsl:text>Amazon Aurora MySQL</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora MySQL-Compatible-->
<!--Amazon Aurora MySQL-Compatible-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQLmed']" priority="1"><xsl:text>Amazon Aurora MySQL-Compatible</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQLmed']" priority="1"><xsl:text>Aurora MySQL-Compatible</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurmysqlmed']" priority="1"><xsl:text>Amazon Aurora MySQL-Compatible</xsl:text></xsl:template>
<!--**************************************-->

<!--Aurora MySQL-Compatible Edition-->
<!--Amazon Aurora MySQL-Compatible Edition-->
  <xsl:template match="*[name()='shared' and @id='AURlongMySQLlong']" priority="1"><xsl:text>Amazon Aurora MySQL-Compatible Edition</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AURMySQLlong']" priority="1"><xsl:text>Aurora MySQL-Compatible Edition</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aurmysqllong']" priority="1"><xsl:text>Amazon Aurora MySQL-Compatible Edition</xsl:text></xsl:template>
<!--**************************************-->

<!--Auto Scaling Plans-->
<!--AWS Auto Scaling Plans-->
  <xsl:template match="*[name()='shared' and @id='AWS-ASPlanslong']" priority="1"><xsl:text>AWS Auto Scaling Plans</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-ASPlans']" priority="1"><xsl:text>Auto Scaling Plans</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-autoscalingplans']" priority="1"><xsl:text>AWS Auto Scaling Plans</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Auto Scaling-->
<!--Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='AWS-ASlong']" priority="1"><xsl:text>AWS Auto Scaling</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-AS']" priority="1"><xsl:text>AWS Auto Scaling</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AWS-AS']" priority="1"><xsl:text>AWS Auto Scaling</xsl:text></xsl:template>
<!--**************************************-->

<!--Application Auto Scaling-->
<!--Application Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='APP-ASlong']" priority="1"><xsl:text>Application Auto Scaling</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APP-AS']" priority="1"><xsl:text>Application Auto Scaling</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-applicationautoscaling']" priority="1"><xsl:text>Application Auto Scaling</xsl:text></xsl:template>
<!--**************************************-->

<!--Auto Scaling-->
<!--EC2 Auto Scaling-->
  <xsl:template match="*[name()='shared' and @id='ASlong']" priority="1"><xsl:text>Amazon EC2 Auto Scaling</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AS']" priority="1"><xsl:text>Auto Scaling</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-autoscaling']" priority="1"><xsl:text>Amazon EC2 Auto Scaling</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Backup-->
<!--AWS Backup-->
  <xsl:template match="*[name()='shared' and @id='BKPlong']" priority="1"><xsl:text>AWS Backup</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BKP']" priority="1"><xsl:text>AWS Backup</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Cryo']" priority="1"><xsl:text>AWS Backup</xsl:text></xsl:template>
<!--**************************************-->

<!--Backup gateway-->
<!--AWS Backup gateway-->
  <xsl:template match="*[name()='shared' and @id='BGWlong']" priority="1"><xsl:text>AWS Backup gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BGW']" priority="1"><xsl:text>Backup gateway</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-backup-gateway']" priority="1"><xsl:text>AWS Backup gateway</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Batch-->
<!--AWS Batch-->
  <xsl:template match="*[name()='shared' and @id='BATCHlong']" priority="1"><xsl:text>AWS Batch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BATCH']" priority="1"><xsl:text>AWS Batch</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-batch']" priority="1"><xsl:text>AWS Batch</xsl:text></xsl:template>
<!--**************************************-->

<!--Billing and Cost Management-->
<!--AWS Billing and Cost Management-->
  <xsl:template match="*[name()='shared' and @id='ABlong']" priority="1"><xsl:text>AWS Billing and Cost Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AB']" priority="1"><xsl:text>Billing and Cost Management</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awsbillingconsole']" priority="1"><xsl:text>AWS Billing and Cost Management</xsl:text></xsl:template>
<!--**************************************-->

<!--Billing Conductor-->
<!--AWS Billing Conductor-->
  <xsl:template match="*[name()='shared' and @id='ABClong']" priority="1"><xsl:text>AWS Billing Conductor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABC']" priority="1"><xsl:text>Billing Conductor</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-billingconductor']" priority="1"><xsl:text>AWS Billing Conductor</xsl:text></xsl:template>
<!--**************************************-->

<!--Cost Management Console-->
<!--AWS Cost Management Console-->
  <xsl:template match="*[name()='shared' and @id='CMConsolelong']" priority="1"><xsl:text>AWS Cost Management Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMConsole']" priority="1"><xsl:text>Cost Management Console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awscostmanagementconsole']" priority="1"><xsl:text>AWS Cost Management Console</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Documentation-->
<!--AWS Documentation-->
  <xsl:template match="*[name()='shared' and @id='AWSDOCSlong']" priority="1"><xsl:text>AWS Documentation</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDOCS']" priority="1"><xsl:text>AWS Documentation</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awsdocs']" priority="1"><xsl:text>AWS Documentation</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Management Console-->
<!--AWS Management Console-->
  <xsl:template match="*[name()='shared' and @id='consolelong']" priority="1"><xsl:text>AWS Management Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='console']" priority="1"><xsl:text>AWS Management Console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awsmanagementconsole']" priority="1"><xsl:text>AWS Management Console</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Console Home-->
<!--AWS Console Home-->
  <xsl:template match="*[name()='shared' and @id='consolehomelong']" priority="1"><xsl:text>AWS Console Home</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='consolehome']" priority="1"><xsl:text>AWS Console Home</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-consolehome']" priority="1"><xsl:text>AWS Console Home</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Marketing Website-->
<!--AWS Marketing Website-->
  <xsl:template match="*[name()='shared' and @id='MarketingSitelong']" priority="1"><xsl:text>AWS Marketing Website</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MarketingSite']" priority="1"><xsl:text>AWS Marketing Website</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awsmarketingwebsite']" priority="1"><xsl:text>AWS Marketing Website</xsl:text></xsl:template>
<!--**************************************-->

<!--Cost Explorer-->
<!--Cost Explorer-->
  <xsl:template match="*[name()='shared' and @id='ce-long']" priority="1"><xsl:text>AWS Cost Explorer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ce']" priority="1"><xsl:text>Cost Explorer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ce']" priority="1"><xsl:text>AWS Cost Explorer</xsl:text></xsl:template>
<!--**************************************-->

<!--Blox-->
<!--Blox-->
  <xsl:template match="*[name()='shared' and @id='BLXlong']" priority="1"><xsl:text>Blox</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BLX']" priority="1"><xsl:text>Blox</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-BLX']" priority="1"><xsl:text>Blox</xsl:text></xsl:template>
<!--**************************************-->

<!--Braket-->
<!--Amazon Braket-->
  <xsl:template match="*[name()='shared' and @id='BRAKETlong']" priority="1"><xsl:text>Amazon Braket</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BRAKET']" priority="1"><xsl:text>Braket</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-braket']" priority="1"><xsl:text>Amazon Braket</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS BugBust-->
<!--AWS BugBust-->
  <xsl:template match="*[name()='shared' and @id='ABBlong']" priority="1"><xsl:text>AWS BugBust</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ABB']" priority="1"><xsl:text>AWS BugBust</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-bugbust']" priority="1"><xsl:text>AWS BugBust</xsl:text></xsl:template>
<!--**************************************-->

<!--ACM-->
<!--AWS Certificate Manager-->
  <xsl:template match="*[name()='shared' and @id='ACMlong']" priority="1"><xsl:text>AWS Certificate Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACM']" priority="1"><xsl:text>ACM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-certificatemanager']" priority="1"><xsl:text>AWS Certificate Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Chatbot-->
<!--Chatbot-->
  <xsl:template match="*[name()='shared' and @id='CBTlong']" priority="1"><xsl:text>AWS Chatbot</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CBT']" priority="1"><xsl:text>AWS Chatbot</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CBT']" priority="1"><xsl:text>AWS Chatbot</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Chime-->
<!--Amazon Chime-->
  <xsl:template match="*[name()='shared' and @id='CHMlong']" priority="1"><xsl:text>Amazon Chime</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM']" priority="1"><xsl:text>Amazon Chime</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-chime']" priority="1"><xsl:text>Amazon Chime</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Cloud9-->
<!--AWS Cloud9-->
  <xsl:template match="*[name()='shared' and @id='AC9long']" priority="1"><xsl:text>AWS Cloud9</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AC9']" priority="1"><xsl:text>AWS Cloud9</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloud9']" priority="1"><xsl:text>AWS Cloud9</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CDI-->
<!--Cloud Digital Interface (CDI)-->
  <xsl:template match="*[name()='shared' and @id='CDIlong']" priority="1"><xsl:text>AWS Cloud Digital Interface</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDI']" priority="1"><xsl:text>AWS CDI</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CDI']" priority="1"><xsl:text>AWS Cloud Digital Interface</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CDK-->
<!--AWS Cloud Development Kit (CDK)-->
  <xsl:template match="*[name()='shared' and @id='CDKlong']" priority="1"><xsl:text>AWS Cloud Development Kit (CDK)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDK']" priority="1"><xsl:text>AWS CDK</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws-cdk']" priority="1"><xsl:text>AWS Cloud Development Kit (CDK)</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Cloud Map-->
<!--AWS Cloud Map-->
  <xsl:template match="*[name()='shared' and @id='CMAPlong']" priority="1"><xsl:text>AWS Cloud Map</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMAP']" priority="1"><xsl:text>AWS Cloud Map</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-servicediscovery']" priority="1"><xsl:text>AWS Cloud Map</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CloudFormation-->
<!--CloudFormation-->
  <xsl:template match="*[name()='shared' and @id='CFNlong']" priority="1"><xsl:text>AWS CloudFormation</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFN']" priority="1"><xsl:text>AWS CloudFormation</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudformation']" priority="1"><xsl:text>AWS CloudFormation</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudFront-->
<!--CloudFront-->
  <xsl:template match="*[name()='shared' and @id='CFlong']" priority="1"><xsl:text>Amazon CloudFront</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CF']" priority="1"><xsl:text>CloudFront</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudfront']" priority="1"><xsl:text>Amazon CloudFront</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CloudHSM-->
<!--CloudHSM-->
  <xsl:template match="*[name()='shared' and @id='HSMlong']" priority="1"><xsl:text>AWS CloudHSM</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='HSM']" priority="1"><xsl:text>AWS CloudHSM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudhsmv2']" priority="1"><xsl:text>AWS CloudHSM</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CloudHSM Classic-->
<!--AWS CloudHSM Classic-->
  <xsl:template match="*[name()='shared' and @id='HSMClassiclong']" priority="1"><xsl:text>AWS CloudHSM Classic</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='HSMClassic']" priority="1"><xsl:text>AWS CloudHSM Classic</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudhsm']" priority="1"><xsl:text>AWS CloudHSM Classic</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon CloudSearch-->
<!--Amazon CloudSearch-->
  <xsl:template match="*[name()='shared' and @id='CSlong']" priority="1"><xsl:text>Amazon CloudSearch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CS']" priority="1"><xsl:text>Amazon CloudSearch</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudsearch']" priority="1"><xsl:text>Amazon CloudSearch</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudShell-->
<!--CloudShell-->
  <xsl:template match="*[name()='shared' and @id='CShell']" priority="1"><xsl:text>AWS CloudShell</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CShellshort']" priority="1"><xsl:text>CloudShell</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CShellshort']" priority="1"><xsl:text>AWS CloudShell</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudTrail-->
<!--AWS CloudTrail-->
  <xsl:template match="*[name()='shared' and @id='CTlong']" priority="1"><xsl:text>AWS CloudTrail</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CT']" priority="1"><xsl:text>CloudTrail</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudtrail']" priority="1"><xsl:text>AWS CloudTrail</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudWatch-->
<!--Amazon CloudWatch-->
  <xsl:template match="*[name()='shared' and @id='CWlong']" priority="1"><xsl:text>Amazon CloudWatch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CW']" priority="1"><xsl:text>CloudWatch</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudwatch']" priority="1"><xsl:text>Amazon CloudWatch</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudWatch Events-->
<!--Amazon CloudWatch Events-->
  <xsl:template match="*[name()='shared' and @id='CWElong']" priority="1"><xsl:text>Amazon CloudWatch Events</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CWE']" priority="1"><xsl:text>CloudWatch Events</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudwatchevents']" priority="1"><xsl:text>Amazon CloudWatch Events</xsl:text></xsl:template>
<!--**************************************-->

<!--CloudWatch Logs-->
<!--Amazon CloudWatch Logs-->
  <xsl:template match="*[name()='shared' and @id='CWLlong']" priority="1"><xsl:text>Amazon CloudWatch Logs</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CWL']" priority="1"><xsl:text>CloudWatch Logs</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudwatchlogs']" priority="1"><xsl:text>Amazon CloudWatch Logs</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeArtifact-->
<!--CodeArtifact-->
  <xsl:template match="*[name()='shared' and @id='ACAlong']" priority="1"><xsl:text>AWS CodeArtifact</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACA']" priority="1"><xsl:text>CodeArtifact</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ACA']" priority="1"><xsl:text>AWS CodeArtifact</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeBuild-->
<!--AWS CodeBuild-->
  <xsl:template match="*[name()='shared' and @id='ACBlong']" priority="1"><xsl:text>AWS CodeBuild</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACB']" priority="1"><xsl:text>CodeBuild</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-codebuild']" priority="1"><xsl:text>AWS CodeBuild</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeCommit-->
<!--AWS CodeCommit-->
  <xsl:template match="*[name()='shared' and @id='ACClong']" priority="1"><xsl:text>AWS CodeCommit</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACC']" priority="1"><xsl:text>CodeCommit</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-codecommit']" priority="1"><xsl:text>AWS CodeCommit</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeDeploy-->
<!--AWS CodeDeploy-->
  <xsl:template match="*[name()='shared' and @id='ACDlong']" priority="1"><xsl:text>AWS CodeDeploy</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACD']" priority="1"><xsl:text>CodeDeploy</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-codedeploy']" priority="1"><xsl:text>AWS CodeDeploy</xsl:text></xsl:template>
<!--**************************************-->

<!--CodePipeline-->
<!--AWS CodePipeline-->
  <xsl:template match="*[name()='shared' and @id='ACPlong']" priority="1"><xsl:text>AWS CodePipeline</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACP']" priority="1"><xsl:text>CodePipeline</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-codepipeline']" priority="1"><xsl:text>AWS CodePipeline</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeGuru-->
<!--CodeGuru-->
  <xsl:template match="*[name()='shared' and @id='GURUALLlong']" priority="1"><xsl:text>Amazon CodeGuru</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GURUALLshort']" priority="1"><xsl:text>CodeGuru</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GURUALLshort']" priority="1"><xsl:text>Amazon CodeGuru</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeGuru Profiler-->
<!--CodeGuru Profiler-->
  <xsl:template match="*[name()='shared' and @id='ACPRlong']" priority="1"><xsl:text>Amazon CodeGuru Profiler</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACPR']" priority="1"><xsl:text>CodeGuru Profiler</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ACPR']" priority="1"><xsl:text>Amazon CodeGuru Profiler</xsl:text></xsl:template>
<!--**************************************-->

<!--CodeGuru Reviewer-->
<!--CodeGuru Reviewer-->
  <xsl:template match="*[name()='shared' and @id='ACRElong']" priority="1"><xsl:text>Amazon CodeGuru Reviewer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACRE']" priority="1"><xsl:text>CodeGuru Reviewer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ACRE']" priority="1"><xsl:text>Amazon CodeGuru Reviewer</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CodeStar-->
<!--AWS CodeStar-->
  <xsl:template match="*[name()='shared' and @id='ACSlong']" priority="1"><xsl:text>AWS CodeStar</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ACS']" priority="1"><xsl:text>AWS CodeStar</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-codestar']" priority="1"><xsl:text>AWS CodeStar</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Cognito-->
<!--Amazon Cognito-->
  <xsl:template match="*[name()='shared' and @id='COGlong']" priority="1"><xsl:text>Amazon Cognito</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='COG']" priority="1"><xsl:text>Amazon Cognito</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cognito']" priority="1"><xsl:text>Amazon Cognito</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Cognito Sync-->
<!--Amazon Cognito Sync-->
  <xsl:template match="*[name()='shared' and @id='COGSYNClong']" priority="1"><xsl:text>Amazon Cognito Sync</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGSYNC']" priority="1"><xsl:text>Amazon Cognito Sync</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cognitosync']" priority="1"><xsl:text>Amazon Cognito Sync</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS CLI-->
<!--Command Line Interface (CLI)-->
  <xsl:template match="*[name()='shared' and @id='CLIlong']" priority="1"><xsl:text>AWS Command Line Interface</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLI']" priority="1"><xsl:text>AWS CLI</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CLI']" priority="1"><xsl:text>AWS Command Line Interface</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Comprehend-->
<!--Amazon Comprehend-->
  <xsl:template match="*[name()='shared' and @id='CMPlong']" priority="1"><xsl:text>Amazon Comprehend</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMP']" priority="1"><xsl:text>Amazon Comprehend</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Comprehend']" priority="1"><xsl:text>Amazon Comprehend</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Comprehend Medical-->
<!--Amazon Comprehend Medical-->
  <xsl:template match="*[name()='shared' and @id='CMPMlong']" priority="1"><xsl:text>Amazon Comprehend Medical</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMPM']" priority="1"><xsl:text>Amazon Comprehend Medical</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-comprehendmedical']" priority="1"><xsl:text>Amazon Comprehend Medical</xsl:text></xsl:template>
<!--**************************************-->

<!--Compute Optimizer-->
<!--Compute Optimizer-->
  <xsl:template match="*[name()='shared' and @id='COlong']" priority="1"><xsl:text>AWS Compute Optimizer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CO']" priority="1"><xsl:text>Compute Optimizer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CO']" priority="1"><xsl:text>AWS Compute Optimizer</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Config-->
<!--Config-->
  <xsl:template match="*[name()='shared' and @id='CClong']" priority="1"><xsl:text>AWS Config</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CC']" priority="1"><xsl:text>AWS Config</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awsconfig']" priority="1"><xsl:text>AWS Config</xsl:text></xsl:template>
<!--**************************************-->

<!--Cloud Control API-->
<!--AWS Cloud Control API-->
  <xsl:template match="*[name()='shared' and @id='CCAPIlong']" priority="1"><xsl:text>AWS Cloud Control API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCAPI']" priority="1"><xsl:text>Cloud Control API</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-cloudcontrolapi']" priority="1"><xsl:text>AWS Cloud Control API</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Config Rules-->
<!--Config Rules-->
  <xsl:template match="*[name()='shared' and @id='CCRlong']" priority="1"><xsl:text>AWS Config Rules</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCR']" priority="1"><xsl:text>AWS Config Rules</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CCR']" priority="1"><xsl:text>AWS Config Rules</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Connect-->
<!--Amazon Connect-->
  <xsl:template match="*[name()='shared' and @id='CONlong']" priority="1"><xsl:text>Amazon Connect</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CON']" priority="1"><xsl:text>Amazon Connect</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lily']" priority="1"><xsl:text>Amazon Connect</xsl:text></xsl:template>
<!--**************************************-->

<!--Connector Service-->
<!--AWS Connector Service-->
  <xsl:template match="*[name()='shared' and @id='AWSConnectorServicelong']" priority="1"><xsl:text>AWS Connector Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSConnectorService']" priority="1"><xsl:text>Connector Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-acs']" priority="1"><xsl:text>AWS Connector Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Console Mobile Application-->
<!--Console Mobile Application-->
  <xsl:template match="*[name()='shared' and @id='CMAlong']" priority="1"><xsl:text>AWS Console Mobile Application</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMA']" priority="1"><xsl:text>Console Mobile Application</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CMA']" priority="1"><xsl:text>AWS Console Mobile Application</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Control Tower-->
<!--Control Tower-->
  <xsl:template match="*[name()='shared' and @id='CTowerlong']" priority="1"><xsl:text>AWS Control Tower</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CTower']" priority="1"><xsl:text>AWS Control Tower</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CTower']" priority="1"><xsl:text>AWS Control Tower</xsl:text></xsl:template>
<!--**************************************-->

<!--Cost Explorer Service-->
<!--AWS Cost Explorer Service-->
  <xsl:template match="*[name()='shared' and @id='AWSCostExplorerServicelong']" priority="1"><xsl:text>AWS Cost Explorer Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSCostExplorerService']" priority="1"><xsl:text>Cost Explorer Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AWSCostExplorer']" priority="1"><xsl:text>AWS Cost Explorer Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Data Lifecycle Manager-->
<!--Amazon Data Lifecycle Manager-->
  <xsl:template match="*[name()='shared' and @id='DLMlong']" priority="1"><xsl:text>Amazon Data Lifecycle Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DLM']" priority="1"><xsl:text>Amazon Data Lifecycle Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dlm']" priority="1"><xsl:text>Amazon Data Lifecycle Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Data Exchange-->
<!--AWS Data Exchange-->
  <xsl:template match="*[name()='shared' and @id='ADElong']" priority="1"><xsl:text>AWS Data Exchange</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ADE']" priority="1"><xsl:text>AWS Data Exchange</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dataexchange']" priority="1"><xsl:text>AWS Data Exchange</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Data Pipeline-->
<!--Data Pipeline-->
  <xsl:template match="*[name()='shared' and @id='AWSDPlong']" priority="1"><xsl:text>AWS Data Pipeline</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDP']" priority="1"><xsl:text>AWS Data Pipeline</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-datapipeline']" priority="1"><xsl:text>AWS Data Pipeline</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS DMS-->
<!--Database Migration Service-->
  <xsl:template match="*[name()='shared' and @id='DMSlong']" priority="1"><xsl:text>AWS Database Migration Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DMS']" priority="1"><xsl:text>AWS DMS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-databasemigrationservice']" priority="1"><xsl:text>AWS Database Migration Service</xsl:text></xsl:template>
<!--**************************************-->

<!--DataSync-->
<!--AWS DataSync-->
  <xsl:template match="*[name()='shared' and @id='DSYlong']" priority="1"><xsl:text>AWS DataSync</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DSY']" priority="1"><xsl:text>DataSync</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-datasync']" priority="1"><xsl:text>AWS DataSync</xsl:text></xsl:template>
<!--**************************************-->

<!--DLAMI-->
<!--Deep Learning AMI-->
  <xsl:template match="*[name()='shared' and @id='dlalong']" priority="1"><xsl:text>AWS Deep Learning AMI</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='dla']" priority="1"><xsl:text>DLAMI</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dla']" priority="1"><xsl:text>AWS Deep Learning AMI</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS DeepLens-->
<!--AWS DeepLens-->
  <xsl:template match="*[name()='shared' and @id='DLlong']" priority="1"><xsl:text>AWS DeepLens</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DL']" priority="1"><xsl:text>AWS DeepLens</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-deeplens']" priority="1"><xsl:text>AWS DeepLens</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS DeepRacer-->
<!--AWS DeepRacer-->
  <xsl:template match="*[name()='shared' and @id='AWSDeepRacerlong']" priority="1"><xsl:text>AWS DeepRacer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSDeepRacer']" priority="1"><xsl:text>AWS DeepRacer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-deepracer']" priority="1"><xsl:text>AWS DeepRacer</xsl:text></xsl:template>
<!--**************************************-->

<!--Detective-->
<!--Detective-->
  <xsl:template match="*[name()='shared' and @id='DETlong']" priority="1"><xsl:text>Amazon Detective</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DET']" priority="1"><xsl:text>Detective</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-DET']" priority="1"><xsl:text>Amazon Detective</xsl:text></xsl:template>
<!--**************************************-->

<!--Device Farm-->
<!--AWS Device Farm-->
  <xsl:template match="*[name()='shared' and @id='ATPlong']" priority="1"><xsl:text>AWS Device Farm</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ATP']" priority="1"><xsl:text>Device Farm</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-devicefarm']" priority="1"><xsl:text>AWS Device Farm</xsl:text></xsl:template>
<!--**************************************-->

<!--DevOps Guru-->
<!--Amazon DevOps Guru-->
  <xsl:template match="*[name()='shared' and @id='CGOlong']" priority="1"><xsl:text>Amazon DevOps&#160;Guru</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CGO']" priority="1"><xsl:text>DevOps&#160;Guru</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-devops-guru']" priority="1"><xsl:text>Amazon DevOps&#160;Guru</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon DevPay-->
<!--DevPay-->
  <xsl:template match="*[name()='shared' and @id='DPlong']" priority="1"><xsl:text>Amazon DevPay</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DP']" priority="1"><xsl:text>Amazon DevPay</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-DP']" priority="1"><xsl:text>Amazon DevPay</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Direct Connect-->
<!--AWS Direct Connect-->
  <xsl:template match="*[name()='shared' and @id='AWS-DC-long']" priority="1"><xsl:text>AWS Direct Connect</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DC']" priority="1"><xsl:text>AWS Direct Connect</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-directconnect']" priority="1"><xsl:text>AWS Direct Connect</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Directory Service-->
<!--Directory Service (Galaxy)-->
  <xsl:template match="*[name()='shared' and @id='ADSlong']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ADS']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-directoryservice']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Directory Service-->
<!--Directory Service (Galaxy)-->
  <xsl:template match="*[name()='shared' and @id='GXYlong']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GXY']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GXY']" priority="1"><xsl:text>AWS Directory Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Managed Microsoft AD-->
<!--Managed Microsoft AD-->
  <xsl:template match="*[name()='shared' and @id='managed-ad-long']" priority="1"><xsl:text>AWS Directory Service for Microsoft Active Directory</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='managed-ad']" priority="1"><xsl:text>AWS Managed Microsoft AD</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-managed-ad']" priority="1"><xsl:text>AWS Directory Service for Microsoft Active Directory</xsl:text></xsl:template>
<!--**************************************-->

<!--Cloud Directory-->
<!--Cloud Directory-->
  <xsl:template match="*[name()='shared' and @id='CDSlong']" priority="1"><xsl:text>Amazon Cloud Directory</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDS']" priority="1"><xsl:text>Cloud Directory</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-clouddirectory-pod-0']" priority="1"><xsl:text>Amazon Cloud Directory</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon DocumentDB-->
<!--Amazon DocumentDB-->
  <xsl:template match="*[name()='shared' and @id='DocDBlong']" priority="1"><xsl:text>Amazon DocumentDB (with MongoDB compatibility)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DocDB']" priority="1"><xsl:text>Amazon DocumentDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-amazondocdb']" priority="1"><xsl:text>Amazon DocumentDB (with MongoDB compatibility)</xsl:text></xsl:template>
<!--**************************************-->

<!--DynamoDB-->
<!--DynamoDB-->
  <xsl:template match="*[name()='shared' and @id='DDBlong']" priority="1"><xsl:text>Amazon DynamoDB</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DDB']" priority="1"><xsl:text>DynamoDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dynamodb']" priority="1"><xsl:text>Amazon DynamoDB</xsl:text></xsl:template>
<!--**************************************-->

<!--DAX-->
<!--DynamoDB Accelerator-->
  <xsl:template match="*[name()='shared' and @id='DAXlong']" priority="1"><xsl:text>DynamoDB Accelerator</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DAX']" priority="1"><xsl:text>DAX</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dax']" priority="1"><xsl:text>DynamoDB Accelerator</xsl:text></xsl:template>
<!--**************************************-->

<!--DynamoDB Encryption Client-->
<!--DynamoDB Encryption Client-->
  <xsl:template match="*[name()='shared' and @id='DDBEClong']" priority="1"><xsl:text>Amazon DynamoDB Encryption Client</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DDBEC']" priority="1"><xsl:text>DynamoDB Encryption Client</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-DDBEC']" priority="1"><xsl:text>Amazon DynamoDB Encryption Client</xsl:text></xsl:template>
<!--**************************************-->

<!--DynamoDB Streams-->
<!--Amazon DynamoDB Streams-->
  <xsl:template match="*[name()='shared' and @id='DSlong']" priority="1"><xsl:text>Amazon DynamoDB Streams</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DS']" priority="1"><xsl:text>DynamoDB Streams</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ddbstreams']" priority="1"><xsl:text>Amazon DynamoDB Streams</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EBS-->
<!--EBS-->
  <xsl:template match="*[name()='shared' and @id='EBSlong']" priority="1"><xsl:text>Amazon Elastic Block Store</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBS']" priority="1"><xsl:text>Amazon EBS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ebs']" priority="1"><xsl:text>Amazon Elastic Block Store</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EC2-->
<!--EC2-->
  <xsl:template match="*[name()='shared' and @id='EC2long']" priority="1"><xsl:text>Amazon Elastic Compute Cloud</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2']" priority="1"><xsl:text>Amazon EC2</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2']" priority="1"><xsl:text>Amazon Elastic Compute Cloud</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EC2 console-->
<!--Amazon Elastic Compute Cloud console-->
  <xsl:template match="*[name()='shared' and @id='EC2Consolelong']" priority="1"><xsl:text>Amazon Elastic Compute Cloud console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2Console']" priority="1"><xsl:text>Amazon EC2 console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2console']" priority="1"><xsl:text>Amazon Elastic Compute Cloud console</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EC2 Dedicated Hosts-->
<!--Amazon Elastic Compute Cloud Dedicate Hosts-->
  <xsl:template match="*[name()='shared' and @id='EC2DedicatedHostslong']" priority="1"><xsl:text>Amazon Elastic Compute Cloud Dedicated Hosts</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2DedicatedHosts']" priority="1"><xsl:text>Amazon EC2 Dedicated Hosts</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2dedicatedhosts']" priority="1"><xsl:text>Amazon Elastic Compute Cloud Dedicated Hosts</xsl:text></xsl:template>
<!--**************************************-->

<!--EC2Launch-->
<!--EC2Launch v2-->
  <xsl:template match="*[name()='shared' and @id='EC2LV2long']" priority="1"><xsl:text>EC2Launch v2</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC2LV2']" priority="1"><xsl:text>EC2Launch</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-EC2LV2long']" priority="1"><xsl:text>EC2Launch v2</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon ECR-->
<!--Amazon Elastic Container Registry-->
  <xsl:template match="*[name()='shared' and @id='ECRlong']" priority="1"><xsl:text>Amazon Elastic Container Registry</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECR']" priority="1"><xsl:text>Amazon ECR</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2containerregistry']" priority="1"><xsl:text>Amazon Elastic Container Registry</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon ECR Public-->
<!--Amazon Elastic Container Registry-->
  <xsl:template match="*[name()='shared' and @id='ECRPubliclong']" priority="1"><xsl:text>Amazon Elastic Container Registry Public</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECRPublic']" priority="1"><xsl:text>Amazon ECR Public</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ECRPublic']" priority="1"><xsl:text>Amazon Elastic Container Registry Public</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon ECS-->
<!--Amazon Elastic Container Service-->
  <xsl:template match="*[name()='shared' and @id='ECSlong']" priority="1"><xsl:text>Amazon Elastic Container Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECS']" priority="1"><xsl:text>Amazon ECS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2containerservice']" priority="1"><xsl:text>Amazon Elastic Container Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Fargate-->
<!--Fargate-->
  <xsl:template match="*[name()='shared' and @id='FARGATElong']" priority="1"><xsl:text>AWS Fargate</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FARGATE']" priority="1"><xsl:text>Fargate</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FARGATE']" priority="1"><xsl:text>AWS Fargate</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EKS-->
<!--Amazon Elastic Kubernetes Service-->
  <xsl:template match="*[name()='shared' and @id='EKSlong']" priority="1"><xsl:text>Amazon Elastic Kubernetes Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EKS']" priority="1"><xsl:text>Amazon EKS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-EKS']" priority="1"><xsl:text>Amazon Elastic Kubernetes Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Elastic Beanstalk-->
<!--AWS Elastic Beanstalk-->
  <xsl:template match="*[name()='shared' and @id='AEBlong']" priority="1"><xsl:text>AWS Elastic Beanstalk</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AEB']" priority="1"><xsl:text>Elastic Beanstalk</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elasticbeanstalk']" priority="1"><xsl:text>AWS Elastic Beanstalk</xsl:text></xsl:template>
<!--**************************************-->

<!--Elastic Disaster Recovery-->
<!--AWS Elastic Disaster Recovery-->
  <xsl:template match="*[name()='shared' and @id='DRSlong']" priority="1"><xsl:text>AWS Elastic Disaster Recovery</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DRS']" priority="1"><xsl:text>Elastic Disaster Recovery</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-drs']" priority="1"><xsl:text>AWS Elastic Disaster Recovery</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EFS-->
<!--Amazon Elastic File System-->
  <xsl:template match="*[name()='shared' and @id='EFSlong']" priority="1"><xsl:text>Amazon Elastic File System</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EFS']" priority="1"><xsl:text>Amazon EFS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elasticfilesystem']" priority="1"><xsl:text>Amazon Elastic File System</xsl:text></xsl:template>
<!--**************************************-->

<!--Elastic Inference-->
<!--Elastic Inference-->
  <xsl:template match="*[name()='shared' and @id='EIAlong']" priority="1"><xsl:text>Amazon Elastic Inference</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EIA']" priority="1"><xsl:text>Elastic Inference</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-EIA']" priority="1"><xsl:text>Amazon Elastic Inference</xsl:text></xsl:template>
<!--**************************************-->

<!--Elastic Load Balancing-->
<!--Elastic Load Balancing-->
  <xsl:template match="*[name()='shared' and @id='ELBlong']" priority="1"><xsl:text>Elastic Load Balancing</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELB']" priority="1"><xsl:text>Elastic Load Balancing</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elb']" priority="1"><xsl:text>Elastic Load Balancing</xsl:text></xsl:template>
<!--**************************************-->

<!--Network Load Balancer-->
<!--Network Load Balancer-->
  <xsl:template match="*[name()='shared' and @id='NLBlong']" priority="1"><xsl:text>Network Load Balancer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NLB']" priority="1"><xsl:text>Network Load Balancer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elb_nlb']" priority="1"><xsl:text>Network Load Balancer</xsl:text></xsl:template>
<!--**************************************-->

<!--ElastiCache-->
<!--Amazon ElastiCache-->
  <xsl:template match="*[name()='shared' and @id='ELClong']" priority="1"><xsl:text>Amazon ElastiCache</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELC']" priority="1"><xsl:text>ElastiCache</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elasticache']" priority="1"><xsl:text>Amazon ElastiCache</xsl:text></xsl:template>
<!--**************************************-->

<!--ElastiCache for Redis-->
<!--ElastiCache for Redis-->
  <xsl:template match="*[name()='shared' and @id='ELCRlong']" priority="1"><xsl:text>Amazon ElastiCache for Redis</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELCR']" priority="1"><xsl:text>ElastiCache for Redis</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ELCR']" priority="1"><xsl:text>Amazon ElastiCache for Redis</xsl:text></xsl:template>
<!--**************************************-->

<!--ElastiCache for Memcached-->
<!--ElastiCache for Memcached-->
  <xsl:template match="*[name()='shared' and @id='ELCMlong']" priority="1"><xsl:text>Amazon ElastiCache for Memcached</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELCM']" priority="1"><xsl:text>ElastiCache for Memcached</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ELCM']" priority="1"><xsl:text>Amazon ElastiCache for Memcached</xsl:text></xsl:template>
<!--**************************************-->

<!--OpenSearch Service-->
<!--Amazon OpenSearch Service-->
  <xsl:template match="*[name()='shared' and @id='ESlong']" priority="1"><xsl:text>Amazon OpenSearch Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ES']" priority="1"><xsl:text>OpenSearch Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elasticsearchservice']" priority="1"><xsl:text>Amazon OpenSearch Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Conductor File-->
<!--Conductor File-->
  <xsl:template match="*[name()='shared' and @id='ECFlong']" priority="1"><xsl:text>AWS Elemental Conductor File</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECF']" priority="1"><xsl:text>Conductor File</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ECF']" priority="1"><xsl:text>AWS Elemental Conductor File</xsl:text></xsl:template>
<!--**************************************-->

<!--Conductor Live-->
<!--Conductor-->
  <xsl:template match="*[name()='shared' and @id='ECL3long']" priority="1"><xsl:text>AWS Elemental Conductor Live</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECL3']" priority="1"><xsl:text>Conductor Live</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ECL3']" priority="1"><xsl:text>AWS Elemental Conductor Live</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Elemental Cloud-->
<!--Elemental Cloud-->
  <xsl:template match="*[name()='shared' and @id='ECLDlong']" priority="1"><xsl:text>AWS Elemental Cloud</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECLD']" priority="1"><xsl:text>AWS Elemental Cloud</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ECLD']" priority="1"><xsl:text>AWS Elemental Cloud</xsl:text></xsl:template>
<!--**************************************-->

<!--Delta-->
<!--Delta-->
  <xsl:template match="*[name()='shared' and @id='EDLTlong']" priority="1"><xsl:text>AWS Elemental Delta</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EDLT']" priority="1"><xsl:text>Delta</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-EDLT']" priority="1"><xsl:text>AWS Elemental Delta</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Elemental Link-->
<!--Elemental Link-->
  <xsl:template match="*[name()='shared' and @id='ELNKlong']" priority="1"><xsl:text>AWS Elemental Link</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELNK']" priority="1"><xsl:text>AWS Elemental Link</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ELNK']" priority="1"><xsl:text>AWS Elemental Link</xsl:text></xsl:template>
<!--**************************************-->

<!--Elemental Live-->
<!--Elemental Live-->
  <xsl:template match="*[name()='shared' and @id='ELVlong']" priority="1"><xsl:text>AWS Elemental Live</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ELV']" priority="1"><xsl:text>Elemental Live</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ELV']" priority="1"><xsl:text>AWS Elemental Live</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaConnect-->
<!--AWS Elemental MediaConnect-->
  <xsl:template match="*[name()='shared' and @id='EMXlong']" priority="1"><xsl:text>AWS Elemental MediaConnect</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMX']" priority="1"><xsl:text>MediaConnect</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mediaconnect']" priority="1"><xsl:text>AWS Elemental MediaConnect</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaConvert-->
<!--AWS Elemental MediaConvert-->
  <xsl:template match="*[name()='shared' and @id='EMClong']" priority="1"><xsl:text>AWS Elemental MediaConvert</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMC']" priority="1"><xsl:text>MediaConvert</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mediaconvert']" priority="1"><xsl:text>AWS Elemental MediaConvert</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaLive-->
<!--AWS Elemental MediaLive-->
  <xsl:template match="*[name()='shared' and @id='EMLlong']" priority="1"><xsl:text>AWS Elemental MediaLive</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EML']" priority="1"><xsl:text>MediaLive</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-medialive']" priority="1"><xsl:text>AWS Elemental MediaLive</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaPackage-->
<!--AWS Elemental MediaPackage-->
  <xsl:template match="*[name()='shared' and @id='EMPlong']" priority="1"><xsl:text>AWS Elemental MediaPackage</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMP']" priority="1"><xsl:text>MediaPackage</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mediapackage']" priority="1"><xsl:text>AWS Elemental MediaPackage</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaStore-->
<!--AWS Elemental MediaStore-->
  <xsl:template match="*[name()='shared' and @id='EMSlong']" priority="1"><xsl:text>AWS Elemental MediaStore</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMS']" priority="1"><xsl:text>MediaStore</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mediastore']" priority="1"><xsl:text>AWS Elemental MediaStore</xsl:text></xsl:template>
<!--**************************************-->

<!--MediaTailor-->
<!--AWS Elemental MediaTailor-->
  <xsl:template match="*[name()='shared' and @id='EMTlong']" priority="1"><xsl:text>AWS Elemental MediaTailor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMT']" priority="1"><xsl:text>MediaTailor</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-MediaTailor']" priority="1"><xsl:text>AWS Elemental MediaTailor</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Elemental Server-->
<!--Elemental Server-->
  <xsl:template match="*[name()='shared' and @id='ESRVRlong']" priority="1"><xsl:text>AWS Elemental Server</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ESRVR']" priority="1"><xsl:text>AWS Elemental Server</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ESRVR']" priority="1"><xsl:text>AWS Elemental Server</xsl:text></xsl:template>
<!--**************************************-->

<!--Statmux-->
<!--Statmux-->
  <xsl:template match="*[name()='shared' and @id='ESMXlong']" priority="1"><xsl:text>AWS Elemental Statmux</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ESMX']" priority="1"><xsl:text>Statmux</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ESMX']" priority="1"><xsl:text>AWS Elemental Statmux</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon EMR-->
<!--Amazon EMR-->
  <xsl:template match="*[name()='shared' and @id='EMRlong']" priority="1"><xsl:text>Amazon EMR</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMR']" priority="1"><xsl:text>Amazon EMR</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-emr']" priority="1"><xsl:text>Amazon EMR</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Encryption SDK-->
<!--Encryption SDK-->
  <xsl:template match="*[name()='shared' and @id='CryptoSDKlong']" priority="1"><xsl:text>AWS Encryption SDK</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDK']" priority="1"><xsl:text>AWS Encryption SDK</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CryptoSDK']" priority="1"><xsl:text>AWS Encryption SDK</xsl:text></xsl:template>
<!--**************************************-->

<!--Elastic Transcoder-->
<!--Amazon Elastic Transcoder-->
  <xsl:template match="*[name()='shared' and @id='ETlong']" priority="1"><xsl:text>Amazon Elastic Transcoder</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ET']" priority="1"><xsl:text>Elastic Transcoder</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-elastictranscoder']" priority="1"><xsl:text>Amazon Elastic Transcoder</xsl:text></xsl:template>
<!--**************************************-->

<!--EventBridge-->
<!--Amazon EventBridge-->
  <xsl:template match="*[name()='shared' and @id='EVlong']" priority="1"><xsl:text>Amazon EventBridge</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EV']" priority="1"><xsl:text>EventBridge</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-eventbridge']" priority="1"><xsl:text>Amazon EventBridge</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS FIS-->
<!--Fault Injection Simulator (FIS)-->
  <xsl:template match="*[name()='shared' and @id='FISlong']" priority="1"><xsl:text>AWS Fault Injection Simulator</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FIS']" priority="1"><xsl:text>AWS FIS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FIS']" priority="1"><xsl:text>AWS Fault Injection Simulator</xsl:text></xsl:template>
<!--**************************************-->

<!--FinSpace-->
<!--Amazon FinSpace-->
  <xsl:template match="*[name()='shared' and @id='FSlong']" priority="1"><xsl:text>Amazon FinSpace</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FS']" priority="1"><xsl:text>FinSpace</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-finspace']" priority="1"><xsl:text>Amazon FinSpace</xsl:text></xsl:template>
<!--**************************************-->

<!--Firewall Manager-->
<!--AWS Firewall Manager-->
  <xsl:template match="*[name()='shared' and @id='FMSlong']" priority="1"><xsl:text>AWS Firewall Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FMS']" priority="1"><xsl:text>Firewall Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-fms']" priority="1"><xsl:text>AWS Firewall Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--the framework-->
<!--Flow Framework (see also "SWF")-->
  <xsl:template match="*[name()='shared' and @id='FFlong']" priority="1"><xsl:text>AWS Flow Framework</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FF']" priority="1"><xsl:text>the framework</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FF']" priority="1"><xsl:text>AWS Flow Framework</xsl:text></xsl:template>
<!--**************************************-->

<!--Forecast-->
<!--Forecast-->
  <xsl:template match="*[name()='shared' and @id='FORlong']" priority="1"><xsl:text>Amazon Forecast</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FOR']" priority="1"><xsl:text>Forecast</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FOR']" priority="1"><xsl:text>Amazon Forecast</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon FPS-->
<!--Amazon FPS-->
  <xsl:template match="*[name()='shared' and @id='FPSlong']" priority="1"><xsl:text>Amazon Flexible Payments Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FPS']" priority="1"><xsl:text>Amazon FPS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FPS']" priority="1"><xsl:text>Amazon Flexible Payments Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Fraud Detector-->
<!--Amazon Fraud Detector-->
  <xsl:template match="*[name()='shared' and @id='AFDlong']" priority="1"><xsl:text>Amazon Fraud Detector</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AFD']" priority="1"><xsl:text>Amazon Fraud Detector</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AFD']" priority="1"><xsl:text>Amazon Fraud Detector</xsl:text></xsl:template>
<!--**************************************-->

<!--FreeRTOS-->
<!--FreeRTOS-->
  <xsl:template match="*[name()='shared' and @id='RTOSlong']" priority="1"><xsl:text>FreeRTOS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RTOS']" priority="1"><xsl:text>FreeRTOS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-freertosota']" priority="1"><xsl:text>FreeRTOS</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon FSx-->
<!--Amazon FSx-->
  <xsl:template match="*[name()='shared' and @id='FSXlong']" priority="1"><xsl:text>Amazon FSx</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSX']" priority="1"><xsl:text>Amazon FSx</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FSx']" priority="1"><xsl:text>Amazon FSx</xsl:text></xsl:template>
<!--**************************************-->

<!--FSx for Lustre-->
<!--Amazon FSx for Lustre-->
  <xsl:template match="*[name()='shared' and @id='FSXLustrelong']" priority="1"><xsl:text>Amazon FSx for Lustre</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSXLustre']" priority="1"><xsl:text>FSx for Lustre</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FSXLustre']" priority="1"><xsl:text>Amazon FSx for Lustre</xsl:text></xsl:template>
<!--**************************************-->

<!--FSx for ONTAP-->
<!--Amazon FSx for NetApp ONTAP-->
  <xsl:template match="*[name()='shared' and @id='FSxONTAPlong']" priority="1"><xsl:text>Amazon FSx for NetApp ONTAP</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSxONTAP']" priority="1"><xsl:text>FSx for ONTAP</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-fsx-ontap']" priority="1"><xsl:text>Amazon FSx for NetApp ONTAP</xsl:text></xsl:template>
<!--**************************************-->

<!--FSx for OpenZFS-->
<!--Amazon FSx for OpenZFS-->
  <xsl:template match="*[name()='shared' and @id='FSxOpenZFSlong']" priority="1"><xsl:text>Amazon FSx for OpenZFS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSxOpenZFS']" priority="1"><xsl:text>FSx for OpenZFS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-fsx-openzfs']" priority="1"><xsl:text>Amazon FSx for OpenZFS</xsl:text></xsl:template>
<!--**************************************-->

<!--FSx for Windows File Server-->
<!--Amazon FSx for Windows File Server-->
  <xsl:template match="*[name()='shared' and @id='FSXWindowslong']" priority="1"><xsl:text>Amazon FSx for Windows File Server</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FSXWindows']" priority="1"><xsl:text>FSx for Windows File Server</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FSXWindows']" priority="1"><xsl:text>Amazon FSx for Windows File Server</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon FWS-->
<!--Amazon FWS-->
  <xsl:template match="*[name()='shared' and @id='FWSlong']" priority="1"><xsl:text>Amazon Fulfillment Web Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FWS']" priority="1"><xsl:text>Amazon FWS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FWS']" priority="1"><xsl:text>Amazon Fulfillment Web Service</xsl:text></xsl:template>
<!--**************************************-->

<!--GameLift-->
<!--Amazon GameLift-->
  <xsl:template match="*[name()='shared' and @id='AGSlong']" priority="1"><xsl:text>Amazon GameLift</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AGS']" priority="1"><xsl:text>GameLift</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-gamelift']" priority="1"><xsl:text>Amazon GameLift</xsl:text></xsl:template>
<!--**************************************-->

<!--S3 Glacier-->
<!--Amazon S3 Glacier-->
  <xsl:template match="*[name()='shared' and @id='GLlong']" priority="1"><xsl:text>Amazon S3 Glacier</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GL']" priority="1"><xsl:text>S3 Glacier</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-glacier']" priority="1"><xsl:text>Amazon S3 Glacier</xsl:text></xsl:template>
<!--**************************************-->

<!--Global Accelerator-->
<!--Global Accelerator-->
  <xsl:template match="*[name()='shared' and @id='GAXlong']" priority="1"><xsl:text>AWS Global Accelerator</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GAX']" priority="1"><xsl:text>Global Accelerator</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GAX']" priority="1"><xsl:text>AWS Global Accelerator</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Glue-->
<!--AWS Glue-->
  <xsl:template match="*[name()='shared' and @id='GLUlong']" priority="1"><xsl:text>AWS Glue</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLU']" priority="1"><xsl:text>AWS Glue</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-glue']" priority="1"><xsl:text>AWS Glue</xsl:text></xsl:template>
<!--**************************************-->

<!--AWSGlueSchemaRegistry-->
<!--AWSGlueSchemaRegistry-->
  <xsl:template match="*[name()='shared' and @id='dsrlong']" priority="1"><xsl:text>AWSGlueSchemaRegistry</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='dsr']" priority="1"><xsl:text>AWSGlueSchemaRegistry</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-dsr']" priority="1"><xsl:text>AWSGlueSchemaRegistry</xsl:text></xsl:template>
<!--**************************************-->

<!--Data Catalog-->
<!--Glue Data Catalog-->
  <xsl:template match="*[name()='shared' and @id='GLUDCLong']" priority="1"><xsl:text>AWS Glue Data Catalog</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLUDC']" priority="1"><xsl:text>Data Catalog</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GLUDC']" priority="1"><xsl:text>AWS Glue Data Catalog</xsl:text></xsl:template>
<!--**************************************-->

<!--Jobs system-->
<!--Jobs system-->
  <xsl:template match="*[name()='shared' and @id='JESlong']" priority="1"><xsl:text>AWS Glue Jobs system</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JES']" priority="1"><xsl:text>Jobs system</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-JES']" priority="1"><xsl:text>AWS Glue Jobs system</xsl:text></xsl:template>
<!--**************************************-->

<!--DataBrew-->
<!--DataBrew-->
  <xsl:template match="*[name()='shared' and @id='BRUlong']" priority="1"><xsl:text>AWS Glue DataBrew</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='BRU']" priority="1"><xsl:text>DataBrew</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-databrew']" priority="1"><xsl:text>AWS Glue DataBrew</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass-->
<!--AWS IoT Greengrass-->
  <xsl:template match="*[name()='shared' and @id='GGlong']" priority="1"><xsl:text>AWS IoT Greengrass</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG']" priority="1"><xsl:text>AWS IoT Greengrass</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-greengrass']" priority="1"><xsl:text>AWS IoT Greengrass</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass V1-->
<!--AWS IoT Greengrass V1-->
  <xsl:template match="*[name()='shared' and @id='GG1long']" priority="1"><xsl:text>AWS IoT Greengrass Version 1</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG1']" priority="1"><xsl:text>AWS IoT Greengrass V1</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-greengrassv1']" priority="1"><xsl:text>AWS IoT Greengrass Version 1</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Greengrass V2-->
<!--AWS IoT Greengrass V2-->
  <xsl:template match="*[name()='shared' and @id='GG2long']" priority="1"><xsl:text>AWS IoT Greengrass Version 2</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GG2']" priority="1"><xsl:text>AWS IoT Greengrass V2</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-greengrassv2']" priority="1"><xsl:text>AWS IoT Greengrass Version 2</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Ground Station-->
<!--Ground Station-->
  <xsl:template match="*[name()='shared' and @id='GRSlong']" priority="1"><xsl:text>AWS Ground Station</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GRS']" priority="1"><xsl:text>AWS Ground Station</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GRS']" priority="1"><xsl:text>AWS Ground Station</xsl:text></xsl:template>
<!--**************************************-->

<!--GuardDuty-->
<!--Amazon GuardDuty-->
  <xsl:template match="*[name()='shared' and @id='GDUlong']" priority="1"><xsl:text>Amazon GuardDuty</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GDU']" priority="1"><xsl:text>GuardDuty</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-guardduty']" priority="1"><xsl:text>Amazon GuardDuty</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Health-->
<!--AWS Health-->
  <xsl:template match="*[name()='shared' and @id='awshealthlong']" priority="1"><xsl:text>AWS Health</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='awshealth']" priority="1"><xsl:text>AWS Health</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-awshealth']" priority="1"><xsl:text>AWS Health</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Health Dashboard-->
<!--AWS Health Dashboard-->
  <xsl:template match="*[name()='shared' and @id='phdlong']" priority="1"><xsl:text>AWS Health Dashboard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='phd']" priority="1"><xsl:text>AWS Health Dashboard</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-phd-console']" priority="1"><xsl:text>AWS Health Dashboard</xsl:text></xsl:template>
<!--**************************************-->

<!--IAM-->
<!--AWS Identity and Access Management-->
  <xsl:template match="*[name()='shared' and @id='IAMlong']" priority="1"><xsl:text>AWS Identity and Access Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IAM']" priority="1"><xsl:text>IAM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iam']" priority="1"><xsl:text>AWS Identity and Access Management</xsl:text></xsl:template>
<!--**************************************-->

<!--IAM Access Analyzer-->
<!--IAM Access Analyzer-->
  <xsl:template match="*[name()='shared' and @id='iam-citadel-long']" priority="1"><xsl:text>AWS Identity and Access Management Access Analyzer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iam-citadel']" priority="1"><xsl:text>IAM Access Analyzer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iam-citadel']" priority="1"><xsl:text>AWS Identity and Access Management Access Analyzer</xsl:text></xsl:template>
<!--**************************************-->

<!--Image Builder-->
<!--Image Builder-->
  <xsl:template match="*[name()='shared' and @id='IBlong']" priority="1"><xsl:text>EC2 Image Builder</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IB']" priority="1"><xsl:text>Image Builder</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-IB']" priority="1"><xsl:text>EC2 Image Builder</xsl:text></xsl:template>
<!--**************************************-->

<!--AWSTOE-->
<!--AWS TOE-->
  <xsl:template match="*[name()='shared' and @id='TOElong']" priority="1"><xsl:text>AWS Task Orchestrator and Executor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TOE']" priority="1"><xsl:text>AWSTOE</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TOE']" priority="1"><xsl:text>AWS Task Orchestrator and Executor</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Import/Export-->
<!--Import/Export-->
  <xsl:template match="*[name()='shared' and @id='IElong']" priority="1"><xsl:text>AWS Import/Export</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IE']" priority="1"><xsl:text>AWS Import/Export</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-IE']" priority="1"><xsl:text>AWS Import/Export</xsl:text></xsl:template>
<!--**************************************-->

<!--Disk-->
<!--AWS Import/Export Disk-->
  <xsl:template match="*[name()='shared' and @id='Disklong']" priority="1"><xsl:text>AWS Import/Export Disk</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Disk']" priority="1"><xsl:text>Disk</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-importexportdisk']" priority="1"><xsl:text>AWS Import/Export Disk</xsl:text></xsl:template>
<!--**************************************-->

<!--Snowball-->
<!--AWS Snowball-->
  <xsl:template match="*[name()='shared' and @id='Frozenlong']" priority="1"><xsl:text>AWS Snowball</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Frozen']" priority="1"><xsl:text>Snowball</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-importexportsnowball']" priority="1"><xsl:text>AWS Snowball</xsl:text></xsl:template>
<!--**************************************-->

<!--Signer-->
<!--Signer-->
  <xsl:template match="*[name()='shared' and @id='Signerlong']" priority="1"><xsl:text>AWS Signer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Signer']" priority="1"><xsl:text>Signer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-signer']" priority="1"><xsl:text>AWS Signer</xsl:text></xsl:template>
<!--**************************************-->

<!--Snowball Edge-->
<!--AWS Snowball Edge-->
  <xsl:template match="*[name()='shared' and @id='SnowballEdgelong']" priority="1"><xsl:text>AWS Snowball Edge</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowballEdge']" priority="1"><xsl:text>Snowball Edge</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-snowballedge']" priority="1"><xsl:text>AWS Snowball Edge</xsl:text></xsl:template>
<!--**************************************-->

<!--Snowcone-->
<!--Snowcone-->
  <xsl:template match="*[name()='shared' and @id='SNClong']" priority="1"><xsl:text>AWS Snowcone</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SNC']" priority="1"><xsl:text>Snowcone</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SNC']" priority="1"><xsl:text>AWS Snowcone</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS OpsHub-->
<!--OpsHub-->
  <xsl:template match="*[name()='shared' and @id='OpsHublong']" priority="1"><xsl:text>AWS OpsHub for Snow Family</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OpsHub']" priority="1"><xsl:text>AWS OpsHub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-OpsHub']" priority="1"><xsl:text>AWS OpsHub for Snow Family</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Inspector Classic-->
<!--Amazon Inspector Classic-->
  <xsl:template match="*[name()='shared' and @id='INS1long']" priority="1"><xsl:text>Amazon Inspector Classic</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='INS1']" priority="1"><xsl:text>Amazon Inspector Classic</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-inspector']" priority="1"><xsl:text>Amazon Inspector Classic</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Inspector-->
<!--Amazon Inspector-->
  <xsl:template match="*[name()='shared' and @id='INSlong']" priority="1"><xsl:text>Amazon Inspector</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='INS']" priority="1"><xsl:text>Amazon Inspector</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-inspector2']" priority="1"><xsl:text>Amazon Inspector</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT-->
<!--AWS IoT-->
  <xsl:template match="*[name()='shared' and @id='IoTlong']" priority="1"><xsl:text>AWS IoT</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoT']" priority="1"><xsl:text>AWS IoT</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iot']" priority="1"><xsl:text>AWS IoT</xsl:text></xsl:template>
<!--**************************************-->

<!--AVS for AWS IoT-->
<!--AVS for IoT-->
  <xsl:template match="*[name()='shared' and @id='IoTAlexa']" priority="1"><xsl:text>Alexa Voice Service (AVS) Integration for AWS IoT</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTAlexashort']" priority="1"><xsl:text>AVS for AWS IoT</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-IoTAlexashort']" priority="1"><xsl:text>Alexa Voice Service (AVS) Integration for AWS IoT</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Analytics-->
<!--AWS IoT Analytics-->
  <xsl:template match="*[name()='shared' and @id='ITAlong']" priority="1"><xsl:text>AWS IoT Analytics</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITA']" priority="1"><xsl:text>AWS IoT Analytics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotanalytics']" priority="1"><xsl:text>AWS IoT Analytics</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT data-->
<!--Amazon IoT data-->
  <xsl:template match="*[name()='shared' and @id='IoTDatalong']" priority="1"><xsl:text>AWS IoT data</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTData']" priority="1"><xsl:text>AWS IoT data</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotdata']" priority="1"><xsl:text>AWS IoT data</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Device Defender-->
<!--AWS IoT Device Defender-->
  <xsl:template match="*[name()='shared' and @id='ITDDlong']" priority="1"><xsl:text>AWS IoT Device Defender</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITDD']" priority="1"><xsl:text>AWS IoT Device Defender</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotdevicedefender']" priority="1"><xsl:text>AWS IoT Device Defender</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Device Management-->
<!--AWS IoT Device Management-->
  <xsl:template match="*[name()='shared' and @id='ITDMlong']" priority="1"><xsl:text>AWS IoT Device Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITDM']" priority="1"><xsl:text>AWS IoT Device Management</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotdevicemanagement']" priority="1"><xsl:text>AWS IoT Device Management</xsl:text></xsl:template>
<!--**************************************-->

<!--Fleet Hub-->
<!--Fleet Hub-->
  <xsl:template match="*[name()='shared' and @id='IoTMonitorlong']" priority="1"><xsl:text>Fleet Hub for AWS IoT Device Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTMonitor']" priority="1"><xsl:text>Fleet Hub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-IoTMonitor']" priority="1"><xsl:text>Fleet Hub for AWS IoT Device Management</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Events-->
<!--AWS IoT Events-->
  <xsl:template match="*[name()='shared' and @id='ITElong']" priority="1"><xsl:text>AWS IoT Events</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITE']" priority="1"><xsl:text>AWS IoT Events</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotevents']" priority="1"><xsl:text>AWS IoT Events</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Events-Data-->
<!--AWS IoT Events-Data-->
  <xsl:template match="*[name()='shared' and @id='ITEDlong']" priority="1"><xsl:text>AWS IoT Events-Data</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITED']" priority="1"><xsl:text>AWS IoT Events-Data</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ioteventsdata']" priority="1"><xsl:text>AWS IoT Events-Data</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Identity-->
<!--AWS IoT Identity-->
  <xsl:template match="*[name()='shared' and @id='IoTIdentitylong']" priority="1"><xsl:text>AWS IoT Identity</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTIdentity']" priority="1"><xsl:text>AWS IoT Identity</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotidentity']" priority="1"><xsl:text>AWS IoT Identity</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT 1-Click-->
<!--AWS IoT 1-Click-->
  <xsl:template match="*[name()='shared' and @id='ITOClong']" priority="1"><xsl:text>AWS IoT 1-Click</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITOC']" priority="1"><xsl:text>AWS IoT 1-Click</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iot1click']" priority="1"><xsl:text>AWS IoT 1-Click</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Jobs SDK release-->
<!--AWS IoT Jobs SDK release-->
  <xsl:template match="*[name()='shared' and @id='IoTJobsSDKreleaselong']" priority="1"><xsl:text>AWS IoT Jobs SDK release</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJobsSDKrelease']" priority="1"><xsl:text>AWS IoT Jobs SDK release</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iot-jobs-data']" priority="1"><xsl:text>AWS IoT Jobs SDK release</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Secure Tunneling-->
<!--AWS IoT Secure Tunneling-->
  <xsl:template match="*[name()='shared' and @id='IoTSecureTunnellong']" priority="1"><xsl:text>AWS IoT Secure Tunneling</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTSecureTunnel']" priority="1"><xsl:text>AWS IoT Secure Tunneling</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotsecuredtunneling']" priority="1"><xsl:text>AWS IoT Secure Tunneling</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT SiteWise-->
<!--AWS IoT SiteWise-->
  <xsl:template match="*[name()='shared' and @id='ITSWlong']" priority="1"><xsl:text>AWS IoT SiteWise</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITSW']" priority="1"><xsl:text>AWS IoT SiteWise</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotsitewise']" priority="1"><xsl:text>AWS IoT SiteWise</xsl:text></xsl:template>
<!--**************************************-->

<!--SiteWise Monitor-->
<!--AWS IoT SiteWise Monitor-->
  <xsl:template match="*[name()='shared' and @id='ITSWMlong']" priority="1"><xsl:text>AWS IoT SiteWise Monitor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITSWM']" priority="1"><xsl:text>SiteWise Monitor</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iotsitewise-iotblackpearl']" priority="1"><xsl:text>AWS IoT SiteWise Monitor</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT Things Graph-->
<!--AWS IoT Things Graph-->
  <xsl:template match="*[name()='shared' and @id='ITTGlong']" priority="1"><xsl:text>AWS IoT Things Graph</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTG']" priority="1"><xsl:text>AWS IoT Things Graph</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-thingsgraph']" priority="1"><xsl:text>AWS IoT Things Graph</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS IoT TwinMaker-->
<!--AWS IoT TwinMaker-->
  <xsl:template match="*[name()='shared' and @id='IoTTMlong']" priority="1"><xsl:text>AWS IoT TwinMaker</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTTM']" priority="1"><xsl:text>AWS IoT TwinMaker</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iottwinmaker']" priority="1"><xsl:text>AWS IoT TwinMaker</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Kendra-->
<!--Amazon Kendra-->
  <xsl:template match="*[name()='shared' and @id='KENlong']" priority="1"><xsl:text>Amazon Kendra</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='KEN']" priority="1"><xsl:text>Amazon Kendra</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-KEN']" priority="1"><xsl:text>Amazon Kendra</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Keyspaces-->
<!--Amazon Keyspaces-->
  <xsl:template match="*[name()='shared' and @id='KEYlong']" priority="1"><xsl:text>Amazon Keyspaces (for Apache Cassandra)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='KEY']" priority="1"><xsl:text>Amazon Keyspaces</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-KEY']" priority="1"><xsl:text>Amazon Keyspaces (for Apache Cassandra)</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS KMS-->
<!--AWS Key Management Service-->
  <xsl:template match="*[name()='shared' and @id='KMSlong']" priority="1"><xsl:text>AWS Key Management Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='KMS']" priority="1"><xsl:text>AWS KMS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kms']" priority="1"><xsl:text>AWS Key Management Service</xsl:text></xsl:template>
<!--**************************************-->

<!--KMS key-->
<!--KMS key-->
  <xsl:template match="*[name()='shared' and @id='kms-key-long']" priority="1"><xsl:text>AWS KMS key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='kms-key']" priority="1"><xsl:text>KMS key</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kms-key']" priority="1"><xsl:text>AWS KMS key</xsl:text></xsl:template>
<!--**************************************-->

<!--KMS keys-->
<!--KMS keys-->
  <xsl:template match="*[name()='shared' and @id='kms-keys-long']" priority="1"><xsl:text>AWS KMS keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='kms-keys']" priority="1"><xsl:text>KMS keys</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kms-keys']" priority="1"><xsl:text>AWS KMS keys</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis-->
<!--Kinesis-->
  <xsl:template match="*[name()='shared' and @id='AKlong']" priority="1"><xsl:text>Amazon Kinesis</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AK']" priority="1"><xsl:text>Kinesis</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AK']" priority="1"><xsl:text>Amazon Kinesis</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis Data Analytics-->
<!--Amazon Kinesis Data Analytics-->
  <xsl:template match="*[name()='shared' and @id='AKAlong']" priority="1"><xsl:text>Amazon Kinesis Data Analytics</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKA']" priority="1"><xsl:text>Kinesis Data Analytics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kinesisanalytics']" priority="1"><xsl:text>Amazon Kinesis Data Analytics</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis Data Firehose-->
<!--Kinesis Data Firehose-->
  <xsl:template match="*[name()='shared' and @id='FHlong']" priority="1"><xsl:text>Amazon Kinesis Data Firehose</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FH']" priority="1"><xsl:text>Kinesis Data Firehose</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FH']" priority="1"><xsl:text>Amazon Kinesis Data Firehose</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis Data Firehose-->
<!--Amazon Kinesis Data Firehose-->
  <xsl:template match="*[name()='shared' and @id='AKFlong']" priority="1"><xsl:text>Amazon Kinesis Data Firehose</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKF']" priority="1"><xsl:text>Kinesis Data Firehose</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kinesisfirehose']" priority="1"><xsl:text>Amazon Kinesis Data Firehose</xsl:text></xsl:template>
<!--**************************************-->

<!--HealthLake-->
<!--HealthLake-->
  <xsl:template match="*[name()='shared' and @id='AHLlong']" priority="1"><xsl:text>Amazon HealthLake</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AHL']" priority="1"><xsl:text>HealthLake</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AHL']" priority="1"><xsl:text>Amazon HealthLake</xsl:text></xsl:template>
<!--**************************************-->

<!--Incident Manager-->
<!--Incident Manager-->
  <xsl:template match="*[name()='shared' and @id='commander-long']" priority="1"><xsl:text>AWS Systems Manager Incident Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='commander']" priority="1"><xsl:text>Incident Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-commander']" priority="1"><xsl:text>AWS Systems Manager Incident Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis Data Streams-->
<!--Amazon Kinesis Data Streams-->
  <xsl:template match="*[name()='shared' and @id='AKSlong']" priority="1"><xsl:text>Amazon Kinesis Data Streams</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKS']" priority="1"><xsl:text>Kinesis Data Streams</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-kinesis']" priority="1"><xsl:text>Amazon Kinesis Data Streams</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis Video Streams-->
<!--Kinesis Video Streams-->
  <xsl:template match="*[name()='shared' and @id='AKVSlong']" priority="1"><xsl:text>Amazon Kinesis Video Streams</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKVS']" priority="1"><xsl:text>Kinesis Video Streams</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AKVS']" priority="1"><xsl:text>Amazon Kinesis Video Streams</xsl:text></xsl:template>
<!--**************************************-->

<!--Kinesis video stream-->
<!--Kinesis video stream-->
  <xsl:template match="*[name()='shared' and @id='AKVS-res-long']" priority="1"><xsl:text>Amazon Kinesis video stream</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AKVS-res']" priority="1"><xsl:text>Kinesis video stream</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AKVS-res']" priority="1"><xsl:text>Amazon Kinesis video stream</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon IVS-->
<!--Amazon IVS-->
  <xsl:template match="*[name()='shared' and @id='IVSlong']" priority="1"><xsl:text>Amazon Interactive Video Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IVS']" priority="1"><xsl:text>Amazon IVS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-IVS']" priority="1"><xsl:text>Amazon Interactive Video Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Lake Formation-->
<!--Lake Formation-->
  <xsl:template match="*[name()='shared' and @id='LFlong']" priority="1"><xsl:text>AWS Lake Formation</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LF']" priority="1"><xsl:text>Lake Formation</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lakeformation']" priority="1"><xsl:text>AWS Lake Formation</xsl:text></xsl:template>
<!--**************************************-->

<!--Lambda-->
<!--AWS Lambda-->
  <xsl:template match="*[name()='shared' and @id='LAMlong']" priority="1"><xsl:text>AWS Lambda</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LAM']" priority="1"><xsl:text>Lambda</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lambda']" priority="1"><xsl:text>AWS Lambda</xsl:text></xsl:template>
<!--**************************************-->

<!--Lambda console-->
<!--AWS Lambda console-->
  <xsl:template match="*[name()='shared' and @id='LAMConsolelong']" priority="1"><xsl:text>AWS Lambda console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LAMConsole']" priority="1"><xsl:text>Lambda console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lambda-lambda-console']" priority="1"><xsl:text>AWS Lambda console</xsl:text></xsl:template>
<!--**************************************-->

<!--Launch Wizard-->
<!--Launch Wizard-->
  <xsl:template match="*[name()='shared' and @id='LWlong']" priority="1"><xsl:text>AWS Launch Wizard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LW']" priority="1"><xsl:text>Launch Wizard</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-LW']" priority="1"><xsl:text>AWS Launch Wizard</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Lex MBS-->
<!--Amazon Lex Model Building Service-->
  <xsl:template match="*[name()='shared' and @id='LEXMBSlong']" priority="1"><xsl:text>Amazon Lex Model Building Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEXMBS']" priority="1"><xsl:text>Amazon Lex MBS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-models.lex']" priority="1"><xsl:text>Amazon Lex Model Building Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Lex-->
<!--Amazon Lex-->
  <xsl:template match="*[name()='shared' and @id='LEXlong']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEX']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-runtime.lex']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Lex-->
<!--Amazon Lex-->
  <xsl:template match="*[name()='shared' and @id='LEX2long']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LEX2']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-LEX2']" priority="1"><xsl:text>Amazon Lex</xsl:text></xsl:template>
<!--**************************************-->

<!--License Manager-->
<!--AWS License Manager-->
  <xsl:template match="*[name()='shared' and @id='LIClong']" priority="1"><xsl:text>AWS License Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LIC']" priority="1"><xsl:text>License Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-license-manager']" priority="1"><xsl:text>AWS License Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--License Manager master account SLR-->
<!--AWS License Manager master account SLR-->
  <xsl:template match="*[name()='shared' and @id='LICMasterAcctSlrlong']" priority="1"><xsl:text>AWS License Manager master account SLR</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LICMasterAcctSlr']" priority="1"><xsl:text>License Manager master account SLR</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-license-manager-master-account-slr']" priority="1"><xsl:text>AWS License Manager master account SLR</xsl:text></xsl:template>
<!--**************************************-->

<!--License Manager member account SLR-->
<!--AWS License Manager member account SLR-->
  <xsl:template match="*[name()='shared' and @id='LICMemberAcctSlrlong']" priority="1"><xsl:text>AWS License Manager member account SLR</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LICMemberAcctSlr']" priority="1"><xsl:text>License Manager member account SLR</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-license-manager-member-account-slr']" priority="1"><xsl:text>AWS License Manager member account SLR</xsl:text></xsl:template>
<!--**************************************-->

<!--Lightsail-->
<!--Amazon Lightsail-->
  <xsl:template match="*[name()='shared' and @id='lightsaillong']" priority="1"><xsl:text>Amazon Lightsail</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='lightsail']" priority="1"><xsl:text>Lightsail</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-lightsail']" priority="1"><xsl:text>Amazon Lightsail</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Location-->
<!--Amazon Location-->
  <xsl:template match="*[name()='shared' and @id='ALlong']" priority="1"><xsl:text>Amazon Location Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALshort']" priority="1"><xsl:text>Amazon Location</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ALshort']" priority="1"><xsl:text>Amazon Location Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Lumberyard-->
<!--Lumberyard-->
  <xsl:template match="*[name()='shared' and @id='ALYlong']" priority="1"><xsl:text>Amazon Lumberyard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALY']" priority="1"><xsl:text>Lumberyard</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ALY']" priority="1"><xsl:text>Amazon Lumberyard</xsl:text></xsl:template>
<!--**************************************-->

<!--Lookout for Equipment-->
<!--Lookout for Equipment-->
  <xsl:template match="*[name()='shared' and @id='HOGlong']" priority="1"><xsl:text>Amazon Lookout for Equipment</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='HOG']" priority="1"><xsl:text>Lookout for Equipment</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-HOG']" priority="1"><xsl:text>Amazon Lookout for Equipment</xsl:text></xsl:template>
<!--**************************************-->

<!--Lookout for Metrics-->
<!--Lookout for Metrics-->
  <xsl:template match="*[name()='shared' and @id='LFMlong']" priority="1"><xsl:text>Amazon Lookout for Metrics</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LFM']" priority="1"><xsl:text>Lookout for Metrics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-LFM']" priority="1"><xsl:text>Amazon Lookout for Metrics</xsl:text></xsl:template>
<!--**************************************-->

<!--Lookout for Vision-->
<!--Lookout for Vision-->
  <xsl:template match="*[name()='shared' and @id='LYRAlong']" priority="1"><xsl:text>Amazon Lookout for Vision</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LYRA']" priority="1"><xsl:text>Lookout for Vision</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-LYRA']" priority="1"><xsl:text>Amazon Lookout for Vision</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon ML-->
<!--Amazon Machine Learning-->
  <xsl:template match="*[name()='shared' and @id='MLlong']" priority="1"><xsl:text>Amazon Machine Learning</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ML']" priority="1"><xsl:text>Amazon ML</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-machinelearning']" priority="1"><xsl:text>Amazon Machine Learning</xsl:text></xsl:template>
<!--**************************************-->

<!--Macie-->
<!--Amazon Macie-->
  <xsl:template match="*[name()='shared' and @id='MCElong']" priority="1"><xsl:text>Amazon Macie</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MCE']" priority="1"><xsl:text>Macie</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-macie']" priority="1"><xsl:text>Amazon Macie</xsl:text></xsl:template>
<!--**************************************-->

<!--Managed Blockchain-->
<!--Managed Blockchain-->
  <xsl:template match="*[name()='shared' and @id='AMBlong']" priority="1"><xsl:text>Amazon Managed Blockchain</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMB']" priority="1"><xsl:text>Managed Blockchain</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AMB']" priority="1"><xsl:text>Amazon Managed Blockchain</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Managed Grafana-->
<!--AMG-->
  <xsl:template match="*[name()='shared' and @id='GRAlong']" priority="1"><xsl:text>Amazon Managed Grafana</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GRA']" priority="1"><xsl:text>Amazon Managed Grafana</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-GRA']" priority="1"><xsl:text>Amazon Managed Grafana</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Managed Service for Prometheus-->
<!--AMP-->
  <xsl:template match="*[name()='shared' and @id='PROlong']" priority="1"><xsl:text>Amazon Managed Service for Prometheus</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PRO']" priority="1"><xsl:text>Amazon Managed Service for Prometheus</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PRO']" priority="1"><xsl:text>Amazon Managed Service for Prometheus</xsl:text></xsl:template>
<!--**************************************-->

<!--AMS-->
<!--AMS-->
  <xsl:template match="*[name()='shared' and @id='AMSlong']" priority="1"><xsl:text>AWS Managed Services</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMS']" priority="1"><xsl:text>AMS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AMS']" priority="1"><xsl:text>AWS Managed Services</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon MSK-->
<!--Amazon Managed Streaming for Apache Kafka-->
  <xsl:template match="*[name()='shared' and @id='MSKlong']" priority="1"><xsl:text>Amazon Managed Streaming for Apache Kafka</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSK']" priority="1"><xsl:text>Amazon MSK</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-msk']" priority="1"><xsl:text>Amazon Managed Streaming for Apache Kafka</xsl:text></xsl:template>
<!--**************************************-->

<!--management portal-->
<!--management portal-->
  <xsl:template match="*[name()='shared' and @id='AMPlong']" priority="1"><xsl:text>AWS Management Portal for vCenter</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMP']" priority="1"><xsl:text>management portal</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AMP']" priority="1"><xsl:text>AWS Management Portal for vCenter</xsl:text></xsl:template>
<!--**************************************-->

<!--connector-->
<!--connector-->
  <xsl:template match="*[name()='shared' and @id='AMPClong']" priority="1"><xsl:text>AWS Connector for vCenter</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMPC']" priority="1"><xsl:text>connector</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AMPC']" priority="1"><xsl:text>AWS Connector for vCenter</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Catalog API-->
<!--AWS Marketplace Catalog API-->
  <xsl:template match="*[name()='shared' and @id='MKTCAPIlong']" priority="1"><xsl:text>AWS Marketplace Catalog API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTCAPI']" priority="1"><xsl:text>AWS Marketplace Catalog API</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws_marketplace_catalog']" priority="1"><xsl:text>AWS Marketplace Catalog API</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Commerce Analytics-->
<!--AWS Marketplace Commerce Analytics-->
  <xsl:template match="*[name()='shared' and @id='MKTCAlong']" priority="1"><xsl:text>AWS Marketplace Commerce Analytics</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTCA']" priority="1"><xsl:text>AWS Marketplace Commerce Analytics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-marketplacecommerceanalytics']" priority="1"><xsl:text>AWS Marketplace Commerce Analytics</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Entitlement Service-->
<!--AWS Marketplace Entitlement Service-->
  <xsl:template match="*[name()='shared' and @id='MKTESlong']" priority="1"><xsl:text>AWS Marketplace Entitlement Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTES']" priority="1"><xsl:text>AWS Marketplace Entitlement Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-marketplaceentitlement']" priority="1"><xsl:text>AWS Marketplace Entitlement Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Marketplace Metering Service-->
<!--AWS Marketplace Metering Service-->
  <xsl:template match="*[name()='shared' and @id='MKTMSlong']" priority="1"><xsl:text>AWS Marketplace Metering Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTMS']" priority="1"><xsl:text>AWS Marketplace Metering Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-marketplacemetering']" priority="1"><xsl:text>AWS Marketplace Metering Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Mechanical Turk-->
<!--Amazon Mechanical Turk-->
  <xsl:template match="*[name()='shared' and @id='MTlong']" priority="1"><xsl:text>Amazon Mechanical Turk</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MT']" priority="1"><xsl:text>Mechanical Turk</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mturk-requester']" priority="1"><xsl:text>Amazon Mechanical Turk</xsl:text></xsl:template>
<!--**************************************-->

<!--MemoryDB-->
<!--Amazon MemoryDB for Redis-->
  <xsl:template match="*[name()='shared' and @id='MDBlong']" priority="1"><xsl:text>Amazon MemoryDB for Redis</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MDB']" priority="1"><xsl:text>MemoryDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-memorydb']" priority="1"><xsl:text>Amazon MemoryDB for Redis</xsl:text></xsl:template>
<!--**************************************-->

<!--Migration Hub-->
<!--AWS Migration Hub-->
  <xsl:template match="*[name()='shared' and @id='MHBlong']" priority="1"><xsl:text>AWS Migration Hub</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MHB']" priority="1"><xsl:text>Migration Hub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-migrationhub']" priority="1"><xsl:text>AWS Migration Hub</xsl:text></xsl:template>
<!--**************************************-->

<!--Refactor Spaces-->
<!--AWS Migration Hub Refactor Spaces-->
  <xsl:template match="*[name()='shared' and @id='MHBRefactorlong']" priority="1"><xsl:text>AWS Migration Hub Refactor Spaces</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MHBRefactor']" priority="1"><xsl:text>Refactor Spaces</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-flux']" priority="1"><xsl:text>AWS Migration Hub Refactor Spaces</xsl:text></xsl:template>
<!--**************************************-->

<!--Mobile Analytics-->
<!--Amazon Mobile Analytics-->
  <xsl:template match="*[name()='shared' and @id='MAlong']" priority="1"><xsl:text>Amazon Mobile Analytics</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MA']" priority="1"><xsl:text>Mobile Analytics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-mobileanalytics']" priority="1"><xsl:text>Amazon Mobile Analytics</xsl:text></xsl:template>
<!--**************************************-->

<!--Mobile Hub-->
<!--Mobile Hub-->
  <xsl:template match="*[name()='shared' and @id='AMHlong']" priority="1"><xsl:text>AWS Mobile Hub</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMH']" priority="1"><xsl:text>Mobile Hub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AMH']" priority="1"><xsl:text>AWS Mobile Hub</xsl:text></xsl:template>
<!--**************************************-->

<!--Molecular Modeling-->
<!--Molecular Modeling-->
  <xsl:template match="*[name()='shared' and @id='MMlong']" priority="1"><xsl:text>AWS Molecular Modeling</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MM']" priority="1"><xsl:text>Molecular Modeling</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-MM']" priority="1"><xsl:text>AWS Molecular Modeling</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Monitron-->
<!--Amazon Monitron-->
  <xsl:template match="*[name()='shared' and @id='MONlong']" priority="1"><xsl:text>Amazon Monitron</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MON']" priority="1"><xsl:text>Amazon Monitron</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-MON']" priority="1"><xsl:text>Amazon Monitron</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon MQ-->
<!--Amazon MQ-->
  <xsl:template match="*[name()='shared' and @id='AMQlong']" priority="1"><xsl:text>Amazon MQ</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMQ']" priority="1"><xsl:text>Amazon MQ</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-amazonmq']" priority="1"><xsl:text>Amazon MQ</xsl:text></xsl:template>
<!--**************************************-->

<!--Neptune-->
<!--Amazon Neptune-->
  <xsl:template match="*[name()='shared' and @id='neptunelong']" priority="1"><xsl:text>Amazon Neptune</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='neptune']" priority="1"><xsl:text>Neptune</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-neptune']" priority="1"><xsl:text>Amazon Neptune</xsl:text></xsl:template>
<!--**************************************-->

<!--Neptune DB instance-->
<!--Neptune DB instance-->
  <xsl:template match="*[name()='shared' and @id='nep_dbinstancelong']" priority="1"><xsl:text>Amazon Neptune DB instance</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='nep_dbinstance']" priority="1"><xsl:text>Neptune DB instance</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-nep_dbinstance']" priority="1"><xsl:text>Amazon Neptune DB instance</xsl:text></xsl:template>
<!--**************************************-->

<!--Network Firewall-->
<!--Network Firewall-->
  <xsl:template match="*[name()='shared' and @id='NWFWlong']" priority="1"><xsl:text>AWS Network Firewall</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NWFW']" priority="1"><xsl:text>Network Firewall</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-NWFW']" priority="1"><xsl:text>AWS Network Firewall</xsl:text></xsl:template>
<!--**************************************-->

<!--Network Manager-->
<!--Network Manager-->
  <xsl:template match="*[name()='shared' and @id='NMlong']" priority="1"><xsl:text>Transit Gateway Network Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NM']" priority="1"><xsl:text>Network Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-NM']" priority="1"><xsl:text>Transit Gateway Network Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Nimble Studio-->
<!--Nimble Studio-->
  <xsl:template match="*[name()='shared' and @id='ANSlong']" priority="1"><xsl:text>Amazon Nimble Studio</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ANS']" priority="1"><xsl:text>Nimble Studio</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ANS']" priority="1"><xsl:text>Amazon Nimble Studio</xsl:text></xsl:template>
<!--**************************************-->

<!--OpenSearch Service-->
<!--Amazon OpenSearch Service-->
  <xsl:template match="*[name()='shared' and @id='AOSlong']" priority="1"><xsl:text>Amazon OpenSearch Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AOS']" priority="1"><xsl:text>OpenSearch Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-opensearchservice']" priority="1"><xsl:text>Amazon OpenSearch Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS OpsWorks-->
<!--AWS OpsWorks-->
  <xsl:template match="*[name()='shared' and @id='OPSlong']" priority="1"><xsl:text>AWS OpsWorks</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPS']" priority="1"><xsl:text>AWS OpsWorks</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-opsworks']" priority="1"><xsl:text>AWS OpsWorks</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS OpsWorks for Chef Automate-->
<!--OpsWorks for Chef Automate-->
  <xsl:template match="*[name()='shared' and @id='OPSCAlong']" priority="1"><xsl:text>AWS OpsWorks for Chef Automate</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSCA']" priority="1"><xsl:text>AWS OpsWorks for Chef Automate</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-OPSCA']" priority="1"><xsl:text>AWS OpsWorks for Chef Automate</xsl:text></xsl:template>
<!--**************************************-->

<!--OpsWorks for Puppet Enterprise-->
<!--OpsWorks for Puppet Enterprise-->
  <xsl:template match="*[name()='shared' and @id='OPSPUPlong']" priority="1"><xsl:text>AWS OpsWorks for Puppet Enterprise</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSPUP']" priority="1"><xsl:text>OpsWorks for Puppet Enterprise</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-OPSPUP']" priority="1"><xsl:text>AWS OpsWorks for Puppet Enterprise</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS OpsWorks CM-->
<!--AWS OpsWorks CM-->
  <xsl:template match="*[name()='shared' and @id='OPSCMlong']" priority="1"><xsl:text>AWS OpsWorks CM</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSCM']" priority="1"><xsl:text>AWS OpsWorks CM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-opsworks-cm']" priority="1"><xsl:text>AWS OpsWorks CM</xsl:text></xsl:template>
<!--**************************************-->

<!--Organizations-->
<!--AWS Organizations-->
  <xsl:template match="*[name()='shared' and @id='AOlong']" priority="1"><xsl:text>AWS Organizations</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AO']" priority="1"><xsl:text>Organizations</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-organizations']" priority="1"><xsl:text>AWS Organizations</xsl:text></xsl:template>
<!--**************************************-->

<!--OrigamiServiceGateway-->
<!--AWSOrigamiServiceGateway-->
  <xsl:template match="*[name()='shared' and @id='OSGlong']" priority="1"><xsl:text>AWSOrigamiServiceGateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OSG']" priority="1"><xsl:text>OrigamiServiceGateway</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws-osg']" priority="1"><xsl:text>AWSOrigamiServiceGateway</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Outposts-->
<!--Outposts-->
  <xsl:template match="*[name()='shared' and @id='OUTlong']" priority="1"><xsl:text>AWS Outposts</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OUT']" priority="1"><xsl:text>AWS Outposts</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-OUT']" priority="1"><xsl:text>AWS Outposts</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Panorama-->
<!--Panorama-->
  <xsl:template match="*[name()='shared' and @id='PANlong']" priority="1"><xsl:text>AWS Panorama</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PAN']" priority="1"><xsl:text>AWS Panorama</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PAN']" priority="1"><xsl:text>AWS Panorama</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS ParallelCluster-->
<!--ParallelCluster-->
  <xsl:template match="*[name()='shared' and @id='parallelclusterlong']" priority="1"><xsl:text>AWS ParallelCluster</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='parallelcluster']" priority="1"><xsl:text>AWS ParallelCluster</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws-parallelcluster']" priority="1"><xsl:text>AWS ParallelCluster</xsl:text></xsl:template>
<!--**************************************-->

<!--AWSPaymentsGatewayService-->
<!--AWSPaymentsGatewayService-->
  <xsl:template match="*[name()='shared' and @id='PMNTGatewaylong']" priority="1"><xsl:text>AWSPaymentsGatewayService</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PMNTGateway']" priority="1"><xsl:text>AWSPaymentsGatewayService</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws-payments-gateway']" priority="1"><xsl:text>AWSPaymentsGatewayService</xsl:text></xsl:template>
<!--**************************************-->

<!--PA-API-->
<!--PA-API-->
  <xsl:template match="*[name()='shared' and @id='PAAPIlong']" priority="1"><xsl:text>Product Advertising API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PAAPI']" priority="1"><xsl:text>PA-API</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PAAPI']" priority="1"><xsl:text>Product Advertising API</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Partner-->
<!--Partner Network-->
  <xsl:template match="*[name()='shared' and @id='APNlong']" priority="1"><xsl:text>AWS Partner Network</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APN']" priority="1"><xsl:text>AWS Partner</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-APN']" priority="1"><xsl:text>AWS Partner Network</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Personalize-->
<!--Amazon Personalize-->
  <xsl:template match="*[name()='shared' and @id='PERSlong']" priority="1"><xsl:text>Amazon Personalize</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PERS']" priority="1"><xsl:text>Amazon Personalize</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-personalize']" priority="1"><xsl:text>Amazon Personalize</xsl:text></xsl:template>
<!--**************************************-->

<!--Policy Simulator-->
<!--Policy Simulator-->
  <xsl:template match="*[name()='shared' and @id='PSlong']" priority="1"><xsl:text>IAM Policy Simulator</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PS']" priority="1"><xsl:text>Policy Simulator</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PS']" priority="1"><xsl:text>IAM Policy Simulator</xsl:text></xsl:template>
<!--**************************************-->

<!--ACM PCA-->
<!--AWS Certificate Manager Private Certificate Authority-->
  <xsl:template match="*[name()='shared' and @id='PCAlong']" priority="1"><xsl:text>AWS Certificate Manager Private Certificate Authority</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PCA']" priority="1"><xsl:text>ACM PCA</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ACMPrivateCA']" priority="1"><xsl:text>AWS Certificate Manager Private Certificate Authority</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Pinpoint-->
<!--Amazon Pinpoint-->
  <xsl:template match="*[name()='shared' and @id='PINlong']" priority="1"><xsl:text>Amazon Pinpoint</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN']" priority="1"><xsl:text>Amazon Pinpoint</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-pinpoint']" priority="1"><xsl:text>Amazon Pinpoint</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Polly-->
<!--Amazon Polly-->
  <xsl:template match="*[name()='shared' and @id='POLlong']" priority="1"><xsl:text>Amazon Polly</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='POL']" priority="1"><xsl:text>Amazon Polly</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-polly']" priority="1"><xsl:text>Amazon Polly</xsl:text></xsl:template>
<!--**************************************-->

<!--Porting Assistant for .NET-->
<!--Porting Assistant for .NET-->
  <xsl:template match="*[name()='shared' and @id='EClong']" priority="1"><xsl:text>Porting Assistant for .NET</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EC']" priority="1"><xsl:text>Porting Assistant for .NET</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-EC']" priority="1"><xsl:text>Porting Assistant for .NET</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Pricing Calculator-->
<!--Pricing Calculator-->
  <xsl:template match="*[name()='shared' and @id='APClong']" priority="1"><xsl:text>AWS Pricing Calculator</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='APC']" priority="1"><xsl:text>AWS Pricing Calculator</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-APC']" priority="1"><xsl:text>AWS Pricing Calculator</xsl:text></xsl:template>
<!--**************************************-->

<!--interface endpoint-->
<!--interface endpoint-->
  <xsl:template match="*[name()='shared' and @id='interface-endpoint-long']" priority="1"><xsl:text>interface VPC endpoint</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='interface-endpoint']" priority="1"><xsl:text>interface endpoint</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-interface-endpoint']" priority="1"><xsl:text>interface VPC endpoint</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Proton-->
<!--Proton-->
  <xsl:template match="*[name()='shared' and @id='ARWlong']" priority="1"><xsl:text>AWS Proton</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARW']" priority="1"><xsl:text>AWS Proton</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ARW']" priority="1"><xsl:text>AWS Proton</xsl:text></xsl:template>
<!--**************************************-->

<!--QLDB-->
<!--QLDB-->
  <xsl:template match="*[name()='shared' and @id='QLDBlong']" priority="1"><xsl:text>Amazon QLDB</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='QLDB']" priority="1"><xsl:text>QLDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-QLDB']" priority="1"><xsl:text>Amazon QLDB</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon QuickSight-->
<!--Amazon QuickSight-->
  <xsl:template match="*[name()='shared' and @id='QSlong']" priority="1"><xsl:text>Amazon QuickSight</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='QS']" priority="1"><xsl:text>Amazon QuickSight</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-quicksight']" priority="1"><xsl:text>Amazon QuickSight</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS RAM-->
<!--AWS Resource Access Manager-->
  <xsl:template match="*[name()='shared' and @id='RAMlong']" priority="1"><xsl:text>AWS Resource Access Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RAM']" priority="1"><xsl:text>AWS RAM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ram']" priority="1"><xsl:text>AWS Resource Access Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon RDS-->
<!--Amazon Relational Database Service-->
  <xsl:template match="*[name()='shared' and @id='RDSlong']" priority="1"><xsl:text>Amazon Relational Database Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDS']" priority="1"><xsl:text>Amazon RDS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-rds']" priority="1"><xsl:text>Amazon Relational Database Service</xsl:text></xsl:template>
<!--**************************************-->

<!--RDS for MariaDB-->
<!--RDS for MariaDB-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMaria']" priority="1"><xsl:text>Amazon RDS for MariaDB</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMaria']" priority="1"><xsl:text>RDS for MariaDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSMaria']" priority="1"><xsl:text>Amazon RDS for MariaDB</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon RDS for SQL Server-->
<!--RDS for SQL Server-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMSlong']" priority="1"><xsl:text>Amazon RDS for Microsoft SQL Server</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSlongMS']" priority="1"><xsl:text>Amazon RDS for SQL Server</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSlongMS']" priority="1"><xsl:text>Amazon RDS for Microsoft SQL Server</xsl:text></xsl:template>
<!--**************************************-->

<!--RDS for SQL Server-->
<!--RDS for SQL Server-->
  <xsl:template match="*[name()='shared' and @id='RDSMSlong']" priority="1"><xsl:text>RDS for Microsoft SQL Server</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMS']" priority="1"><xsl:text>RDS for SQL Server</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSMS']" priority="1"><xsl:text>RDS for Microsoft SQL Server</xsl:text></xsl:template>
<!--**************************************-->

<!--RDS for MySQL-->
<!--RDS for MySQL-->
  <xsl:template match="*[name()='shared' and @id='RDSlongMySQL']" priority="1"><xsl:text>Amazon RDS for MySQL</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSMySQL']" priority="1"><xsl:text>RDS for MySQL</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSMySQL']" priority="1"><xsl:text>Amazon RDS for MySQL</xsl:text></xsl:template>
<!--**************************************-->

<!--RDS for Oracle-->
<!--RDS for Oracle-->
  <xsl:template match="*[name()='shared' and @id='RDSlongOra']" priority="1"><xsl:text>Amazon RDS for Oracle</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSOra']" priority="1"><xsl:text>RDS for Oracle</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSOra']" priority="1"><xsl:text>Amazon RDS for Oracle</xsl:text></xsl:template>
<!--**************************************-->

<!--RDS for PostgreSQL-->
<!--RDS for PostgreSQL-->
  <xsl:template match="*[name()='shared' and @id='RDSlongPostgres']" priority="1"><xsl:text>Amazon RDS for PostgreSQL</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDSPostgres']" priority="1"><xsl:text>RDS for PostgreSQL</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RDSPostgres']" priority="1"><xsl:text>Amazon RDS for PostgreSQL</xsl:text></xsl:template>
<!--**************************************-->

<!--Reachability Analyzer-->
<!--Reachability Analyzer-->
  <xsl:template match="*[name()='shared' and @id='RAlong']" priority="1"><xsl:text>VPC Reachability Analyzer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RA']" priority="1"><xsl:text>Reachability Analyzer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RA']" priority="1"><xsl:text>VPC Reachability Analyzer</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Remote Configuration-->
<!--Amazon Remote Configuration-->
  <xsl:template match="*[name()='shared' and @id='RClong']" priority="1"><xsl:text>Amazon Remote Configuration</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RC']" priority="1"><xsl:text>Amazon Remote Configuration</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-RC']" priority="1"><xsl:text>Amazon Remote Configuration</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Redshift-->
<!--Amazon Redshift-->
  <xsl:template match="*[name()='shared' and @id='RSlong']" priority="1"><xsl:text>Amazon Redshift</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RS']" priority="1"><xsl:text>Amazon Redshift</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-redshift']" priority="1"><xsl:text>Amazon Redshift</xsl:text></xsl:template>
<!--**************************************-->

<!--Redshift Spectrum-->
<!--Redshift Spectrum-->
  <xsl:template match="*[name()='shared' and @id='SPClong']" priority="1"><xsl:text>Amazon Redshift Spectrum</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPC']" priority="1"><xsl:text>Redshift Spectrum</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SPC']" priority="1"><xsl:text>Amazon Redshift Spectrum</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Rekognition-->
<!--Amazon Rekognition-->
  <xsl:template match="*[name()='shared' and @id='REKlong']" priority="1"><xsl:text>Amazon Rekognition</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='REK']" priority="1"><xsl:text>Amazon Rekognition</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-rekognition']" priority="1"><xsl:text>Amazon Rekognition</xsl:text></xsl:template>
<!--**************************************-->

<!--Resilience Hub-->
<!--AWS Resilience Hub-->
  <xsl:template match="*[name()='shared' and @id='ARHlong']" priority="1"><xsl:text>AWS Resilience Hub</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARH']" priority="1"><xsl:text>Resilience Hub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-resiliencehub']" priority="1"><xsl:text>AWS Resilience Hub</xsl:text></xsl:template>
<!--**************************************-->

<!--Resource Groups-->
<!--Resource Groups-->
  <xsl:template match="*[name()='shared' and @id='ARGlong']" priority="1"><xsl:text>AWS Resource Groups</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARG']" priority="1"><xsl:text>Resource Groups</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ARG']" priority="1"><xsl:text>AWS Resource Groups</xsl:text></xsl:template>
<!--**************************************-->

<!--Resource Groups Tagging API-->
<!--AWS Resource Groups-->
  <xsl:template match="*[name()='shared' and @id='ARGTAPIlong']" priority="1"><xsl:text>AWS Resource Groups Tagging API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ARGTAPI']" priority="1"><xsl:text>Resource Groups Tagging API</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-resourcegroupstaggingapi']" priority="1"><xsl:text>AWS Resource Groups Tagging API</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS RoboMaker-->
<!--AWS RoboMaker-->
  <xsl:template match="*[name()='shared' and @id='RBMlong']" priority="1"><xsl:text>AWS RoboMaker</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RBM']" priority="1"><xsl:text>AWS RoboMaker</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-robomaker']" priority="1"><xsl:text>AWS RoboMaker</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53-->
<!--Route 53-->
  <xsl:template match="*[name()='shared' and @id='R53long']" priority="1"><xsl:text>Amazon Route&#160;53</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53']" priority="1"><xsl:text>Route&#160;53</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-R53']" priority="1"><xsl:text>Amazon Route&#160;53</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 Public Data Plane-->
<!--Amazon Route 53 Public Data Plane-->
  <xsl:template match="*[name()='shared' and @id='R53PDPlong']" priority="1"><xsl:text>Amazon Route&#160;53 Public Data Plane</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53PDP']" priority="1"><xsl:text>Route&#160;53 Public Data Plane</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53']" priority="1"><xsl:text>Amazon Route&#160;53 Public Data Plane</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 AWS Integration-->
<!--Amazon Route 53 AWS Integration-->
  <xsl:template match="*[name()='shared' and @id='R53AWSIntlong']" priority="1"><xsl:text>Amazon Route&#160;53 AWS Integration</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53AWSInt']" priority="1"><xsl:text>Route&#160;53 AWS Integration</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53awsintegration']" priority="1"><xsl:text>Amazon Route&#160;53 AWS Integration</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 Private DNS for VPCs-->
<!--Amazon Route 53 Private DNS for VPCs-->
  <xsl:template match="*[name()='shared' and @id='R53PDNSVPClong']" priority="1"><xsl:text>Amazon Route&#160;53 Private DNS for VPCs</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53PDNSVPC']" priority="1"><xsl:text>Route&#160;53 Private DNS for VPCs</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53privatedns']" priority="1"><xsl:text>Amazon Route&#160;53 Private DNS for VPCs</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 domain registration-->
<!--Amazon Route 53 domain registration-->
  <xsl:template match="*[name()='shared' and @id='R53DRlong']" priority="1"><xsl:text>Amazon Route&#160;53 domain registration</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53DR']" priority="1"><xsl:text>Route&#160;53 domain registration</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53domains']" priority="1"><xsl:text>Amazon Route&#160;53 domain registration</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 Resolver-->
<!--Amazon Route 53 Resolver-->
  <xsl:template match="*[name()='shared' and @id='R53Rlong']" priority="1"><xsl:text>Amazon Route&#160;53 Resolver</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53R']" priority="1"><xsl:text>Route&#160;53 Resolver</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53resolver']" priority="1"><xsl:text>Amazon Route&#160;53 Resolver</xsl:text></xsl:template>
<!--**************************************-->

<!--Route 53 ARC-->
<!--Amazon Route 53 Application Recovery Controller-->
  <xsl:template match="*[name()='shared' and @id='R53ARClong']" priority="1"><xsl:text>Amazon Route&#160;53 Application Recovery Controller</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='R53ARC']" priority="1"><xsl:text>Route 53 ARC</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-route53-application-recovery-controller']" priority="1"><xsl:text>Amazon Route&#160;53 Application Recovery Controller</xsl:text></xsl:template>
<!--**************************************-->

<!--SageMaker-->
<!--Amazon SageMaker-->
  <xsl:template match="*[name()='shared' and @id='SMlong']" priority="1"><xsl:text>Amazon SageMaker</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SM']" priority="1"><xsl:text>SageMaker</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sagemaker']" priority="1"><xsl:text>Amazon SageMaker</xsl:text></xsl:template>
<!--**************************************-->

<!--Ground Truth-->
<!--Ground Truth-->
  <xsl:template match="*[name()='shared' and @id='SAIlong']" priority="1"><xsl:text>Amazon SageMaker Ground Truth</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAI']" priority="1"><xsl:text>Ground Truth</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SAI']" priority="1"><xsl:text>Amazon SageMaker Ground Truth</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon A2I-->
<!--Amazon A2I-->
  <xsl:template match="*[name()='shared' and @id='a2ilong']" priority="1"><xsl:text>Amazon Augmented AI</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='a2ishort']" priority="1"><xsl:text>Amazon A2I</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-a2ishort']" priority="1"><xsl:text>Amazon Augmented AI</xsl:text></xsl:template>
<!--**************************************-->

<!--SageMaker-->
<!--Amazon SageMaker-->
  <xsl:template match="*[name()='shared' and @id='SMRuntimelong']" priority="1"><xsl:text>Amazon SageMaker</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SMRuntime']" priority="1"><xsl:text>SageMaker</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sagemakerruntime']" priority="1"><xsl:text>Amazon SageMaker</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon S3-->
<!--Amazon S3-->
  <xsl:template match="*[name()='shared' and @id='S3long']" priority="1"><xsl:text>Amazon Simple Storage Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3']" priority="1"><xsl:text>Amazon S3</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-S3']" priority="1"><xsl:text>Amazon Simple Storage Service</xsl:text></xsl:template>
<!--**************************************-->

<!--S3 on Outposts-->
<!--Amazon S3 on Outposts-->
  <xsl:template match="*[name()='shared' and @id='S3onOutpostsLong']" priority="1"><xsl:text>Amazon S3 on Outposts</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3onOutposts']" priority="1"><xsl:text>S3 on Outposts</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-S3onOutposts']" priority="1"><xsl:text>Amazon S3 on Outposts</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon S3 Control-->
<!--Amazon S3-->
  <xsl:template match="*[name()='shared' and @id='S3Controllong']" priority="1"><xsl:text>Amazon S3 Control</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3Control']" priority="1"><xsl:text>Amazon S3 Control</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-s3-control']" priority="1"><xsl:text>Amazon S3 Control</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SCT-->
<!--Schema Conversion Tool-->
  <xsl:template match="*[name()='shared' and @id='AWSSCTlong']" priority="1"><xsl:text>AWS Schema Conversion Tool</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSSCT']" priority="1"><xsl:text>AWS SCT</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-AWSSCT']" priority="1"><xsl:text>AWS Schema Conversion Tool</xsl:text></xsl:template>
<!--**************************************-->

<!--Mobile SDK for Android-->
<!--Mobile SDK for Android-->
  <xsl:template match="*[name()='shared' and @id='Androidlong']" priority="1"><xsl:text>AWS Mobile SDK for Android</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Android']" priority="1"><xsl:text>Mobile SDK for Android</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Android']" priority="1"><xsl:text>AWS Mobile SDK for Android</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for C++-->
<!--SDK for C++-->
  <xsl:template match="*[name()='shared' and @id='CPPlong']" priority="1"><xsl:text>AWS SDK for C++</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CPP']" priority="1"><xsl:text>SDK for C++</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-CPP']" priority="1"><xsl:text>AWS SDK for C++</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Go-->
<!--SDK for Go-->
  <xsl:template match="*[name()='shared' and @id='Golong']" priority="1"><xsl:text>AWS SDK for Go</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Go']" priority="1"><xsl:text>SDK for Go</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Go']" priority="1"><xsl:text>AWS SDK for Go</xsl:text></xsl:template>
<!--**************************************-->

<!--Mobile SDK for iOS-->
<!--Mobile SDK for iOS-->
  <xsl:template match="*[name()='shared' and @id='iOSlong']" priority="1"><xsl:text>AWS Mobile SDK for iOS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iOS']" priority="1"><xsl:text>Mobile SDK for iOS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-iOS']" priority="1"><xsl:text>AWS Mobile SDK for iOS</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Java-->
<!--SDK for Java-->
  <xsl:template match="*[name()='shared' and @id='Javalong']" priority="1"><xsl:text>AWS SDK for Java</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Java']" priority="1"><xsl:text>SDK for Java</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Java']" priority="1"><xsl:text>AWS SDK for Java</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Java 2.x-->
<!--SDK for Java 2.x-->
  <xsl:template match="*[name()='shared' and @id='JavaV2long']" priority="1"><xsl:text>AWS SDK for Java 2.x</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JavaV2']" priority="1"><xsl:text>SDK for Java 2.x</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-JavaV2']" priority="1"><xsl:text>AWS SDK for Java 2.x</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for JavaScript-->
<!--SDK for JavaScript-->
  <xsl:template match="*[name()='shared' and @id='JSBlong']" priority="1"><xsl:text>AWS SDK for JavaScript</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JSB']" priority="1"><xsl:text>SDK for JavaScript</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-JSB']" priority="1"><xsl:text>AWS SDK for JavaScript</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK Metrics-->
<!--SDK Metrics-->
  <xsl:template match="*[name()='shared' and @id='SDKMlong']" priority="1"><xsl:text>AWS SDK Metrics for Enterprise Support</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDKM']" priority="1"><xsl:text>SDK Metrics</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SDKM']" priority="1"><xsl:text>AWS SDK Metrics for Enterprise Support</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SDK for .NET-->
<!--SDK for .NET-->
  <xsl:template match="*[name()='shared' and @id='NETlong']" priority="1"><xsl:text>AWS SDK for .NET</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NET']" priority="1"><xsl:text>AWS SDK for .NET</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-NET']" priority="1"><xsl:text>AWS SDK for .NET</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for PHP-->
<!--SDK for PHP-->
  <xsl:template match="*[name()='shared' and @id='PHPlong']" priority="1"><xsl:text>AWS SDK for PHP</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PHP']" priority="1"><xsl:text>SDK for PHP</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PHP']" priority="1"><xsl:text>AWS SDK for PHP</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for PHP-->
<!--SDK for PHP 2-->
  <xsl:template match="*[name()='shared' and @id='PHP2long']" priority="1"><xsl:text>AWS SDK for PHP</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PHP2']" priority="1"><xsl:text>SDK for PHP</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-PHP2']" priority="1"><xsl:text>AWS SDK for PHP</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Python-->
<!--SDK for Python-->
  <xsl:template match="*[name()='shared' and @id='Pythonlong']" priority="1"><xsl:text>AWS SDK for Python (Boto)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Python']" priority="1"><xsl:text>SDK for Python</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Python']" priority="1"><xsl:text>AWS SDK for Python (Boto)</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Python (Boto3)-->
<!--SDK for Python (Boto3)-->
  <xsl:template match="*[name()='shared' and @id='Python3long']" priority="1"><xsl:text>AWS SDK for Python (Boto3)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Python3']" priority="1"><xsl:text>SDK for Python (Boto3)</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Python3']" priority="1"><xsl:text>AWS SDK for Python (Boto3)</xsl:text></xsl:template>
<!--**************************************-->

<!--SDK for Ruby-->
<!--SDK for Ruby-->
  <xsl:template match="*[name()='shared' and @id='Rubylong']" priority="1"><xsl:text>AWS SDK for Ruby</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Ruby']" priority="1"><xsl:text>SDK for Ruby</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Ruby']" priority="1"><xsl:text>AWS SDK for Ruby</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SMS-->
<!--AWS Server Migration Service-->
  <xsl:template match="*[name()='shared' and @id='SMSlong']" priority="1"><xsl:text>AWS Server Migration Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SMS']" priority="1"><xsl:text>AWS SMS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sms']" priority="1"><xsl:text>AWS Server Migration Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Secrets Manager-->
<!--AWS Secrets Manager-->
  <xsl:template match="*[name()='shared' and @id='ASMlong']" priority="1"><xsl:text>AWS Secrets Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASM']" priority="1"><xsl:text>Secrets Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-secretsmanager']" priority="1"><xsl:text>AWS Secrets Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Security Hub-->
<!--AWS Security Hub-->
  <xsl:template match="*[name()='shared' and @id='ASHlong']" priority="1"><xsl:text>AWS Security Hub</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASH']" priority="1"><xsl:text>Security Hub</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-securityhub']" priority="1"><xsl:text>AWS Security Hub</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SAM-->
<!--Serverless Application Model-->
  <xsl:template match="*[name()='shared' and @id='SAMlong']" priority="1"><xsl:text>AWS Serverless Application Model</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAM']" priority="1"><xsl:text>AWS SAM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SAM']" priority="1"><xsl:text>AWS Serverless Application Model</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Serverless Application Repository-->
<!--AWS Serverless Application Repository-->
  <xsl:template match="*[name()='shared' and @id='SARlong']" priority="1"><xsl:text>AWS Serverless Application Repository</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAR']" priority="1"><xsl:text>AWS Serverless Application Repository</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-serverlessrepo']" priority="1"><xsl:text>AWS Serverless Application Repository</xsl:text></xsl:template>
<!--**************************************-->

<!--Service Authorization Reference-->
<!--Service Authorization Reference-->
  <xsl:template match="*[name()='shared' and @id='SAZRlong']" priority="1"><xsl:text>Service Authorization Reference</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SAZR']" priority="1"><xsl:text>Service Authorization Reference</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SAZR']" priority="1"><xsl:text>Service Authorization Reference</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Service Catalog-->
<!--AWS Service Catalog-->
  <xsl:template match="*[name()='shared' and @id='SClong']" priority="1"><xsl:text>AWS Service Catalog</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SC']" priority="1"><xsl:text>AWS Service Catalog</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-servicecatalog']" priority="1"><xsl:text>AWS Service Catalog</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Service Catalog AppRegistry-->
<!--AWS Service Catalog AppRegistry-->
  <xsl:template match="*[name()='shared' and @id='SCARlong']" priority="1"><xsl:text>AWS Service Catalog AppRegistry</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SCAR']" priority="1"><xsl:text>AWS Service Catalog AppRegistry</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-scar']" priority="1"><xsl:text>AWS Service Catalog AppRegistry</xsl:text></xsl:template>
<!--**************************************-->

<!--Service Quotas-->
<!--Service Quotas-->
  <xsl:template match="*[name()='shared' and @id='SQlong']" priority="1"><xsl:text>Service Quotas</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SQ']" priority="1"><xsl:text>Service Quotas</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-servicequotas']" priority="1"><xsl:text>Service Quotas</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon SES-->
<!--Amazon Simple Email Service-->
  <xsl:template match="*[name()='shared' and @id='SESlong']" priority="1"><xsl:text>Amazon Simple Email Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SES']" priority="1"><xsl:text>Amazon SES</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ses']" priority="1"><xsl:text>Amazon Simple Email Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SFTP-->
<!--SFTP-->
  <xsl:template match="*[name()='shared' and @id='SFTPlong']" priority="1"><xsl:text>AWS Transfer for SFTP</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFTP']" priority="1"><xsl:text>AWS SFTP</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SFTP']" priority="1"><xsl:text>AWS Transfer for SFTP</xsl:text></xsl:template>
<!--**************************************-->

<!--Shield-->
<!--AWS Shield-->
  <xsl:template match="*[name()='shared' and @id='SHDlong']" priority="1"><xsl:text>AWS Shield</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHD']" priority="1"><xsl:text>Shield</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Shield']" priority="1"><xsl:text>AWS Shield</xsl:text></xsl:template>
<!--**************************************-->

<!--Shield Standard-->
<!--Shield Standard-->
  <xsl:template match="*[name()='shared' and @id='SHDSTDlong']" priority="1"><xsl:text>AWS Shield Standard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHDSTD']" priority="1"><xsl:text>Shield Standard</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SHDSTD']" priority="1"><xsl:text>AWS Shield Standard</xsl:text></xsl:template>
<!--**************************************-->

<!--Shield Advanced-->
<!--Shield Advanced-->
  <xsl:template match="*[name()='shared' and @id='SHDADVlong']" priority="1"><xsl:text>AWS Shield Advanced</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SHDADV']" priority="1"><xsl:text>Shield Advanced</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SHDADV']" priority="1"><xsl:text>AWS Shield Advanced</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Silk-->
<!--Amazon Silk-->
  <xsl:template match="*[name()='shared' and @id='SLKlong']" priority="1"><xsl:text>Amazon Silk</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SLK']" priority="1"><xsl:text>Amazon Silk</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SLK']" priority="1"><xsl:text>Amazon Silk</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Simple Pay-->
<!--Amazon Simple Pay-->
  <xsl:template match="*[name()='shared' and @id='SPlong']" priority="1"><xsl:text>Amazon Simple Pay</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SP']" priority="1"><xsl:text>Amazon Simple Pay</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SP']" priority="1"><xsl:text>Amazon Simple Pay</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS SSO-->
<!--Single Sign-On-->
  <xsl:template match="*[name()='shared' and @id='SSOlong']" priority="1"><xsl:text>AWS Single Sign-On</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SSO']" priority="1"><xsl:text>AWS SSO</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sso']" priority="1"><xsl:text>AWS Single Sign-On</xsl:text></xsl:template>
<!--**************************************-->

<!--Snow Device Management-->
<!--AWS Snow Device Management-->
  <xsl:template match="*[name()='shared' and @id='SDMlong']" priority="1"><xsl:text>AWS Snow Device Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDM']" priority="1"><xsl:text>Snow Device Management</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-snow-device-management']" priority="1"><xsl:text>AWS Snow Device Management</xsl:text></xsl:template>
<!--**************************************-->

<!--SPEKE-->
<!--SPEKE for DRM encryption-->
  <xsl:template match="*[name()='shared' and @id='SPKlong']" priority="1"><xsl:text>Secure Packager and Encoder Key Exchange</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPK']" priority="1"><xsl:text>SPEKE</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SPK']" priority="1"><xsl:text>Secure Packager and Encoder Key Exchange</xsl:text></xsl:template>
<!--**************************************-->

<!--Sumerian-->
<!--Amazon Sumerian-->
  <xsl:template match="*[name()='shared' and @id='sumerianlong']" priority="1"><xsl:text>Amazon Sumerian</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='sumerian']" priority="1"><xsl:text>Sumerian</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sumerian']" priority="1"><xsl:text>Amazon Sumerian</xsl:text></xsl:template>
<!--**************************************-->

<!--Systems Manager-->
<!--EC2 Systems Manager-->
  <xsl:template match="*[name()='shared' and @id='SYSlong']" priority="1"><xsl:text>AWS Systems Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SYS']" priority="1"><xsl:text>Systems Manager</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ec2simplesystemsmanager']" priority="1"><xsl:text>AWS Systems Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--SSM-->
<!--SSM-->
  <xsl:template match="*[name()='shared' and @id='SSMlong']" priority="1"><xsl:text>Amazon EC2 Systems Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SSM']" priority="1"><xsl:text>SSM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-SSM']" priority="1"><xsl:text>Amazon EC2 Systems Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Systems Manager Explorer-->
<!--AWS Systems Manager Explorer-->
  <xsl:template match="*[name()='shared' and @id='SYSElong']" priority="1"><xsl:text>AWS Systems Manager Explorer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SYSE']" priority="1"><xsl:text>Systems Manager Explorer</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ssm-explorer']" priority="1"><xsl:text>AWS Systems Manager Explorer</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon SimpleDB-->
<!--Amazon SimpleDB-->
  <xsl:template match="*[name()='shared' and @id='SDBlong']" priority="1"><xsl:text>Amazon SimpleDB</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDB']" priority="1"><xsl:text>Amazon SimpleDB</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-simpledb']" priority="1"><xsl:text>Amazon SimpleDB</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon SNS-->
<!--Amazon Simple Notification Service-->
  <xsl:template match="*[name()='shared' and @id='SNSlong']" priority="1"><xsl:text>Amazon Simple Notification Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SNS']" priority="1"><xsl:text>Amazon SNS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sns']" priority="1"><xsl:text>Amazon Simple Notification Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon SQS-->
<!--Amazon Simple Queue Service-->
  <xsl:template match="*[name()='shared' and @id='SQSlong']" priority="1"><xsl:text>Amazon Simple Queue Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SQS']" priority="1"><xsl:text>Amazon SQS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sqs']" priority="1"><xsl:text>Amazon Simple Queue Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Step Functions-->
<!--AWS Step Functions-->
  <xsl:template match="*[name()='shared' and @id='SFNlong']" priority="1"><xsl:text>AWS Step Functions</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFN']" priority="1"><xsl:text>Step Functions</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-states']" priority="1"><xsl:text>AWS Step Functions</xsl:text></xsl:template>
<!--**************************************-->

<!--Step Functions - Sync Express-->
<!--AWS Step Functions - Sync Express-->
  <xsl:template match="*[name()='shared' and @id='SFNSElong']" priority="1"><xsl:text>AWS Step Functions - Sync Express</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SFNSE']" priority="1"><xsl:text>Step Functions - Sync Express</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-states-states-sync-express']" priority="1"><xsl:text>AWS Step Functions - Sync Express</xsl:text></xsl:template>
<!--**************************************-->

<!--Storage Gateway-->
<!--AWS Storage Gateway-->
  <xsl:template match="*[name()='shared' and @id='AWSSGlong']" priority="1"><xsl:text>AWS Storage Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSSG']" priority="1"><xsl:text>Storage Gateway</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-storagegateway']" priority="1"><xsl:text>AWS Storage Gateway</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS STS-->
<!--AWS Security Token Service-->
  <xsl:template match="*[name()='shared' and @id='STSlong']" priority="1"><xsl:text>AWS Security Token Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='STS']" priority="1"><xsl:text>AWS STS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-sts']" priority="1"><xsl:text>AWS Security Token Service</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Support-->
<!--AWS Support-->
  <xsl:template match="*[name()='shared' and @id='SUPlong']" priority="1"><xsl:text>AWS Support</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SUP']" priority="1"><xsl:text>AWS Support</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-support']" priority="1"><xsl:text>AWS Support</xsl:text></xsl:template>
<!--**************************************-->

<!--Support Center Console-->
<!--AWS Support Center Console-->
  <xsl:template match="*[name()='shared' and @id='SUPCtrConsolelong']" priority="1"><xsl:text>AWS Support Center Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SUPCtrConsole']" priority="1"><xsl:text>Support Center Console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-support-center-console']" priority="1"><xsl:text>AWS Support Center Console</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon SWF-->
<!--Amazon Simple Workflow Service-->
  <xsl:template match="*[name()='shared' and @id='SWFlong']" priority="1"><xsl:text>Amazon Simple Workflow Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SWF']" priority="1"><xsl:text>Amazon SWF</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-swf']" priority="1"><xsl:text>Amazon Simple Workflow Service</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Textract-->
<!--Amazon Textract-->
  <xsl:template match="*[name()='shared' and @id='TEXTRACTlong']" priority="1"><xsl:text>Amazon Textract</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TEXTRACT']" priority="1"><xsl:text>Amazon Textract</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-textract']" priority="1"><xsl:text>Amazon Textract</xsl:text></xsl:template>
<!--**************************************-->

<!--Timestream-->
<!--Timestream-->
  <xsl:template match="*[name()='shared' and @id='TIMElong']" priority="1"><xsl:text>Amazon Timestream</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME']" priority="1"><xsl:text>Timestream</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TIME']" priority="1"><xsl:text>Amazon Timestream</xsl:text></xsl:template>
<!--**************************************-->

<!--Toolkit for Eclipse-->
<!--Toolkit for Eclipse-->
  <xsl:template match="*[name()='shared' and @id='TElong']" priority="1"><xsl:text>AWS Toolkit for Eclipse</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TE']" priority="1"><xsl:text>Toolkit for Eclipse</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TE']" priority="1"><xsl:text>AWS Toolkit for Eclipse</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Toolkit for JetBrains-->
<!--Toolkit for JetBrains-->
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitlong']" priority="1"><xsl:text>AWS Toolkit for JetBrains</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkit']" priority="1"><xsl:text>AWS Toolkit for JetBrains</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-JBIDEToolkit']" priority="1"><xsl:text>AWS Toolkit for JetBrains</xsl:text></xsl:template>
<!--**************************************-->

<!--Toolkit for Visual Studio-->
<!--Toolkit for Visual Studio-->
  <xsl:template match="*[name()='shared' and @id='TVSlong']" priority="1"><xsl:text>AWS Toolkit for Visual Studio</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TVS']" priority="1"><xsl:text>Toolkit for Visual Studio</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TVS']" priority="1"><xsl:text>AWS Toolkit for Visual Studio</xsl:text></xsl:template>
<!--**************************************-->

<!--VS Code-->
<!--VS Code-->
  <xsl:template match="*[name()='shared' and @id='VSCIDElong']" priority="1"><xsl:text>Visual Studio Code</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCIDE']" priority="1"><xsl:text>VS Code</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-VSCIDE']" priority="1"><xsl:text>Visual Studio Code</xsl:text></xsl:template>
<!--**************************************-->

<!--Toolkit for VS Code-->
<!--Toolkit for VS Code-->
  <xsl:template match="*[name()='shared' and @id='VSCIDEToolkit']" priority="1"><xsl:text>AWS Toolkit for Visual Studio Code</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCIDEToolkitshort']" priority="1"><xsl:text>Toolkit for VS Code</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-VSCIDEToolkitshort']" priority="1"><xsl:text>AWS Toolkit for Visual Studio Code</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS Toolkit for Azure DevOps-->
<!--Toolkit for Azure DevOps-->
  <xsl:template match="*[name()='shared' and @id='TTSlong']" priority="1"><xsl:text>AWS Toolkit for Microsoft Azure DevOps</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TTS']" priority="1"><xsl:text>AWS Toolkit for Azure DevOps</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TTS']" priority="1"><xsl:text>AWS Toolkit for Microsoft Azure DevOps</xsl:text></xsl:template>
<!--**************************************-->

<!--Tools for Windows PowerShell-->
<!--Tools for Windows PowerShell-->
  <xsl:template match="*[name()='shared' and @id='TWPlong']" priority="1"><xsl:text>AWS Tools for Windows PowerShell</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TWP']" priority="1"><xsl:text>Tools for Windows PowerShell</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TWP']" priority="1"><xsl:text>AWS Tools for Windows PowerShell</xsl:text></xsl:template>
<!--**************************************-->

<!--Tools for PowerShell-->
<!--Tools for PowerShell-->
  <xsl:template match="*[name()='shared' and @id='TWPALLlong']" priority="1"><xsl:text>AWS Tools for PowerShell</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TWPALL']" priority="1"><xsl:text>Tools for PowerShell</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TWPALL']" priority="1"><xsl:text>AWS Tools for PowerShell</xsl:text></xsl:template>
<!--**************************************-->

<!--Tools for PowerShell Core-->
<!--Tools for PowerShell Core-->
  <xsl:template match="*[name()='shared' and @id='TPClong']" priority="1"><xsl:text>AWS Tools for PowerShell Core</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TPC']" priority="1"><xsl:text>Tools for PowerShell Core</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-TPC']" priority="1"><xsl:text>AWS Tools for PowerShell Core</xsl:text></xsl:template>
<!--**************************************-->

<!--Transfer Family-->
<!--AWS Transfer Family-->
  <xsl:template match="*[name()='shared' and @id='TFlong']" priority="1"><xsl:text>AWS Transfer Family</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TF']" priority="1"><xsl:text>Transfer Family</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-transfer']" priority="1"><xsl:text>AWS Transfer Family</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS FTP-->
<!--Transfer for FTP-->
  <xsl:template match="*[name()='shared' and @id='FTPlong']" priority="1"><xsl:text>AWS Transfer for FTP</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FTP']" priority="1"><xsl:text>AWS FTP</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FTP']" priority="1"><xsl:text>AWS Transfer for FTP</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS FTPS-->
<!--Transfer for FTPS-->
  <xsl:template match="*[name()='shared' and @id='FTPSlong']" priority="1"><xsl:text>AWS Transfer for FTPS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FTPS']" priority="1"><xsl:text>AWS FTPS</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-FTPS']" priority="1"><xsl:text>AWS Transfer for FTPS</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Translate-->
<!--Amazon Translate-->
  <xsl:template match="*[name()='shared' and @id='TSLlong']" priority="1"><xsl:text>Amazon Translate</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TSL']" priority="1"><xsl:text>Amazon Translate</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Translate']" priority="1"><xsl:text>Amazon Translate</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon Transcribe-->
<!--Amazon Transcribe-->
  <xsl:template match="*[name()='shared' and @id='TSClong']" priority="1"><xsl:text>Amazon Transcribe</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TSC']" priority="1"><xsl:text>Amazon Transcribe</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-Transcribe']" priority="1"><xsl:text>Amazon Transcribe</xsl:text></xsl:template>
<!--**************************************-->

<!--Trusted Advisor-->
<!--AWS Trusted Advisor-->
  <xsl:template match="*[name()='shared' and @id='AWS-TA-long']" priority="1"><xsl:text>AWS Trusted Advisor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-TA']" priority="1"><xsl:text>Trusted Advisor</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-trustedadvisor']" priority="1"><xsl:text>AWS Trusted Advisor</xsl:text></xsl:template>
<!--**************************************-->

<!--VM Import/Export-->
<!--VM Import/Export-->
  <xsl:template match="*[name()='shared' and @id='VMIElong']" priority="1"><xsl:text>VM Import/Export</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VMIE']" priority="1"><xsl:text>VM Import/Export</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-vmimportexport']" priority="1"><xsl:text>VM Import/Export</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon VPC-->
<!--Amazon VPC-->
  <xsl:template match="*[name()='shared' and @id='VPClong']" priority="1"><xsl:text>Amazon Virtual Private Cloud</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPC']" priority="1"><xsl:text>Amazon VPC</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-VPC']" priority="1"><xsl:text>Amazon Virtual Private Cloud</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon VPC Console-->
<!--Amazon VPC Console-->
  <xsl:template match="*[name()='shared' and @id='VPCConsolelong']" priority="1"><xsl:text>Amazon Virtual Private Cloud Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPCConsole']" priority="1"><xsl:text>Amazon VPC Console</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-vpcconsole']" priority="1"><xsl:text>Amazon Virtual Private Cloud Console</xsl:text></xsl:template>
<!--**************************************-->

<!--IPAM-->
<!--Amazon VPC IP Address Manager-->
  <xsl:template match="*[name()='shared' and @id='ipam-long']" priority="1"><xsl:text>Amazon VPC IP Address Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ipam']" priority="1"><xsl:text>IPAM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-aws-ipam']" priority="1"><xsl:text>Amazon VPC IP Address Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Transit Gateway-->
<!--AWS Transit Gateway-->
  <xsl:template match="*[name()='shared' and @id='AWSTGlong']" priority="1"><xsl:text>AWS Transit Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSTG']" priority="1"><xsl:text>Transit Gateway</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-transit_gateway']" priority="1"><xsl:text>AWS Transit Gateway</xsl:text></xsl:template>
<!--**************************************-->

<!--Client VPN-->
<!--AWS Client VPN-->
  <xsl:template match="*[name()='shared' and @id='CVPNlong']" priority="1"><xsl:text>AWS Client VPN</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CVPN']" priority="1"><xsl:text>Client VPN</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-clientvpn']" priority="1"><xsl:text>AWS Client VPN</xsl:text></xsl:template>
<!--**************************************-->

<!--Site-to-Site VPN-->
<!--Site-to-Site VPN-->
  <xsl:template match="*[name()='shared' and @id='S2Slong']" priority="1"><xsl:text>AWS Site-to-Site VPN</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S2S']" priority="1"><xsl:text>Site-to-Site VPN</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-S2S']" priority="1"><xsl:text>AWS Site-to-Site VPN</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS VPN-->
<!--AWS Virtual Private Network-->
  <xsl:template match="*[name()='shared' and @id='VPNlong']" priority="1"><xsl:text>AWS Virtual Private Network</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VPN']" priority="1"><xsl:text>AWS VPN</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-vpnvpc']" priority="1"><xsl:text>AWS Virtual Private Network</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS WAF-->
<!--AWS WAF-->
  <xsl:template match="*[name()='shared' and @id='WAFlong']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAF']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-waf']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS WAFV2-->
<!--AWS WAFV2-->
  <xsl:template match="*[name()='shared' and @id='WAFv2long']" priority="1"><xsl:text>AWS WAFV2</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFv2']" priority="1"><xsl:text>AWS WAFV2</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-wafv2']" priority="1"><xsl:text>AWS WAFV2</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS WAF-->
<!--AWS WAF-->
  <xsl:template match="*[name()='shared' and @id='WAFRegionallong']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFRegional']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-waf-regional']" priority="1"><xsl:text>AWS WAF</xsl:text></xsl:template>
<!--**************************************-->

<!--Wavelength-->
<!--Wavelength-->
  <xsl:template match="*[name()='shared' and @id='WAVElong']" priority="1"><xsl:text>AWS Wavelength</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAVE']" priority="1"><xsl:text>Wavelength</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-WAVE']" priority="1"><xsl:text>AWS Wavelength</xsl:text></xsl:template>
<!--**************************************-->

<!--AWS WA Tool-->
<!--Well-Architected Tool-->
  <xsl:template match="*[name()='shared' and @id='WATlong']" priority="1"><xsl:text>AWS Well-Architected Tool</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAT']" priority="1"><xsl:text>AWS WA Tool</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-WAT']" priority="1"><xsl:text>AWS Well-Architected Tool</xsl:text></xsl:template>
<!--**************************************-->

<!--WorkSpaces-->
<!--Amazon WorkSpaces-->
  <xsl:template match="*[name()='shared' and @id='WSPlong']" priority="1"><xsl:text>Amazon WorkSpaces</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WSP']" priority="1"><xsl:text>WorkSpaces</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-workspaces']" priority="1"><xsl:text>Amazon WorkSpaces</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon WAM-->
<!--Amazon WorkSpaces Application Manager-->
  <xsl:template match="*[name()='shared' and @id='WAMlong']" priority="1"><xsl:text>Amazon WorkSpaces Application Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAM']" priority="1"><xsl:text>Amazon WAM</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-wam']" priority="1"><xsl:text>Amazon WorkSpaces Application Manager</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon WorkLink-->
<!--Amazon WorkLink-->
  <xsl:template match="*[name()='shared' and @id='WLKlong']" priority="1"><xsl:text>Amazon WorkLink</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WLK']" priority="1"><xsl:text>Amazon WorkLink</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-worklink']" priority="1"><xsl:text>Amazon WorkLink</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon WorkMail-->
<!--Amazon WorkMail-->
  <xsl:template match="*[name()='shared' and @id='WMlong']" priority="1"><xsl:text>Amazon WorkMail</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WM']" priority="1"><xsl:text>Amazon WorkMail</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-workmail']" priority="1"><xsl:text>Amazon WorkMail</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon WorkDocs-->
<!--Amazon WorkDocs-->
  <xsl:template match="*[name()='shared' and @id='WDlong']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WD']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-workdocs']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
<!--**************************************-->

<!--Amazon WorkDocs-->
<!--Former Zocalo Now Workdocs-->
  <xsl:template match="*[name()='shared' and @id='ZCLlong']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ZCL']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-ZCL']" priority="1"><xsl:text>Amazon WorkDocs</xsl:text></xsl:template>
<!--**************************************-->

<!--X-Ray-->
<!--AWS X-Ray-->
  <xsl:template match="*[name()='shared' and @id='xraylong']" priority="1"><xsl:text>AWS X-Ray</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray']" priority="1"><xsl:text>X-Ray</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-xray']" priority="1"><xsl:text>AWS X-Ray</xsl:text></xsl:template>
<!--**************************************-->

<!--Zelkova Service-->
<!--AWS Zelkova Service-->
  <xsl:template match="*[name()='shared' and @id='zelkovalong']" priority="1"><xsl:text>AWS Zelkova Service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='zelkova']" priority="1"><xsl:text>Zelkova Service</xsl:text></xsl:template>
  <!--Use for RIPConfig autogen region tables only. Do NOT use in regular docs-->
  <xsl:template match="*[name()='shared' and @id='autogen-name-zelkova']" priority="1"><xsl:text>AWS Zelkova Service</xsl:text></xsl:template>
<!--**************************************-->

  <xsl:template match="*[name()='shared' and @id='ad-connector']" priority="1"><xsl:text>AD Connector</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALB']" priority="1"><xsl:text>Application Load Balancer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ALBs']" priority="1"><xsl:text>Application Load Balancers</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMR']" priority="1"><xsl:text>AWS Managed Rules</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMRrg']" priority="1"><xsl:text>AWS Managed Rules rule group</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMRrgs']" priority="1"><xsl:text>AWS Managed Rules rule groups</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AMS-Acclong']" priority="1"><xsl:text>AMS Accelerate</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ASMshort']" priority="1"><xsl:text>Secrets Manager</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS']" priority="1"><xsl:text>AWS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-always']" priority="1"><xsl:text>AWS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWSlong']" priority="1"><xsl:text>Amazon Web Services</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-account']" priority="1"><xsl:text>AWS account</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-accounts']" priority="1"><xsl:text>AWS accounts</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Cloud']" priority="1"><xsl:text>AWS Cloud</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DC-Long']" priority="1"><xsl:text>AWS Direct Connect</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-DClong']" priority="1"><xsl:text>AWS Direct Connect</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-managed-key']" priority="1"><xsl:text>AWS managed key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-managed-keys']" priority="1"><xsl:text>AWS managed keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-owned-key']" priority="1"><xsl:text>AWS owned key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='aws-owned-keys']" priority="1"><xsl:text>AWS owned keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Region']" priority="1"><xsl:text>AWS Region</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Regions']" priority="1"><xsl:text>AWS Regions</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-service']" priority="1"><xsl:text>AWS service</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-services']" priority="1"><xsl:text>AWS services</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-TA-Long']" priority="1"><xsl:text>AWS Trusted Advisor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='AWS-Training']" priority="1"><xsl:text>AWS Training</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Billinglong']" priority="1"><xsl:text>AWS Billing</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Billing']" priority="1"><xsl:text>Billing</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Budgetslong']" priority="1"><xsl:text>AWS Budgets</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Bulda']" priority="1"><xsl:text>Snowball client</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CCLong']" priority="1"><xsl:text>AWS Config</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CDKshort']" priority="1"><xsl:text>CDK</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNLong']" priority="1"><xsl:text>AWS CloudFormation</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNshort']" priority="1"><xsl:text>CloudFormation</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNGUARDlong']" priority="1"><xsl:text>AWS CloudFormation Guard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CFNGUARDshort']" priority="1"><xsl:text>Guard</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM_plus']" priority="1"><xsl:text>plus license</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHM_pro']" priority="1"><xsl:text>pro license</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CHMPro']" priority="1"><xsl:text>Amazon Chime Pro</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLB']" priority="1"><xsl:text>Classic Load Balancer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CLBs']" priority="1"><xsl:text>Classic Load Balancers</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cluster']" priority="1"><xsl:text>cluster</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Cluster']" priority="1"><xsl:text>Cluster</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CMG']" priority="1"><xsl:text>AWS Cost Management</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGID']" priority="1"><xsl:text>Amazon Cognito Identity</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='COGUP']" priority="1"><xsl:text>Amazon Cognito user pools</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKC']" priority="1"><xsl:text>AWS Encryption SDK for C</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKJava']" priority="1"><xsl:text>AWS Encryption SDK for Java</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKJS']" priority="1"><xsl:text>AWS Encryption SDK for JavaScript</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CryptoSDKPy']" priority="1"><xsl:text>AWS Encryption SDK for Python</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CSC']" priority="1"><xsl:text>AWS CodeStar connections</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='CURlong']" priority="1"><xsl:text>AWS Cost and Usage Report</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-key']" priority="1"><xsl:text>customer managed key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-keys']" priority="1"><xsl:text>customer managed keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-key-cap']" priority="1"><xsl:text>Customer managed key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='cust-keys-cap']" priority="1"><xsl:text>Customer managed keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-key']" priority="1"><xsl:text>data key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-keys']" priority="1"><xsl:text>data keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-key-cap']" priority="1"><xsl:text>Data key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='data-keys-cap']" priority="1"><xsl:text>Data keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DCV']" priority="1"><xsl:text>NICE DCV</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSapis']" priority="1"><xsl:text>EBS direct APIs</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSencrypt']" priority="1"><xsl:text>Amazon EBS encryption</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EBSencrypt_capitalized']" priority="1"><xsl:text>Amazon EBS Encryption</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ecr-public-gallery']" priority="1"><xsl:text>Amazon ECR Public Gallery</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECRfirst']" priority="1"><xsl:text>Amazon Elastic Container Registry (Amazon ECR)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ECSfirst']" priority="1"><xsl:text>Amazon Elastic Container Service (Amazon ECS)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='EMR-EKS']" priority="1"><xsl:text>Amazon EMR on EKS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ES-OPEN']" priority="1"><xsl:text>OpenSearch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FARGATEfirst']" priority="1"><xsl:text>AWS Fargate (Fargate)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-S3long']" priority="1"><xsl:text>Amazon S3 File Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-S3']" priority="1"><xsl:text>S3 File Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-FSxWlong']" priority="1"><xsl:text>Amazon FSx File Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='FGW-FSxW']" priority="1"><xsl:text>FSx File Gateway</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='flex']" priority="1"><xsl:text>FlexMatch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLB']" priority="1"><xsl:text>Gateway Load Balancer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLBs']" priority="1"><xsl:text>Gateway Load Balancers</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLshort']" priority="1"><xsl:text>S3 Glacier</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLUAPI']" priority="1"><xsl:text>AWS Glue API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GLverylong']" priority="1"><xsl:text>Amazon Simple Storage Service Glacier</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='govcloud-us']" priority="1"><xsl:text>AWS GovCloud (US)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='govcloud-us-region']" priority="1"><xsl:text>AWS GovCloud (US) Region</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='GSG']" priority="1"><xsl:text>Getting Started with AWS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IntellijIDE']" priority="1"><xsl:text>IntelliJ IDE</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iot-lorawan']" priority="1"><xsl:text>AWS IoT Core for LoRaWAN</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='iot-wireless-api']" priority="1"><xsl:text>AWS IoT Wireless</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTAYSDK']" priority="1"><xsl:text>AWS IoT Device SDK for Arduino Yún</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTC']" priority="1"><xsl:text>AWS IOT Device SDK for C</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCEmbeddedSDK']" priority="1"><xsl:text>AWS IoT Device SDK for Embedded C</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCore']" priority="1"><xsl:text>AWS IoT Core</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTCPPSDK']" priority="1"><xsl:text>AWS IoT Device SDK for C++</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDA']" priority="1"><xsl:text>Device Advisor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDAlong']" priority="1"><xsl:text>AWS IoT Core Device Advisor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDD']" priority="1"><xsl:text>AWS IoT Device Defender</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDSDK']" priority="1"><xsl:text>AWS IoT Device SDK</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTDT']" priority="1"><xsl:text>AWS IoT Device Tester</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTFH']" priority="1"><xsl:text>AWS IoT Fleet Hub</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJavaSDK']" priority="1"><xsl:text>AWS IoT Device SDK for Java</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJobsData']" priority="1"><xsl:text>AWS IoT jobs data</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJS']" priority="1"><xsl:text>AWS IoT Device SDK for JavaScript</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTJSSDK']" priority="1"><xsl:text>AWS IoT Device SDK for JavaScript</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='IoTPythonSDK']" priority="1"><xsl:text>AWS IoT Device SDK for Python</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITE-data']" priority="1"><xsl:text>AWS IoT Events Data</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTG-data-model']" priority="1"><xsl:text>AWS IoT Things Graph Data Model</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGconsole']" priority="1"><xsl:text>AWS IoT Things Graph console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGmapdes']" priority="1"><xsl:text>AWS IoT Things Graph mapping designer</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='ITTGmodel']" priority="1"><xsl:text>AWS IoT Things Graph model editor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDE']" priority="1"><xsl:text>JetBrains</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitIntelliJ']" priority="1"><xsl:text>AWS Toolkit for IntelliJ</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBIDEToolkitPyCharm']" priority="1"><xsl:text>AWS Toolkit for PyCharm</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JBToolkitMarketName']" priority="1"><xsl:text>AWS Toolkit</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong']" priority="1"><xsl:text>Amazon Corretto</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong8']" priority="1"><xsl:text>Amazon Corretto 8</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong11']" priority="1"><xsl:text>Amazon Corretto 11</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong15']" priority="1"><xsl:text>Amazon Corretto 15</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong16']" priority="1"><xsl:text>Amazon Corretto 16</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlong17']" priority="1"><xsl:text>Amazon Corretto 17</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKlongpreview']" priority="1"><xsl:text>Amazon Corretto 8</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKpreview']" priority="1"><xsl:text>Corretto 8</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort']" priority="1"><xsl:text>Corretto</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort8']" priority="1"><xsl:text>Corretto 8</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort11']" priority="1"><xsl:text>Corretto 11</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort15']" priority="1"><xsl:text>Corretto 15</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort16']" priority="1"><xsl:text>Corretto 16</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='JDKshort17']" priority="1"><xsl:text>Corretto 17</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGMTACCT-NoCaps']" priority="1"><xsl:text>management account</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MGMTACCT-Caps']" priority="1"><xsl:text>Management account</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKT']" priority="1"><xsl:text>AWS Marketplace</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MKTlong']" priority="1"><xsl:text>AWS Marketplace</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MMPlong']" priority="1"><xsl:text>AWS Marketplace Management Portal</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSExtractlong']" priority="1"><xsl:text>AWS Microservice Extractor for .NET</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='MSExtract']" priority="1"><xsl:text>Microservice Extractor</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='NLBs']" priority="1"><xsl:text>Network Load Balancers</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='opensearch']" priority="1"><xsl:text>OpenSearch</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='OPSStack']" priority="1"><xsl:text>AWS OpsWorks Stacks</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PCAshort']" priority="1"><xsl:text>ACM Private CA</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PClong']" priority="1"><xsl:text>AWS Promotional Credit</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN-Email-API']" priority="1"><xsl:text>Amazon Pinpoint Email API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PIN-SMS-Voice-API']" priority="1"><xsl:text>Amazon Pinpoint SMS and Voice API</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PLlong']" priority="1"><xsl:text>AWS Price List</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='privatelink']" priority="1"><xsl:text>AWS PrivateLink</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='PyCharmIDE']" priority="1"><xsl:text>PyCharm IDE</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='QLDBfirst']" priority="1"><xsl:text>Amazon Quantum Ledger Database (Amazon QLDB)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='RDS-VMW']" priority="1"><xsl:text>Amazon RDS on VMware</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='REKimg']" priority="1"><xsl:text>Amazon Rekognition Image</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='REKvid']" priority="1"><xsl:text>Amazon Rekognition Video</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='REPOST']" priority="1"><xsl:text>AWS re:Post</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-key']" priority="1"><xsl:text>root key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-keys']" priority="1"><xsl:text>root keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-key-cap']" priority="1"><xsl:text>Root key</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='root-keys-cap']" priority="1"><xsl:text>Root keys</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-glacier']" priority="1"><xsl:text>S3 Glacier Flexible Retrieval</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-glacier-ir']" priority="1"><xsl:text>S3 Glacier Instant Retrieval</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='S3-storage-class-deep-archive']" priority="1"><xsl:text>S3 Glacier Deep Archive</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SDKCodeSampCat']" priority="1"><xsl:text>AWS Code Sample Catalog</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='simple-ad']" priority="1"><xsl:text>Simple AD</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Swift']" priority="1"><xsl:text>SDK for Swift</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Swiftlong']" priority="1"><xsl:text>AWS SDK for Swift</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowball']" priority="1"><xsl:text>Snowball</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowballlong']" priority="1"><xsl:text>AWS Snowball</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowconsole']" priority="1"><xsl:text>AWS Snow Family Management Console</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='Snowlong']" priority="1"><xsl:text>Snowball appliance</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowDevices']" priority="1"><xsl:text>Snow Family devices</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowDeviceslong']" priority="1"><xsl:text>AWS Snow Family devices</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowFamily']" priority="1"><xsl:text>Snow Family</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SnowFamilylong']" priority="1"><xsl:text>AWS Snow Family</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SP-singular']" priority="1"><xsl:text>Savings Plan</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SPs']" priority="1"><xsl:text>Savings Plans</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SLN']" priority="1"><xsl:text>Amazon States Language</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='STSshort']" priority="1"><xsl:text>AWS STS</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='SvrlessAppTitle']" priority="1"><xsl:text>AWS Serverless Application</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TFW']" priority="1"><xsl:text>AWS Tools for Windows</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME-query']" priority="1"><xsl:text>Amazon Timestream Query</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TIME-write']" priority="1"><xsl:text>Amazon Timestream Write</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='TTSshort']" priority="1"><xsl:text>Toolkit for Azure DevOps</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VS']" priority="1"><xsl:text>Visual Studio</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VS-req-ver']" priority="1"><xsl:text>Visual Studio 2010 or later</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='VSCTKMarketName']" priority="1"><xsl:text>AWS Toolkit for Visual Studio Code</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFclassic']" priority="1"><xsl:text>AWS WAF Classic</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAFClassicRegional']" priority="1"><xsl:text>AWS WAF Classic Regional</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='WAMfirst']" priority="1"><xsl:text>Amazon WorkSpaces Application Manager (Amazon WAM)</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-dotnetsdk']" priority="1"><xsl:text>AWS X-Ray SDK for .NET</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-javasdk']" priority="1"><xsl:text>AWS X-Ray SDK for Java</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-nodejssdk']" priority="1"><xsl:text>AWS X-Ray SDK for Node.js</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='xray-pythonsdk']" priority="1"><xsl:text>AWS X-Ray SDK for Python</xsl:text></xsl:template>
  <xsl:template match="*[name()='shared' and @id='DCA-top-secret']" priority="1"><xsl:text/></xsl:template>
  <xsl:template match="*[name()='shared' and @id='LCK-secret']" priority="1"><xsl:text/></xsl:template>

  <xsl:template match="*[name()='shared']" priority=".5"><xsl:message terminate="yes">ERROR: The shared element with id=<xsl:value-of select="@id"/> is undefined. Please check to make sure the ID is correct.</xsl:message></xsl:template>
<xsl:template match="node() | @*"><xsl:copy><xsl:apply-templates select="node() | @*"/></xsl:copy></xsl:template>
</xsl:stylesheet>