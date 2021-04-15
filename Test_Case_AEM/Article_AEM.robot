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
Resource    ../Variable/Variable_Article_AEM.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Article_AEM.robot
Test Setup     Open Chrome
Suite Teardown     Close Browser


*** Test Cases ***
Login AEM
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Login AEM with test-approver account
    Check if Questionnaire Article AEM


Article_AEM_1 Create Articles page "TEST_ARTICLE_1" in folder English
    Article_AEM_1 Step05 Click English
    Article_AEM_1 Step08 Select Articles API Page > Click Next
    Article_AEM_1 Step09 Input value in Basic tab
    Article_AEM_1 Step10 Select tab Articles and input value
    Article_AEM_1 Step11 Click Create
    Article_AEM_1 Step12 Click Preview and verify Articles page

Article_AEM_2 Create Articles page "TEST_ARTICLE_2" in folder English
    Article_AEM_2 Step05 Click English
    Article_AEM_2 Step08 Select Articles API Page > Click Next
    Article_AEM_2 Step09 Input value in Basic tab
    Article_AEM_2 Step10 Select tab Articles and input value
    Article_AEM_2 Step11 Click Create
    Article_AEM_2 Step12 Click Preview and verify Articles page


Article_AEM_3 Create Articles page "TEST_ARTICLE_1" in folder Thai
    Article_AEM_3 Step05 Click Thai
    Article_AEM_3 Step08 Select Articles API Page > Click Next
    Article_AEM_3 Step09 Input value in Basic tab
    Article_AEM_3 Step10 Select tab Articles and input value
    Article_AEM_3 Step11 Click Create
    Article_AEM_3 Step12 Click Preview and verify Articles page


Article_AEM_4 Articles page "TEST_ARTICLE_2" in folder Thai
    Article_AEM_4 Step05 Click Thai
    Article_AEM_4 Step08 Select Articles API Page > Click Next
    Article_AEM_4 Step09 Input value in Basic tab
    Article_AEM_4 Step10 Select tab Articles and input value
    Article_AEM_4 Step11 Click Create
    Article_AEM_4 Step12 Click Preview and verify Articles page



Article_AEM_5 Edit Articles page "TEST_ARTICLE_1" in folder English
    Article_AEM_5 Step09 Edit value in Basic tab
    Article_AEM_5 Step10 Edit Articles tab
    Article_AEM_5 Step11 Select tab Articles and input value
    Article_AEM_5 Step12 Click Create
    Article_AEM_5 Step13 Click Preview and verify Articles page


Article_AEM_6 Edit Articles page "TEST_ARTICLE_1" in folder Thai
    Article_AEM_6 Step09 Edit value in Basic tab
    Article_AEM_6 Step10 Edit Articles tab
    Article_AEM_6 Step11 Select tab Articles and input value
    Article_AEM_6 Step12 Click Create
    Article_AEM_6 Step13 Click Preview and verify Articles page
