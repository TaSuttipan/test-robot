*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_personalization_AEM.robot
Resource    ../Keywords/Keywords_Segment-Console_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser


*** Test Cases ***

Login AEM with test approver account
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Login AEM with test-approver account
    Login AEM with test approver account
    Check if Questionnaire segment-console AEM


AEM_Segment_01 Create User selection segment'Segment_Console_Test'
    AEM_Segment_01_Step04 Click Create > Click Page
    AEM_Segment_01_Step05 Select Segment API Page
    AEM_Segment_01_Step06 Input value in Basic tab
    AEM_Segment_01_Step08 Verify User Selection Information and Click Create
    AEM_Segment_01_Click Open and Step12 Click Preview page
    AEM_Segment_01_Validate Category Tag on Properties
    AEM_Segment_01_Check API Personalization

AEM_Segment_02 Create User selection segment'Segment_Console_2_offers' for check create user selection 2 offer
    AEM_Segment_02_Step04 Click Create > Click Page
    AEM_Segment_02_Step05 Select Segment API Page
    AEM_Segment_02_Step06 Input value in Basic tab
    AEM_Segment_02_Step07 Click search by offer title, partner name ,short description in EN
    AEM_Segment_02_Step08 Click Create
    AEM_Segment_02_Step09 Click Open and Preview page
    AEM_Segment_02_Validate Category Tag on Properties
    AEM_Segment_02_Step11 Check API Personalization

AEM_Segment_03 Create User selection segment'Segment_Console_99_offers' for check create user selection 99 offer
    AEM_Segment_03_Step04 Click Create > Click Page
    AEM_Segment_03_Step05 Select Segment API Page
    AEM_Segment_03_Step06 Input value in Basic tab
    AEM_Segment_03_Step07 Click tab user selection
    AEM_Segment_03_Step08 Click slecte offer 99 offers
    AEM_Segment_03_Step09 Input Order offer 99 offers
    AEM_Segment_03_Step10 Verify User Selection Information and Click Create
    AEM_Segment_03_Step11 Click Open and Click Preview page
    AEM_Segment_03_Validate Category Tag on Properties
    AEM_Segment_03_Step12 Check API Personalization

AEM_Segment_04 Create User selection 'Segment_Console_expired' search offer in expired, inactive should not be displayed
    AEM_Segment_04_Step04 Click Create > Click Page
    AEM_Segment_04_Step05 Select Segment API Page
    AEM_Segment_04_Step06 Input value in Basic tab
    AEM_Segment_04_Step07 Click tab user selection
    AEM_Segment_04_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    AEM_Segment_04_Verify User Selection Information and Click Create
    AEM_Segment_04_Click Open and Click Preview page
    AEM_Segment_04_Validate Category Tag on Properties

AEM_Segment_05 Create User selection segment Segment_Console_Search' Search offer title ,partner name, short description Thai language
    AEM_Segment_05_Step04 Click Create > Click Page
    AEM_Segment_05_Step05 Select Segment API Page
    AEM_Segment_05_Step06 Input value in Basic tab
    AEM_Segment_05_Step07 Click tab user selection
    AEM_Segment_05_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    AEM_Segment_05_Verify User Selection Information and Click Create
    AEM_Segment_05_Click Open and Click Preview page
    AEM_Segment_05_Validate Category Tag on Properties

AEM_Segment_06 Create User selection segment 'Segment_Console_Search' Search offer title ,partner name, short description
    AEM_Segment_06_Step04 Click Create > Click Page
    AEM_Segment_06_Step05 Select Segment API Page
    AEM_Segment_06_Step06 Input value in Basic tab
    AEM_Segment_06_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    AEM_Segment_06_Verify User Selection Information and Click Create
    AEM_Segment_06_Click Open and Click Preview page
    AEM_Segment_06_Validate Category Tag on Properties

AEM_Segment_07 Create User selection segment 'Validate_field' for check not input mandatory field it cannot be created
    AEM_Segment_07_Validate_field_Step04 Click Create > Click Page
    AEM_Segment_07_Validate_field_Step05 Select Segment API Page
    AEM_Segment_07_Validate_field_Step06 Input value in Basic tab

AEM_Segment_08 Create User selection segement 'Validate_field' for check duplicate name title page it cannot be created
    AEM_Segment_08_Step04 Click Create > Click Page
    AEM_Segment_08_Validate_field_Step05 Select Segment API Page
    AEM_Segment_08_Validate_field_Step06 Input value in Basic tab

AEM_Segment_09 Create User selection segment 'Validate_field' for check not input order number it cannot be created
    AEM_Segment_09_Step04 Click Create > Click Page
    AEM_Segment_09_Validate_field_Step05 Select Segment API Page
    AEM_Segment_09_Validate_field_Step07 Click tab user selection
    AEM_Segment_09_Validate_field_Step08 Verify User Selection Information and Click Create

AEM_Segment_10 Create User selection segment 'Validate_field' for check Repeat order number it cannot be created
    AEM_Segment_10_Step04 Click Create > Click Page
    AEM_Segment_10_Validate_field_Step05 Select Segment API Page
    AEM_Segment_10_Validate_field_Step09 Input Order offer

AEM_Segment_11 Edit User selection segment 'P_Rec_Health&Wellness' Add User selection 1 offer
    AEM_Segment_11_Step04 Click Pic of Segment api "Name XXXXX" and Step05 Click Properties menu
    AEM_Segment_11_Step07 Click tab user selection
    AEM_Segment_11_Step08 Click search by offer title, partner name ,short description in EN
    AEM_Segment_11_Step09 Input Order and Change Order
    AEM_Segment_11_Step10 Verify User Selection Information
    AEM_Segment_11_Step11 Click Done
    AEM_Segment_11_Validate Category Tag on Properties
    AEM_Segment_11_Step13 Check API Personalization
    AEM_Segment_11_Roll Back

AEM_Segment_12 Edit User selection segment P_Rec_Home&Electronics' Delete User selection 1 offer
    AEM_Segment_12_Step04 Click Pic of Segment api "Name XXXXX" and Step05 Click Properties menu
    AEM_Segment_12_Step07 Click tab user selection
    AEM_Segment_12_Step07 Remove offer
    AEM_Segment_12_Step08 Verify User Selection Information
    AEM_Segment_12_Step09 Click Done
    AEM_Segment_12_Step10 Click Preview page
    AEM_Segment_12_Step11 Validate Category Tag on Properties
    AEM_Segment_12_Step12 Check API Personalization
    AEM_Segment_12_Roll Back

AEM_Segment_13 Edit User selection segment 'Segment_Console_16_offers' Delete All User selection
    AEM_Segment_13_Step04 Click Create > Click page
    AEM_Segment_13_Step05 Select Segment API Page
    AEM_Segment_13_Step06 Input value in Basic tab
    AEM_Segment_13_Step07 Click tab user selection
    AEM_Segment_13_Step08 Click slecte offer 16 offers
    AEM_Segment_13_Step09 Input Order offer 16 offers
    AEM_Segment_13_Step10 Verify User Selection Information and Step11 Click Create
    AEM_Segment_13_Step10 Click Open and Step12 Click Preview page
    AEM_Segment_13_Validate Category Tag on Properties

AEM_Segment_14 Edit User selection segment 'Segment_Console_99_offers' input offer and order 100 number
    AEM_Segment_14_Step04 Click Create > Click Page
    AEM_Segment_14_Step08 Input offer and order 100
