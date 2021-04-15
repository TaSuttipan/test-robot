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
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Variable/Variable_Article_AEM.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Article_T1X_AEM.robot
Suite Teardown     Close Browser


*** Test Cases ***
Login AEM
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Check if Questionnaire Article The1Exclusive AEM
    Login AEM with test approver account

#******EN******

Article_The1Exclusive_AEM_01 Create Category Listing Page "SIT1_T1X_Privileges" in folder English
    Article_The1Exclusive_AEM_01 Step05 Click English Create
    Article_The1Exclusive_AEM_01 Step07 Select Category Listing Page
    Article_The1Exclusive_AEM_01 Step08 Input value in Category Listing
    Article_The1Exclusive_AEM_01 Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_01 Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_02 Create Category page "SIT_T1X_Shopping" in folder English
    Article_The1Exclusive_AEM_02 Step05 Click English Create
    Article_The1Exclusive_AEM_02 Step07 Select Category API Page
    Article_The1Exclusive_AEM_02 Step08 Input value in Category Listing
    Article_The1Exclusive_AEM_02 Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_02 Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_03 Create Articles page "SIT Central Department Store" in folder English
    Article_The1Exclusive_AEM_03 Step05 Click English
    Article_The1Exclusive_AEM_03 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_03 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_03 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_03 Step12 Click Create
    Article_The1Exclusive_AEM_03 Step13 Click Preview and verify Articles page

Article_The1Exclusive_AEM_04 Create Articles page "SIT SIWILAI Online Store" in folder English
    Article_The1Exclusive_AEM_04 Step05 Click English
    Article_The1Exclusive_AEM_04 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_04 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_04 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_04 Step12 Click Create
    Article_The1Exclusive_AEM_04 Step13 Click Preview and verify Articles page

Article_The1Exclusive_AEM_05 Create Articles page "SIT Central Restaurant Group" in folder English
    Article_The1Exclusive_AEM_05 Step05 Click English
    Article_The1Exclusive_AEM_05 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_05 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_05 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_05 Step12 Click Create
    Article_The1Exclusive_AEM_05 Step13 Click Preview and verify Articles page


Article_The1Exclusive_AEM_06 Create Articles page "SIT Personal Assistant" in folder English
    Article_The1Exclusive_AEM_06 Step05 Click English
    Article_The1Exclusive_AEM_06 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_06 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_06 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_06 Step12 Click Create
    Article_The1Exclusive_AEM_06 Step13 Click Preview and verify Articles page


Article_The1Exclusive_AEM_07 Create Articles page "SIT Centara Hotels & Resorts" in folder English
    Article_The1Exclusive_AEM_07 Step05 Click English
    Article_The1Exclusive_AEM_07 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_07 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_07 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_07 Step12 Click Create
    Article_The1Exclusive_AEM_07 Step13 Click Preview and verify Articles page


Article_The1Exclusive_AEM_08 Create Articles page "SIT Agoda" in folder English
    Article_The1Exclusive_AEM_08 Step05 Click English
    Article_The1Exclusive_AEM_08 Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_08 Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_08 Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_08 Step12 Click Create
    Article_The1Exclusive_AEM_08 Step13 Click Preview and verify Articles page

Article_The1Exclusive_AEM_09 Edit Category Listing Page "SIT1_T1X_Privileges" in folder English
    Article_The1Exclusive_AEM_09 Step08 Edit value in Category Listing
    Article_The1Exclusive_AEM_09 Step09 Edit value in Category Details
    Article_The1Exclusive_AEM_09 Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_09 Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_10 Edit Category page "SIT_T1X_Shopping" in folder English
    Article_The1Exclusive_AEM_10 Step08 Edit value in Category Listing
    Article_The1Exclusive_AEM_10 Step09 Edit value in Category Details
    Article_The1Exclusive_AEM_10 Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_10 Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_11 Edit Articles page "SIT Central Department Store" in folder English
    Article_The1Exclusive_AEM_11 Step10 Edit value in Basic tab
    Article_The1Exclusive_AEM_11 Step11 Edit tab Articles details and input value
    Article_The1Exclusive_AEM_11 Step12 Click Create
    Article_The1Exclusive_AEM_11 Step13 Click Preview and verify Articles page

Article_The1Exclusive_AEM_12 Edit Articles page "SIT Central Department Store" in folder English
    Article_The1Exclusive_AEM_12 Step10 Edit value in Basic tab
    Article_The1Exclusive_AEM_12 Step11 Edit tab Articles details and input value
    Article_The1Exclusive_AEM_12 Step12 Click Create
    Article_The1Exclusive_AEM_12 Step13 Click Preview and verify Articles page

#******TH******

Article_The1Exclusive_AEM_01 Create Category Listing Page "SIT1_T1X_Privileges" in folder Thai
    Article_The1Exclusive_AEM_01 TH Step05 Click Thai Create
    Article_The1Exclusive_AEM_01 TH Step07 Select Category Listing Page
    Article_The1Exclusive_AEM_01 TH Step08 Input value in Category Listing
    Article_The1Exclusive_AEM_01 TH Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_01 TH Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_02 Create Category page "SIT_T1X_Shopping" in folder Thai
    Article_The1Exclusive_AEM_02 TH Step05 Click Thai Create
    Article_The1Exclusive_AEM_02 TH Step07 Select Category API Page
    Article_The1Exclusive_AEM_02 TH Step08 Input value in Category Listing
    Article_The1Exclusive_AEM_02 TH Step11 Click Open and verify Category listing
    Article_The1Exclusive_AEM_02 TH Step12 Click Preview and verify Category listing

Article_The1Exclusive_AEM_03 Create Articles page "SIT Central Department Store" in folder Thai
    Article_The1Exclusive_AEM_03 TH Step05 Click Thai
    Article_The1Exclusive_AEM_03 TH Step09 Select Articles API Page > Click Next
    Article_The1Exclusive_AEM_03 TH Step10 Input value in Basic tab
    Article_The1Exclusive_AEM_03 TH Step11 Select tab Articles and input value
    Article_The1Exclusive_AEM_03 TH Step12 Click Create
    Article_The1Exclusive_AEM_03 TH Step13 Click Preview and verify Articles page


