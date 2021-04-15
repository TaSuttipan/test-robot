*** Settings ***
Documentation
Suite Setup       Set Log Level    TRACE
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Library    DateTime
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Variable/Variable_Badge_AEM.robot
Resource    ../Variable/Variable_Badge_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Badge_AEM.robot
Suite Teardown     Close Browser


*** Test Cases ***
Login SMP with Auttapol.w account
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Get Date and Time Today of SMP
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Login SMP

Create Campaign
    Create Campaign 3Transfer on SMP
    Create Campaign Spender on SMP
    Create Campaign 2Redeem on SMP
    Create Campaign 1Redeem on SMP
    Create Campaign 3Redeem on SMP

Login AEM with test-approver account
    Login AEM with test-approver account
    Check if Questionnaire BadgeV2 AEM
Badge_AEM_01 Create Badge Category type Public page via AEM
    Badge_AEM_01 Step03 Click Badge Category page under the 1 Central
    Badge_AEM_01 Step06 Input Title Name > Click Create
    Badge_AEM_01 Step08 Click Edit Badge Category > Click Configure
    Badge_AEM_01 Step09 Input Badge Category Information Click Done
    Badge_AEM_01 Step11 Click Preview > Click Submit

Badge_AEM_02 Create Badge Category type Staff page via AEM
    Badge_AEM_02 Step03 Click Badge Category page under the 1 Central
    Badge_AEM_02 Step06 Input Title Name > Click Create
    Badge_AEM_02 Step08 Click Edit Badge Category > Click Configure
    Badge_AEM_02 Step09 Input Badge Category Information Click Done
    Badge_AEM_02 Step11 Click Preview > Click Submit

Badge_AEM_03 Create Badge "Type Point" Campaign type Public via AEM
    Badge_AEM_03 Step03 Click Badge V2 under the 1 Central
    Badge_AEM_03 Step04 Click Create > Click Page
    Badge_AEM_03 Step06 Input Title Name > Click Create
    Badge_AEM_03 Step08 Click Edit Badge V2 > Click Configure
    Badge_AEM_03 Step09 Input Badge V2 Information Click Done
    Badge_AEM_03 Step11 Click Preview > Click Submit

Badge_AEM_04 Create Badge "Type Reward" Campaign type Targeted via AEM
    Badge_AEM_04 Step03 Click Badge V2 under the 1 Central
    Badge_AEM_04 Step04 Click Create > Click Page
    Badge_AEM_04 Step06 Input Title Name > Click Create
    Badge_AEM_04 Step08 Click Edit Badge V2 > Click Configure
    Badge_AEM_04 Step09 Input Badge V2 Information Click Done
    Badge_AEM_04 Step11 Click Preview > Click Submit

Badge_AEM_05 Create Badge "Type Point" Campaign type Targeted Optin via AEM
    Badge_AEM_05 Step03 Click Badge V2 under the 1 Central
    Badge_AEM_05 Step04 Click Create > Click Page
    Badge_AEM_05 Step06 Input Title Name > Click Create
    Badge_AEM_05 Step08 Click Edit Badge V2 > Click Configure
    Badge_AEM_05 Step09 Input Badge V2 Information Click Done
    Badge_AEM_05 Step11 Click Preview > Click Submit

Badge_AEM_06 Create Badge "Type Membership QR" Campaign type Targeted via AEM
    Badge_AEM_06 Step03 Click Badge V2 under the 1 Central
    Badge_AEM_06 Step04 Click Create > Click Page
    Badge_AEM_06 Step06 Input Title Name > Click Create
    Badge_AEM_06 Step08 Click Edit Badge V2 > Click Configure
    Badge_AEM_06 Step09 Input Badge V2 Information Click Done
    Badge_AEM_06 Step11 Click Preview > Click Submit

Badge_AEM_07 Create Badge "Membership Card" Campaign type Public Optin via AEM
    Badge_AEM_07 Step03 Click Badge V2 under the 1 Central
    Badge_AEM_07 Step04 Click Create > Click Page
    Badge_AEM_07 Step06 Input Title Name > Click Create
    Badge_AEM_07 Step08 Click Edit Badge V2 > Click Configure
    Badge_AEM_07 Step09 Input Badge V2 Information Click Done
    Badge_AEM_07 Step11 Click Preview > Click Submit

Badge_AEM_08 Edit Badge Category "Public RE" change type and information via AEM
    Badge_AEM_08 Step03 Click Badge Category page under the 1 Central
    Badge_AEM_08 Step06 Click Edit Badge Category > Click Configure
    Badge_AEM_08 Step07 Edit Badge Category Information
    Badge_AEM_08 Step09 Click Preview > Click Submit

Badge_AEM_09 Edit Badge Category "Staff RE" change type and information via AEM
    Badge_AEM_09 Step03 Click Badge Category page under the 1 Central
    Badge_AEM_09 Step06 Click Edit Badge Category > Click Configure
    Badge_AEM_09 Step07 Edit Badge Category Information
    Badge_AEM_09 Step09 Click Preview > Click Submit

Badge_AEM_11 Edit Badge information and add text edit all field via AEM
    Badge_AEM_011 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_1
    Badge_AEM_011 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_011 Step07 Edit Badge V3 Information
    Badge_AEM_011 Step09 Click Preview > Click Submit

Badge_AEM_13 Edit Badge change Campaign type and chang Reward to Point via AEM
    Badge_AEM_13 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_2
    Badge_AEM_13 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_13 Step07 Edit Badge V3 Information
    Badge_AEM_13 Step09 Click Preview > Click Submit

Badge_AEM_14 Edit Badge Change Type Point to Reward via AEM
    Badge_AEM_14 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    Badge_AEM_14 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_14 Step07 Edit Badge V3 Information
    Badge_AEM_14 Step09 Click Preview > Click Submit

Badge_AEM_15 Edit Badge Change Type Membership QR to Membership Code via AEM
    Badge_AEM_15 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_4
    Badge_AEM_15 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_15 Step07 Edit Badge V3 Information
    Badge_AEM_15 Step09 Click Preview > Click Submit

Badge_AEM_16 Edit Badge Change Type Membership Card to MembershipBarcode via AEM
    Badge_AEM_16 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_5
    Badge_AEM_16 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_16 Step07 Edit Badge V3 Information
    Badge_AEM_16 Step09 Click Preview > Click Submit

Badge_AEM_17 Edit Badge Change Partner and badge order via AEM
    Badge_AEM_17 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    Badge_AEM_17 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_17 Step07 Edit Badge V3 Information
    Badge_AEM_17 Step09 Click Preview > Click Submit

Badge_AEM_18 Edit Common tab Badge via AEM
    Badge_AEM_18 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    Badge_AEM_18 Step06 Click Edit Badge V3 > Click Configure
    Badge_AEM_18 Step07 Edit Badge V3 Information
    Badge_AEM_18 Step09 Click Preview > Click Submit


