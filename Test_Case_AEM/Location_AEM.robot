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
Resource    ../Variable/Variable_Location_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Location_AEM.robot
Suite Teardown     Close Browser


*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Location AEM


AEM_Location_01 Create Location Page 'Regression Central World' for check create location page
   AEM_Location_01_Step03 Click Create > Click Page
   AEM_Location_01_Step04 Select Location API Page
   AEM_Location_01_Step05 Input value in Basic tab
   AEM_Location_01_Step06 Input Location Details (refer Information by Data Test)
   AEM_Location_01_Step07 Click Create
   AEM_Location_01_Step08 Click Open and verify Location
   AEM_Location_01_Step09 Click Page Information > Publish Page on Location page
   AEM_Location_01_Step10 Click Preview and verify Publish API on Location page

AEM_Location_02 Create Location Page 'Location Test' not input all information on condition field for check create location page
   AEM_Location_02_Step03 Click Create > Click Page
   AEM_Location_02_Step04 Select Location API Page
   AEM_Location_02_Step05 Input value in Basic tab
   AEM_Location_02_Step06 Input Location Details (refer Information by Data Test)
   AEM_Location_02_Step07 Click Create
   AEM_Location_02_Step08 Click Open and verify Location
   AEM_Location_02_Step09 Click Page Information > Publish Page on Location page
   AEM_Location_02_Step10 Click Preview and verify Publish API on Location page

AEM_Location_03 Create Location Page 'Location Test 1' for check not input mandatory field Not input Location Name for check can't create location page
   AEM_Location_03_Step03 Click Create > Click Page
   AEM_Location_03_Step04 Select Location API Page
   AEM_Location_03_Step05 Input value in Basic tab
   AEM_Location_03_Step06 Input Location Details (refer Information by Data Test)

AEM_Location_04 Create Location Page 'Location Test 2' for check logic add image 6 images for check can't create location page
   AEM_Location_04_Step03 Click Create > Click Page
   AEM_Location_04_Step04 Select Location API Page
   AEM_Location_04_Step05 Input value in Basic tab
   AEM_Location_04_Step06 Input Location Details (refer Information by Data Test)

AEM_Location_05 Central World of Location for check logic edit Location ID for check can't create location page
   AEM_Location_05_Step04 Click Pic of Location "Name XXXXX"
   AEM_Location_05_Step05 Click Properties menu
   AEM_Location_05_Step06 Edit value in Basic tab

AEM_Location_06 Central World of Location edit information,add text "edit" all text field and edit Location city,change city to Songkla for check edit location page
   AEM_Location_06_Step09 Click Page Information > Unpublish Page
   AEM_Location_06_Step09 Click Edit Information
   AEM_Location_06_Step09 Publish Page on Location page
   AEM_Location_06_Step10 Click Preview and verify Publish API on Location page

AEM_Location_07 Central World of Location edit feature image,change image for check edit location page
   AEM_Location_07_Step09 Click Page Information > Unpublish Page
   AEM_Location_07_Step09 Edit Information
   AEM_Location_07_Step09 Publish Page on Location page
   AEM_Location_07_Step10 Click Preview and verify Publish API on Location page

AEM_Location_08 Central World of Location edit Banner image,add and move image for check edit location page
   AEM_Location_08_Step09 Click Page Information > Unpublish Page
   AEM_Location_08_Step09 Edit Information
   AEM_Location_08_Step09 Publish Page on Location page
   AEM_Location_08_Step10 Click Preview and verify Publish API on Location page





