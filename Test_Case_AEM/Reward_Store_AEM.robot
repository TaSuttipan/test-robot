*** Settings ***
Documentation
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Reward_Store_AEM.robot
Suite Teardown     Close Browser



*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Reward Store AEM
Login SMP with Auttapol.w account
   Login SMP

Reward_Store_AEM_01 Create System Page for each Reward Store Type via AEM
   Reward_Store_AEM_01_Step05 Click Create > Click Page
   Reward_Store_AEM_01_Step06 Select Reward Page
   Reward_Store_AEM_01_Step07 Input Title Name > Click Create
   Reward_Store_AEM_01_Step08 Click Open

Reward_Store_AEM_02 Edit Name of Reward Store Type via AEM
   Reward_Store_AEM_02_Step01 Edit Reward Store Type

Reward_Store_AEM_03 Create Reward Store Type All and Eligibility Public via AEM
   Reward_Store_AEM_03_Step05 Click Create > Click Page
   Reward_Store_AEM_03_Step06 Select Reward Page
   Reward_Store_AEM_03_Step07 Input Title Name > Click Create
   Reward_Store_AEM_03_Step08 Click Open
   Reward_Store_AEM_03_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_03_Step10 Input Rewards Store Information
   Reward_Store_AEM_03_Step11 Verify Rewards Information
   Reward_Store_AEM_03_Step12 Click Preview > Click Submit
   Reward_Store_AEM_03_Step13 Verify Reward Page
   Reward_Store_AEM_03_Step14 Verify Reward Store on SMP
Reward_Store_AEM_04 Create Reward Store Type Partner and Eligibility Public via AEM
   Reward_Store_AEM_04_Step05 Click Create > Click Page
   Reward_Store_AEM_04_Step06 Select Reward Page
   Reward_Store_AEM_04_Step07 Input Title Name > Click Create
   Reward_Store_AEM_04_Step08 Click Open
   Reward_Store_AEM_04_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_04_Step10 Input Rewards Store Information
   Reward_Store_AEM_04_Step11 Verify Rewards Information
   Reward_Store_AEM_04_Step12 Click Preview > Click Submit
   Reward_Store_AEM_04_Step13 Verify Reward Page
   Reward_Store_AEM_04_Step14 Verify Reward Store on SMP
Reward_Store_AEM_05 Create Reward Store Type T1X-Reward and Eligibility Public via AEM
   Reward_Store_AEM_05_Step05 Click Create > Click Page
   Reward_Store_AEM_05_Step06 Select Reward Page
   Reward_Store_AEM_05_Step07 Input Title Name > Click Create
   Reward_Store_AEM_05_Step08 Click Open
   Reward_Store_AEM_05_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_05_Step10 Input Rewards Store Information
   Reward_Store_AEM_05_Step11 Verify Rewards Information
   Reward_Store_AEM_05_Step12 Click Preview > Click Submit
   Reward_Store_AEM_05_Step13 Verify Reward Page
   Reward_Store_AEM_05_Step14 Verify Reward Store on SMP
Reward_Store_AEM_06 Create Reward Store Type T1X-Bulk Offer and Eligibility Public via AEM
   Reward_Store_AEM_06_Step05 Click Create > Click Page
   Reward_Store_AEM_06_Step06 Select Reward Page
   Reward_Store_AEM_06_Step07 Input Title Name > Click Create
   Reward_Store_AEM_06_Step08 Click Open
   Reward_Store_AEM_06_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_06_Step10 Input Rewards Store Information
   Reward_Store_AEM_06_Step11 Verify Rewards Information
   Reward_Store_AEM_06_Step12 Click Preview > Click Submit
   Reward_Store_AEM_06_Step13 Verify Reward Page
   Reward_Store_AEM_06_Step14 Verify Reward Store on SMP
Reward_Store_AEM_07 Create Reward Store Type Category and Eligibility Public via AEM
   Reward_Store_AEM_07_Step05 Click Create > Click Page
   Reward_Store_AEM_07_Step06 Select Reward Page
   Reward_Store_AEM_07_Step07 Input Title Name > Click Create
   Reward_Store_AEM_07_Step08 Click Open
   Reward_Store_AEM_07_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_07_Step10 Input Rewards Store Information
   Reward_Store_AEM_07_Step11 Verify Rewards Information
   Reward_Store_AEM_07_Step12 Click Preview > Click Submit
   Reward_Store_AEM_07_Step13 Verify Reward Page
   Reward_Store_AEM_07_Step14 Verify Reward Store on SMP
Reward_Store_AEM_08 Create Reward Store Type Targeted and Eligibility Public via AEM
   Reward_Store_AEM_08_Step05 Click Create > Click Page
   Reward_Store_AEM_08_Step06 Select Reward Page
   Reward_Store_AEM_08_Step07 Input Title Name > Click Create
   Reward_Store_AEM_08_Step08 Click Open
   Reward_Store_AEM_08_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_08_Step10 Input Rewards Store Information
   Reward_Store_AEM_08_Step11 Verify Rewards Information
   Reward_Store_AEM_08_Step12 Click Preview > Click Submit
   Reward_Store_AEM_08_Step13 Verify Reward Page
   Reward_Store_AEM_08_Step14 Verify Reward Store on SMP
Reward_Store_AEM_09 Create Reward Store Type Targeted and Eligibility Private via AEM
   Reward_Store_AEM_09_Step05 Click Create > Click Page
   Reward_Store_AEM_09_Step06 Select Reward Page
   Reward_Store_AEM_09_Step07 Input Title Name > Click Create
   Reward_Store_AEM_09_Step08 Click Open
   Reward_Store_AEM_09_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_09_Step10 Input Rewards Store Information
   Reward_Store_AEM_09_Step11 Verify Rewards Information
   Reward_Store_AEM_09_Step12 Click Preview > Click Submit
   Reward_Store_AEM_09_Step13 Verify Reward Page
   Reward_Store_AEM_09_Step14 Verify Reward Store on SMP
Reward_Store_AEM_10 Create Reward Store Type Seasonal and Eligibility Public via AEM
   Reward_Store_AEM_10_Step05 Click Create > Click Page
   Reward_Store_AEM_10_Step06 Select Reward Page
   Reward_Store_AEM_10_Step07 Input Title Name > Click Create
   Reward_Store_AEM_10_Step08 Click Open
   Reward_Store_AEM_10_Step09 Click Edit Reward > Click Configure
   Reward_Store_AEM_10_Step10 Input Rewards Store Information
   Reward_Store_AEM_10_Step11 Verify Rewards Information
   Reward_Store_AEM_10_Step12 Click Preview > Click Submit
   Reward_Store_AEM_10_Step13 Verify Reward Page
   Reward_Store_AEM_10_Step14 Verify Reward Store on SMP
Reward_Store_AEM__11 Edit order and date Reward Store Type All and Eligibility Public via AEM
   Reward_Store_AEM_11_Step01 Go to Edit Reward Store
   Reward_Store_AEM_11_Step02 Click Edit Reward Store > Click Configure
   Reward_Store_AEM_11_Step03 Edit Rewards Store Information
   Reward_Store_AEM_11_Step04 Verify Rewards Store Information
   Reward_Store_AEM_11_Step05 Click Rewards Store > Click Submit
   Reward_Store_AEM_11_Step06 Verify Reward Store Page after Edit
   Reward_Store_AEM_11_Step07 Verify Reward Store on SMP after Edit
Reward_Store_AEM__12 Edit information Reward Store Type T1X-Bulk Offer and Eligibility Public via AEM
   Reward_Store_AEM_12_Step01 Go to Edit Reward Store
   Reward_Store_AEM_12_Step02 Click Edit Reward Store > Click Configure
   Reward_Store_AEM_12_Step03 Edit Rewards Store Information
   Reward_Store_AEM_12_Step04 Verify Rewards Store Information
   Reward_Store_AEM_12_Step05 Click Rewards Store > Click Submit
   Reward_Store_AEM_12_Step06 Verify Reward Store Page after Edit
   Reward_Store_AEM_12_Step07 Verify Reward Store on SMP after Edit
