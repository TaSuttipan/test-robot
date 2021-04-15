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
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Partner_AEM.robot
Resource    ../Variable/Variable_Partner_AEM.robot
Suite Teardown     Close Browser





*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Partner AEM


AEM_Partner_01 Create Partner Page 'Regression Starbucks' for check created partner page
   AEM_Partner_01_Step04 Click Create > Click Page
   AEM_Partner_01_Step05 Select Partner API Page
   AEM_Partner_01_Step06 Input value in Basic tab
   AEM_Partner_01_Step07 Input Partner Details (refer Information by Data Test)
   AEM_Partner_01_Step08 Click Create
   AEM_Partner_01_Step09 Click Open and verify Partner
   AEM_Partner_01_Step10 Click Page Information > Publish Page on Partner page
   AEM_Partner_01_Step11 Click Preview and verify Publish API on Partner page

AEM_Partner_02 Create Partner Page 'Partner Test 2' not input optional field all information on condition field for check created partner page
   AEM_Partner_02_Step04 Click Create > Click Page
   AEM_Partner_02_Step05 Select Partner API Page
   AEM_Partner_02_Step06 Input value in Basic tab
   AEM_Partner_02_Step07 Input Partner Details (refer Information by Data Test)
   AEM_Partner_02_Step08 Click Create
   AEM_Partner_02_Step09 Click Open and verify Partner
   AEM_Partner_02_Step10 Click Page Information > Publish Page on Partner page
   AEM_Partner_02_Step11 Click Preview and verify Publish API on Partner page

AEM_Partner_03 Create Partner Page 'Partner Test' for check not input mandatory field can't create partner page
   AEM_Partner_03_Step04 Click Create > Click Page
   AEM_Partner_03_Step05 Select Partner API Page
   AEM_Partner_03_Step06 Input value in Basic tab
   AEM_Partner_03_Step07 Input Partner Details (refer Information by Data Test)

AEM_Partner_04 Create Partner Page 'Partner Test' for check can't add image 6 images
   AEM_Partner_04_Step04 Click Create > Click Page
   AEM_Partner_04_Step05 Select Partner API Page
   AEM_Partner_04_Step06 Input value in Basic tab
   AEM_Partner_04_Step07 Input Partner Details (refer Information by Data Test)

AEM_Partner_05 Edit all information 'Regression Starbucks' add "Edit" all field for check edited partner page
   AEM_Partner_05_Click Page Information > Unpublish Page
   AEM_Partner_05_Edit all information 'Regression Partner' add "Edit" all field
   AEM_Partner_05 Publish Page on Partner page
   AEM_Partner_05 Click Preview and verify Publish API on Partner page


