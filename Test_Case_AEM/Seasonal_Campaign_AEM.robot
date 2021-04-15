*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String
Library    OperatingSystem
Library    HttpLibrary.HTTP
Library    RequestsLibrary
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Seasonal_Campaign_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords_Seasonal_Campaign_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser





*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Seasonal Campaign AEM


AEM_Seasonal_Campaign_01 Create Campaign Page 'RE_Seasonal_Campaign_1' Type of Content Free text
    AEM_Seasonal_Campaign_01 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_01 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_01 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_01 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_01 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_01 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_01 Step12 Click Save&Close
    AEM_Seasonal_Campaign_01 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_01 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_01 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_02 Create Campaign Page 'RE_Seasonal_Campaign_2' Type of Content Image
    AEM_Seasonal_Campaign_02 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_02 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_02 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_02 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_02 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_02 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_02 Step12 Click Save&Close
    AEM_Seasonal_Campaign_02 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_02 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_02 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_03 Create Campaign Page 'RE_Seasonal_Campaign_3' Type of Content Reward Store
    AEM_Seasonal_Campaign_03 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_03 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_03 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_03 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_03 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_03 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_03 Step12 Click Save&Close
    AEM_Seasonal_Campaign_03 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_03 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_03 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_04
    AEM_Seasonal_Campaign_04 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_04 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_04 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_04 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_04 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_04 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_04 Step12 Click Save&Close
    AEM_Seasonal_Campaign_04 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_04 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_04 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_05 Create Campaign Page 'RE_Seasonal_Campaign_5' Type of Content Article
    AEM_Seasonal_Campaign_05 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_05 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_05 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_05 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_05 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_05 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_05 Step12 Click Save&Close
    AEM_Seasonal_Campaign_05 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_05 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_05 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_06 Create Campaign Page 'RE_Seasonal_Campaign_6' Type of Content Link out URL
    AEM_Seasonal_Campaign_06 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_06 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_06 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_06 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_06 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_06 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_06 Step12 Click Save&Close
    AEM_Seasonal_Campaign_06 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_06 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_06 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_07 Create Campaign Page 'RE_Seasonal_Campaign7' 3 Type of Content
    AEM_Seasonal_Campaign_07 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_07 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_07 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_07 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_07 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_07 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_07 Step12 Click Save&Close
    AEM_Seasonal_Campaign_07 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_07 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_07 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_08 Create Campaign Page 'RE_Seasonal_Campaign_8' 4 Type of Content
    AEM_Seasonal_Campaign_08 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_08 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_08 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_08 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_08 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_08 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_08 Step12 Click Save&Close
    AEM_Seasonal_Campaign_08 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_08 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_08 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_09 Create Campaign Page 'RE_Seasonal_Campaign_9' 6 Type of Content
    AEM_Seasonal_Campaign_09 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_09 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_09 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_09 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_09 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_09 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_09 Step12 Click Save&Close
    AEM_Seasonal_Campaign_09 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_09 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_09 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_10 Create Campaign Page 'RE_Seasonal_Campaign_10' 10 Type of Content
    AEM_Seasonal_Campaign_10 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_10 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_10 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_10 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_10 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_10 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_10 Step12 Click Save&Close
    AEM_Seasonal_Campaign_10 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_10 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_10 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_11 Create Campaign Page 'RE_Seasonal_Campaign_11' 6 Type of Content and not input all information on condition field
    AEM_Seasonal_Campaign_11 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_11 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_11 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_11 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_11 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_11 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_11 Step12 Click Save&Close
    AEM_Seasonal_Campaign_11 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_11 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_11 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_12 Create Campaign Page 'RE_Seasonal_Campaign_11' Type of Content Image and add images 6
    AEM_Seasonal_Campaign_12 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_12 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_12 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_12 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_12 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_12 Create Campaign Page Type of Content Image and add images 6
AEM_Seasonal_Campaign_13 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
    AEM_Seasonal_Campaign_13 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_13 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_13 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_13 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_13 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_13 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_13' Repeat order number
    AEM_Seasonal_Campaign_14 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_14 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_14 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_14 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_14 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
    AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_13' Repeat order number
AEM_Seasonal_Campaign_15 Edit Campaign Page change remove and move image 'RE_Seasonal_Campaign_2' Type of Content Image
    AEM_Seasonal_Campaign_15_Edit Campaign Page change remove and move image
    AEM_Seasonal_Campaign_15 Step12 Click Save&Close
    AEM_Seasonal_Campaign_15 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_15 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_15 Step15 Click Preview and verify Publish API on Campaign page
    AEM_Seasonal_Campaign_15_add image Max allowed items is 5
AEM_Seasonal_Campaign_16 Edit Campaign Page remove and add Badge'RE_Seasonal_Campaign_4' Type of Content Badge
    AEM_Seasonal_Campaign_16_Edit Campaign Page add Type of Content
    AEM_Seasonal_Campaign_16 Step12 Click Save&Close
    AEM_Seasonal_Campaign_16 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_16 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_16 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_17 Edit Campaign Page remove and add Article'RE_Seasonal_Campaign_5' Type of Content Badge
    AEM_Seasonal_Campaign_17_Edit Campaign Page remove and add Article
    AEM_Seasonal_Campaign_17 Step12 Click Save&Close
    AEM_Seasonal_Campaign_17 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_17 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_17 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_18 Edit Campaign Page add Type of Content 'RE_Seasonal_Campaign_3' Type of Content Reward Store
    AEM_Seasonal_Campaign_18_Edit Campaign Page add Type of Content
    AEM_Seasonal_Campaign_18 Step12 Click Save&Close
    AEM_Seasonal_Campaign_18 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_18 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_18 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_19 Edit Campaign Page Remove Type of Content 'RE_Seasonal_Campaign_3' Type of Content Reward Store
    AEM_Seasonal_Campaign_19_Edit Campaign Page Remove Type of Content
    AEM_Seasonal_Campaign_19 Step12 Click Save&Close
    AEM_Seasonal_Campaign_19 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_19 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_19 Step15 Click Preview and verify Publish API on Campaign page
    AEM_Seasonal_Campaign_20_Edit Campaign information 6 Type of Content
    AEM_Seasonal_Campaign_20 Step12 Click Save&Close
    AEM_Seasonal_Campaign_20 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_20 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_20 Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_21 Edit Campaign Page Remove 9 Type of Content and add 1 Type of Content 'RE_Seasonal_Campaign_10'
    AEM_Seasonal_Campaign_21 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_21 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_21 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_21 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_21 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_21 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_21 Step12 Click Save&Close
    AEM_Seasonal_Campaign_21 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_21 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_21 Step15 Click Preview and verify Publish API on Campaign page
    AEM_Seasonal_Campaign_21_Rmove 9 Type of Content
    AEM_Seasonal_Campaign_21_add 1 Type of Content
    AEM_Seasonal_Campaign_21_Edit Step12 Click Save&Close
    AEM_Seasonal_Campaign_21_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_21_Edit Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_21_Edit Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_22 Edit Campaign Page Remove all Type of Content 'RE_Seasonal_Campaign_10'
    AEM_Seasonal_Campaign_22 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_22 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_22 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_22 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_22 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_22 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_22 Step12 Click Save&Close
    AEM_Seasonal_Campaign_22 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_22 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_22 Step15 Click Preview and verify Publish API on Campaign page
    AEM_Seasonal_Campaign_22_Edit Campaign Page Remove all Type of Content
    AEM_Seasonal_Campaign_22_Edit Step12 Click Save&Close
    AEM_Seasonal_Campaign_22_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_22_Edit Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_22_Edit Step15 Click Preview and verify Publish API on Campaign page
AEM_Seasonal_Campaign_23 Edit Campaign Page add Type of Contend 10 Blocks 'RE_Seasonal_Campaign_1' Type of Content Free text
    AEM_Seasonal_Campaign_23_Edit Campaign Page add Type of Contend 10 Blocks
AEM_Seasonal_Campaign_24 Edit Campaign Page add Repeat order number 'RE_Seasonal_Campaign_1' Type of Content Free text
    AEM_Seasonal_Campaign_23_Edit Type of Campaign and add Repeat order number
AEM_Seasonal_Campaign_25 Edit Campaign Type and add Type of Content Free text 'RE_Seasonal_Campaign_1' Type of Content Free text
    AEM_Seasonal_Campaign_25 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    AEM_Seasonal_Campaign_25 Step06 Input value in Basic tab
    AEM_Seasonal_Campaign_25 Step07 Input Campaign Details
    AEM_Seasonal_Campaign_25 Step08 Click Create and Click Done
    AEM_Seasonal_Campaign_25 Step09 Click Pic New Campaign and Click Propeties
    AEM_Seasonal_Campaign_25 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    AEM_Seasonal_Campaign_25 Step12 Click Save&Close
    AEM_Seasonal_Campaign_25 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_25 Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_25 Step15 Click Preview and verify Publish API on Campaign page
    AEM_Seasonal_Campaign_25_Edit Campaign Type and add Type of Content Free text
    AEM_Seasonal_Campaign_25 Edit Step12 Click Save&Close
    AEM_Seasonal_Campaign_25 Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    AEM_Seasonal_Campaign_25 Edit Step14 Click Page Information > Publish Page on Campaign page
    AEM_Seasonal_Campaign_25 Edit Step15 Click Preview and verify Publish API on Campaign page

