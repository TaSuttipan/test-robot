*** Settings ***
Documentation
Library    DateTime
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Library    OperatingSystem
Library    HttpLibrary.HTTP
Library    RequestsLibrary
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Branch_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords_Branch_AEM.robot
Resource    ../Keywords/Keywords_Partner_AEM.robot
Resource    ../Variable/Variable_Partner_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser




*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Branch AEM


AEM_Branch_01 Create branch page 'Adobe Branch - 1' for check created branch page
   AEM_Branch_01_Step03 Click Create > Click Page
   AEM_Branch_01_Step04 Select Branchs API Page
   AEM_Branch_01_Step05 Input value in Basic tab
   AEM_Branch_01_Step06 Input Branch Details (refer Information by Data Test)
   AEM_Branch_01_Step07 Click Create
   AEM_Branch_01_Step08 Click Open and verify Branch
   AEM_Branch_01_Step09 Click Page Information > Publish Page on Branch page
   AEM_Branch_01_Step10 Click Preview and verify Publish API on Location page

AEM_Branch_02 Create branch page 'Adobe Branch - 2' not input all information on condition field for check created branch page
   AEM_Branch_02_Step03 Click Create > Click Page
   AEM_Branch_02_Step04 Select Location API Page
   AEM_Branch_02_Step05 Input value in Basic tab
   AEM_Branch_02_Step06 Input Branch Details (refer Information by Data Test)
   AEM_Branch_02_Create Branch Page 'Branch Test 1' not input mandatory field
   AEM_Branch_02_Step07 Click Create
   AEM_Branch_02_Step08 Click Open and verify Branch
   AEM_Branch_02_Step09 Click Page Information > Publish Page on Branch page
   AEM_Branch_02_Step10 Click Preview and verify Publish API on Location page

AEM_Branch_03 Create branch page 'branch Test' not input mandatory field for check can't create branch page
   AEM_Branch_03_Step03 Click Create > Click Page
   AEM_Branch_03_Step04 Select Location API Page
   AEM_Branch_03_Step05 Input value in Basic tab
   AEM_Branch_03_Step06 Input Branch Details (refer Information by Data Test)
   AEM_Branch_03_Create Branch Page 'Branch Test 1' not input mandatory field

AEM_Branch_04 Edit Adobe Branch edit information,add text "edit" all text field for check edited branch page
   AEM_Branch_04_Step01 Click Page Information > Unpublish Page
   AEM_Branch_04_Step02 Click Edit Information
   AEM_Branch_04_Step03 Publish Page on Branchs page
   AEM_Branch_04_Step04 Click Preview and verify Publish API on Branchs page

AEM_Partner Validate Adobe Partner
   AEM_Partner Validate Adobe Partner