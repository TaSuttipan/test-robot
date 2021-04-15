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
Resource    ../Variable/Variable_Optin_Campaign_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Optin_Campaign_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser





*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Optin Campaign AEM


AEM_Optin_Campaign_01 Create Campaign Page 'Optin_Campaign_1' Type of Content Free text
   AEM_Optin_Campaign_01 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_01 Step06 Input value in Basic tab
   AEM_Optin_Campaign_01 Step07 Input Campaign Details
   AEM_Optin_Campaign_01 Step08 Click Create and Click Done
   AEM_Optin_Campaign_01 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_01 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_01 Step12 Click Save&Close
   AEM_Optin_Campaign_01 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_01 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_01 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_02 Create Campaign Page 'Optin_Campaign_2' Type of Content image
   AEM_Optin_Campaign_02 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_02 Step06 Input value in Basic tab
   AEM_Optin_Campaign_02 Step07 Input Campaign Details
   AEM_Optin_Campaign_02 Step08 Click Create and Click Done
   AEM_Optin_Campaign_02 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_02 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_02 Step12 Click Save&Close
   AEM_Optin_Campaign_02 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_02 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_02 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_03 Create Campaign Page 'Optin_Campaign_3' Type of Content Link Out URL
   AEM_Optin_Campaign_03 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_03 Step06 Input value in Basic tab
   AEM_Optin_Campaign_03 Step07 Input Campaign Details
   AEM_Optin_Campaign_03 Step08 Click Create and Click Done
   AEM_Optin_Campaign_03 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_03 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_03 Step12 Click Save&Close
   AEM_Optin_Campaign_03 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_03 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_03 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_04 Create Campaign Page 'Optin_Campaign_4' Type of Content Button to Optin
   AEM_Optin_Campaign_04 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_04 Step06 Input value in Basic tab
   AEM_Optin_Campaign_04 Step07 Input Campaign Details
   AEM_Optin_Campaign_04 Step08 Click Create and Click Done
   AEM_Optin_Campaign_04 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_04 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_04 Step12 Click Save&Close
   AEM_Optin_Campaign_04 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_04 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_04 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_05 Create Campaign Page 'Optin_Campaign_5' 4 Type of Content
   AEM_Optin_Campaign_05 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_05 Step06 Input value in Basic tab
   AEM_Optin_Campaign_05 Step07 Input Campaign Details
   AEM_Optin_Campaign_05 Step08 Click Create and Click Done
   AEM_Optin_Campaign_05 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_05 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_05 Step12 Click Save&Close
   AEM_Optin_Campaign_05 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_05 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_05 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_06 Create Campaign Page 'Optin_Campaign_6' 5 Type of Content
   AEM_Optin_Campaign_06 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_06 Step06 Input value in Basic tab
   AEM_Optin_Campaign_06 Step07 Input Campaign Details
   AEM_Optin_Campaign_06 Step08 Click Create and Click Done
   AEM_Optin_Campaign_06 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_06 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_06 Step12 Click Save&Close
   AEM_Optin_Campaign_06 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_06 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_06 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_07 Create Campaign Page 'Optin_Campaign_7' 10 Type of Content
   AEM_Optin_Campaign_07 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_07 Step06 Input value in Basic tab
   AEM_Optin_Campaign_07 Step07 Input Campaign Details
   AEM_Optin_Campaign_07 Step08 Click Create and Click Done
   AEM_Optin_Campaign_07 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_07 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_07 Step12 Click Save&Close
   AEM_Optin_Campaign_07 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_07 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_07 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_08 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
   AEM_Optin_Campaign_08 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_08 Step06 Input value in Basic tab
   AEM_Optin_Campaign_08 Step07 Input Campaign Details
   AEM_Optin_Campaign_08 Step08 Click Create and Click Done
   AEM_Optin_Campaign_08 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_08 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image

AEM_Optin_Campaign_09 Create Campaign Page 'Optin_Campaign_9' 11 Type of Content
   AEM_Optin_Campaign_09 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_09 Step06 Input value in Basic tab
   AEM_Optin_Campaign_09 Step07 Input Campaign Details
   AEM_Optin_Campaign_09 Step08 Click Create and Click Done
   AEM_Optin_Campaign_09 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_09 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
   AEM_Optin_Campaign_09_Create Campaign Page add Type of Contend 10 Blocks

AEM_Optin_Campaign_10 Create Campaign Page 'Optin_Campaign_10' Repeat order number
   AEM_Optin_Campaign_10 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_10 Step06 Input value in Basic tab
   AEM_Optin_Campaign_10 Step07 Input Campaign Details
   AEM_Optin_Campaign_10 Step08 Click Create and Click Done
   AEM_Optin_Campaign_10 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_10 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
   AEM_Optin_Campaign_10_Create Campaign Page add Type of Contend 10 Blocks
   AEM_Optin_Campaign_10_Create Repeat order number

AEM_Optin_Campaign_11 Edit Campaign Page change remove and move image 'Optin_Campaign_2' Type of Content image
   AEM_Optin_Campaign_11_Edit Campaign Page change remove and move image
   AEM_Optin_Campaign_11 Step12 Click Save&Close
   AEM_Optin_Campaign_11 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_11 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_11 Step15 Click Preview and verify Publish API on Campaign page
   AEM_Optin_Campaign_11_add image Max allowed items is 5

AEM_Optin_Campaign_12 Edit Campaign information 4 Type of Content'Optin_Campaign_5'
   AEM_Optin_Campaign_12_Edit Campaign information 4 Type of Content
   AEM_Optin_Campaign_12 Step12 Click Save&Close
   AEM_Optin_Campaign_12 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_12 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_12 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_13 "Edit Campaign Page add Type of Content 'Optin_Campaign_3' Type of Content Link Out URL"
   AEM_Optin_Campaign_13_Edit Campaign Page add Type of Content
   AEM_Optin_Campaign_13 Step12 Click Save&Close
   AEM_Optin_Campaign_13 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_13 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_13 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_14 Edit Campaign Page Remove Type of Content 'Optin_Campaign_6'
   AEM_Optin_Campaign_14_Edit Campaign Remove 1 Type of Content
   AEM_Optin_Campaign_14 Step12 Click Save&Close
   AEM_Optin_Campaign_14 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_14 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_14 Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_15 Edit Campaign Page Remove 9 Type of Content 'Optin_Campaign_7'
   AEM_Optin_Campaign_15 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_15 Step06 Input value in Basic tab
   AEM_Optin_Campaign_15 Step07 Input Campaign Details
   AEM_Optin_Campaign_15 Step08 Click Create and Click Done
   AEM_Optin_Campaign_15 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_15 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_15 Step12 Click Save&Close
   AEM_Optin_Campaign_15 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_15 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_15 Step15 Click Preview and verify Publish API on Campaign page
   AEM_Optin_Campaign_15_Edit Campaign Remove 9 Type of Content
   AEM_Optin_Campaign_15_Edit Step12 Click Save&Close
   AEM_Optin_Campaign_15_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_15_Edit Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_15_Edit Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_16 Edit Campaign Page Change Campaign ID 'Optin_Campaign_1' Type of Content Button to Optin
   AEM_Optin_Campaign_16_Edit Type of Campaign

AEM_Optin_Campaign_17 Edit Unpublish Campaign Page Change Campaign type 'Optin_Campaign_1'
   AEM_Optin_Campaign_17 Edit Step06 Click Page Information > Unpublish Page on Campaign page
   AEM_Optin_Campaign_17 Edit Step12 Click Save&Close
   AEM_Optin_Campaign_17 Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_17 Edit Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_17 Edit Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_18 Edit Campaign Page Remove all Type of Content 'Optin_Campaign_18'
   AEM_Optin_Campaign_18 Step04 Click Create > Click Page > Step05 Select Campaign API Page
   AEM_Optin_Campaign_18 Step06 Input value in Basic tab
   AEM_Optin_Campaign_18 Step07 Input Campaign Details
   AEM_Optin_Campaign_18 Step08 Click Create and Click Done
   AEM_Optin_Campaign_18 Step09 Click Pic New Campaign and Click Propeties
   AEM_Optin_Campaign_18 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
   AEM_Optin_Campaign_18 Step12 Click Save&Close
   AEM_Optin_Campaign_18 Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_18 Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_18 Step15 Click Preview and verify Publish API on Campaign page
   AEM_Optin_Campaign_18_Edit Campaign Page change remove and move image
   AEM_Optin_Campaign_18_Edit Step12 Click Save&Close
   AEM_Optin_Campaign_18_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
   AEM_Optin_Campaign_18_Edit Step14 Click Page Information > Publish Page on Campaign page
   AEM_Optin_Campaign_18_Edit Step15 Click Preview and verify Publish API on Campaign page

AEM_Optin_Campaign_19 Edit Campaign Page add Repeat order number 'Optin_Campaign_1' Type of Content image
   AEM_Optin_Campaign_19_Edit Repeat order number

AEM_Optin_Campaign_20_Edit Campaign Page add Type of Contend 10 Blocks
   AEM_Optin_Campaign_20_Edit Campaign Page add Type of Contend 10 Blocks
