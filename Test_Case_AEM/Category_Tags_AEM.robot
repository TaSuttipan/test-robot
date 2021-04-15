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
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Personalization_AEM.robot
Resource    ../Keywords/Keywords_Category_Tags_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser



*** Test Cases ***
Login AEM with test approver account
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Login AEM with test-approver account
    Check if Questionnaire category-tags AEM

AEM_Category Tags_01 Create Offer Category Tag 'CategoryTag_Test'
    AEM_Category_Tags_01_Step04 Click Create > Click Page
    AEM_Category_Tags_01_Step05 Select Category Tag API page
    AEM_Category_Tags_01_Step06 Input value in Basic tab
    AEM_Category_Tags_01_Step07 Click Create
    AEM_Category_Tags_01_Step07 Validate Category Tag on Properties
    AEM_Category_Tags_01_Step08 Check API Personalization

AEM_Category Tags_02 Create New AEM Tags "TEST TAGS" for check logic Create Tags
    AEM_Category_Tags_02_Step04 Select Category Tag API page
    AEM_Category_Tags_02_Step05 Click Edit Tag Category
    AEM_Category_Tags_02_Step06 Save&close
    AEM_Category_Tags_02_Step07 Validate Category Tag on Properties
    AEM_Category_Tags_02_Step08 Check API Personalization
    AEM_Category_Tags_02_Roll Back

AEM_Category Tags_03 Create Offer Category Tag 'CategoryTag_Test_No_match' input text not match offer tag
    AEM_Category_Tags_03_Step04 Click Create > Click Page
    AEM_Category_Tags_03_Step05 Select Category Tag API page
    AEM_Category_Tags_03_Step06 Input value in Basic tab
    AEM_Category_Tags_03_Step07 Click Create
    AEM_Category_Tags_03_Step08 Validate Category Tag on Properties
    AEM_Category_Tags_03_Step09 Check API Personalization

AEM_Category Tags_04 Create duplicate name title page
    AEM_Category_Tags_04_Step04 Click Create > Click Page
    AEM_Category_Tags_04_Step05 Select Category Tag API page
    AEM_Category_Tags_04_Step06 Input value in Basic tab
    AEM_Category_Tags_04_Step07 Click Create

AEM_Category Tags_05 Edit Offer Category Tag 'Charities' for check logic Add Offer Category 1 Tags
    AEM_Category_Tags_05_Step04 Click Pic of Category Tags "Name XXXXX"
    AEM_Category_Tags_05_Step05 Click Properties menu
    AEM_Category_Tags_05_Step07 Click input Category Tags
    AEM_Category_Tags_05_Step09 Save&close
    AEM_Category_Tags_05_Step10 Validate Category Tag on Properties
    AEM_Category_Tags_05_Step11 Check API Personalization
    AEM_Category_Tags_05_Roll Back

AEM_Category Tags_06 Edit Offer category tag 'Grocery' for check logic Delete Offer Category 1 Tag
    AEM_Category_Tags_06_Step04 Click Pic of Category Tags "Name XXXXX"
    AEM_Category_Tags_06_Step05 Click Properties menu
    AEM_Category_Tags_06_Step07 Click Delete offer category tag
    AEM_Category_Tags_06_Step08 Save&close
    AEM_Category_Tags_06_Step09 Validate Category Tag on Properties
    AEM_Category_Tags_06_Step10 Check API Personalization
    AEM_Category_Tags_06_Roll Back

AEM_Category Tags_07 Edit Offer category tag 'Eat Around' for check edit name tag
    AEM_Category_Tags_07_Step05 Click Pic of Category Tags "Name XXXXX"
    AEM_Category_Tags_07_Step06 Click Properties menu
    AEM_Category_Tags_07_Step07 input edit title on Tag Details
    AEM_Category_Tags_07_Step08 Click Submit
    AEM_Category_Tags_07_Step09 Validate Category Tag on Properties
    AEM_Category_Tags_07_Step10 Check API Personalization
    AEM_Category_Tags_07_Roll Back

AEM_Category Tags_08 Create Offer Category Tag 'Category 8 Tag' for check Create Offer Category Tag
    AEM_Category_Tags_08_Step04 Click Create > Click Page
    AEM_Category_Tags_08_Step05 Select Category Tag API page
    AEM_Category_Tags_08_Step06 Input value in Basic tab
    AEM_Category_Tags_08_Step07 Click Create
    AEM_Category_Tags_08_Step08 Validate Category Tag on Properties

AEM_Category Tags_09 Edit Offer category tag 'CategoryTag Delete All' Delete All Offer Category Tag
    AEM_Category_Tags_09_Step04 Click Create > Click Page
    AEM_Category_Tags_09_Step05 Select Category Tag API page
    AEM_Category_Tags_09_Step06 Input value in Basic tab
    AEM_Category_Tags_09_Step07 Click Create
    AEM_Category_Tags_09_Step08 Validate Category Tag on Properties
    AEM_Category_Tags_09_Step09 Deleate all Category Tag
    AEM_Category_Tags_09_Step10 Validate Category Tag Deleted

