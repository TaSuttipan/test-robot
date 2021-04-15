*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Offer_AEM.robot
Suite Teardown     Close Browser


*** Test Cases ***
Login AEM with test-approver account
   Get Date and DateTime
   Get Date of AEM
   Get Date of SMP
   Login AEM with test-approver account
   Check if Questionnaire Offer AEM
Login SMP with Auttapol.w account
   Login SMP

Offer_AEM_Expire Create offer expire today publish offer and voucher typr as reward via AEM
   Offer_AEM_Expire_Today_Step07 Click Create > Click Page
   Offer_AEM_Expire_Today_Step08 Select Offer Page
   Offer_AEM_Expire_Today_Step09 Input Title Name > Click Create
   Offer_AEM_Expire_Today_Step10 Click Open
   Offer_AEM_Expire_Today_Step11 Click Edit Offer > Click Configure
   Offer_AEM_Expire_Today_Step12 Input Offer Information
   Offer_AEM_Expire_Today_Step12 Input Offer Fulfillment
   Offer_AEM_Expire_Today_Step12 Input Offer Mechanics
   Offer_AEM_Expire_Today_Step12 Input Siebel Configuration
   Offer_AEM_Expire_Today_Step13 Verify Offer Information
   Offer_AEM_Expire_Today_Step14 Click Preview > Click Submit
   Offer_AEM_Expire_Today_Step14 Approve Flow



Offer_AEM_01 Create publish offer and voucher typr as reward via AEM
   Offer_AEM_01_Step07 Click Create > Click Page
   Offer_AEM_01_Step08 Select Offer Page
   Offer_AEM_01_Step09 Input Title Name > Click Create
   Offer_AEM_01_Step10 Click Open
   Offer_AEM_01_Step11 Click Edit Offer > Click Configure
   Offer_AEM_01_Step12 Input Offer Information
   Offer_AEM_01_Step12 Input Offer Fulfillment
   Offer_AEM_01_Step12 Input Offer Mechanics
   Offer_AEM_01_Step12 Input Siebel Configuration
   Offer_AEM_01_Step13 Verify Offer Information
   Offer_AEM_01_Step14 Click Preview > Click Submit
   Offer_AEM_01_Step14 Approve Flow
   Offer_AEM_01_Step15 Verify Offer page
   Offer_AEM_01_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_02 Create publish offer and voucher type as Pre Gen Code Reward via AEM(True)
   Offer_AEM_02_Step07 Click Create > Click Page
   Offer_AEM_02_Step08 Select Offer Page
   Offer_AEM_02_Step09 Input Title Name > Click Create
   Offer_AEM_02_Step10 Click Open
   Offer_AEM_02_Step11 Click Edit Offer > Click Configure
   Offer_AEM_02_Step12 Input Offer Information
   Offer_AEM_02_Step12 Input Offer Fulfillment
   Offer_AEM_02_Step12 Input Offer Mechanics
   Offer_AEM_02_Step12 Input Siebel Configuration
   Offer_AEM_02_Step13 Verify Offer Information
   Offer_AEM_02_Step14 Click Preview > Click Submit
   Offer_AEM_02_Step14 Approve Flow
   Offer_AEM_02_Step15 Verify Offer page
   Offer_AEM_02_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_03 Create publish offer and voucher type as Pre Gen Code Reward via AEM (False)
   Offer_AEM_03_Step07 Click Create > Click Page
   Offer_AEM_03_Step08 Select Offer Page
   Offer_AEM_03_Step09 Input Title Name > Click Create
   Offer_AEM_03_Step10 Click Open
   Offer_AEM_03_Step11 Click Edit Offer > Click Configure
   Offer_AEM_03_Step12 Input Offer Information
   Offer_AEM_03_Step12 Input Offer Fulfillment
   Offer_AEM_03_Step12 Input Offer Mechanics
   Offer_AEM_03_Step12 Input Siebel Configuration
   Offer_AEM_03_Step13 Verify Offer Information
   Offer_AEM_03_Step14 Click Preview > Click Submit
   Offer_AEM_03_Step14 Approve Flow
   Offer_AEM_03_Step15 Verify Offer page
   Offer_AEM_03 Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_04 Create bulk offer and a voucher type as Reward via AEM
   Offer_AEM_04_Step07 Click Create > Click Page
   Offer_AEM_04_Step08 Select Offer Page
   Offer_AEM_04_Step09 Input Title Name > Click Create
   Offer_AEM_04_Step10 Click Open
   Offer_AEM_04_Step11 Click Edit Offer > Click Configure
   Offer_AEM_04_Step12 Input Offer Information
   Offer_AEM_04_Step12 Input Offer Fulfillment
   Offer_AEM_04_Step12 Input Offer Mechanics
   Offer_AEM_04_Step12 Input Siebel Configuration
   Offer_AEM_04_Step13 Verify Offer Information
   Offer_AEM_04_Step14 Click Preview > Click Submit
   Offer_AEM_04_Step14 Approve Flow
   Offer_AEM_04_Step15 Verify Offer page
   Offer_AEM_04_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_05_Create bulk T1X offer and voucher type as Reward via AEM
   Offer_AEM_05_Step07 Click Create > Click Page
   Offer_AEM_05_Step08 Select Offer Page
   Offer_AEM_05_Step09 Input Title Name > Click Create
   Offer_AEM_05_Step10 Click Open
   Offer_AEM_05_Step11 Click Edit Offer > Click Configure
   Offer_AEM_05_Step12 Input Offer Information
   Offer_AEM_05_Step12 Input Offer Fulfillment
   Offer_AEM_05_Step12 Input Offer Mechanics
   Offer_AEM_05_Step12 Input Siebel Configuration
   Offer_AEM_05_Step13 Verify Offer Information
   Offer_AEM_05_Step14 Click Preview > Click Submit
   Offer_AEM_05_Step14 Approve Flow
   Offer_AEM_05_Step15 Verify Offer page
   Offer_AEM_05_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_06 Create targeted offer and voucher type as Reward via AEM
   Offer_AEM_06_Step07 Click Create > Click Page
   Offer_AEM_06_Step08 Select Offer Page
   Offer_AEM_06_Step09 Input Title Name > Click Create
   Offer_AEM_06_Step10 Click Open
   Offer_AEM_06_Step11 Click Edit Offer > Click Configure
   Offer_AEM_06_Step12 Input Offer Information
   Offer_AEM_06_Step12 Input Offer Fulfillment
   Offer_AEM_06_Step12 Input Offer Mechanics
   Offer_AEM_06_Step12 Input Siebel Configuration
   Offer_AEM_06_Step13 Verify Offer Information
   Offer_AEM_06_Step14 Click Preview > Click Submit
   Offer_AEM_06_Step14 Approve Flow
   Offer_AEM_06_Step15 Verify Offer page
   Offer_AEM_06_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_07 Create others T1X offer and voucher type as privilege via AEM
   Offer_AEM_07_Step07 Click Create > Click Page
   Offer_AEM_07_Step08 Select Offer Page
   Offer_AEM_07_Step09 Input Title Name > Click Create
   Offer_AEM_07_Step10 Click Open
   Offer_AEM_07_Step11 Click Edit Offer > Click Configure
   Offer_AEM_07_Step12 Input Offer Information
   Offer_AEM_07_Step12 Input Offer Fulfillment
   Offer_AEM_07_Step13 Verify Offer Information
   Offer_AEM_07_Step14 Click Preview > Click Submit
   Offer_AEM_07_Step14 Approve Flow
   Offer_AEM_07_Step15 Verify Offer page
   Offer_AEM_07_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_08 Create others offer and voucher type as trasnfer out via AEM
   Offer_AEM_08_Step07 Click Create > Click Page
   Offer_AEM_08_Step08 Select Offer Page
   Offer_AEM_08_Step09 Input Title Name > Click Create
   Offer_AEM_08_Step10 Click Open
   Offer_AEM_08_Step11 Click Edit Offer > Click Configure
   Offer_AEM_08_Step12 Input Offer Information
   Offer_AEM_08_Step12 Input Offer Fulfillment
   Offer_AEM_08_Step12 Input Offer Mechanics
   Offer_AEM_08_Step12 Input Siebel Configuration
   Offer_AEM_08_Step13 Verify Offer Information
   Offer_AEM_08_Step14 Click Preview > Click Submit
   Offer_AEM_08_Step14 Approve Flow
   Offer_AEM_08_Step15 Verify Offer page
   Offer_AEM_08_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_09_Create publish offer and voucher type as custom cash coupon via AEM
   Offer_AEM_09_Step07 Click Create > Click Page
   Offer_AEM_09_Step08 Select Offer Page
   Offer_AEM_09_Step09 Input Title Name > Click Create
   Offer_AEM_09_Step10 Click Open
   Offer_AEM_09_Step11 Click Edit Offer > Click Configure
   Offer_AEM_09_Step12 Input Offer Information
   Offer_AEM_09_Step12 Input Offer Fulfillment
   Offer_AEM_09_Step12 Input Offer Mechanics
   Offer_AEM_09_Step12 Input Siebel Configuration
   Offer_AEM_09_Step13 Verify Offer Information
   Offer_AEM_09_Step14 Click Preview > Click Submit
   Offer_AEM_09_Step14 Approve Flow
   Offer_AEM_09_Step15 Verify Offer page
   Offer_AEM_09_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_10 Create tier offer and voucher type as reward via AEM
   Offer_AEM_10_Step07 Click Create > Click Page
   Offer_AEM_10_Step08 Select Offer Page
   Offer_AEM_10_Step09 Input Title Name > Click Create
   Offer_AEM_10_Step10 Click Open
   Offer_AEM_10_Step11 Click Edit Offer > Click Configure
   Offer_AEM_10_Step12 Input Offer Information
   Offer_AEM_10_Step12 Input Offer Fulfillment
   Offer_AEM_10_Step12 Input Offer Mechanics
   Offer_AEM_10_Step12 Input Siebel Configuration
   Offer_AEM_10_Step13 Verify Offer Information
   Offer_AEM_10_Step14 Click Preview > Click Submit
   Offer_AEM_10_Step14 Approve Flow
   Offer_AEM_10_Step15 Verify Offer page
   Offer_AEM_10_Step16 Verify Offer Management and Verify Reward Store on SMP



Offer_AEM_11 Create public offer and voucher type as pre gen multiuse code via AEM (True)
   Offer_AEM_11_Step07 Click Create > Click Page
   Offer_AEM_11_Step08 Select Offer Page
   Offer_AEM_11_Step09 Input Title Name > Click Create
   Offer_AEM_11_Step10 Click Open
   Offer_AEM_11_Step11 Click Edit Offer > Click Configure
   Offer_AEM_11_Step12 Input Offer Information
   Offer_AEM_11_Step12 Input Offer Fulfillment
   Offer_AEM_11_Step12 Input Offer Mechanics
   Offer_AEM_11_Step12 Input Siebel Configuration
   Offer_AEM_11_Step13 Verify Offer Information
   Offer_AEM_11_Step14 Click Preview > Click Submit
   Offer_AEM_11_Step14 Approve Flow
   Offer_AEM_11_Step15 Verify Offer page
   Offer_AEM_11 Step16 Verify Offer Management and Verify Reward Store on SMP

Offer_AEM_12 Create public offer and voucher type as pre gen multiuse code via AEM (False)
   Offer_AEM_12_Step07 Click Create > Click Page
   Offer_AEM_12_Step08 Select Offer Page
   Offer_AEM_12_Step09 Input Title Name > Click Create
   Offer_AEM_12_Step10 Click Open
   Offer_AEM_12_Step11 Click Edit Offer > Click Configure
   Offer_AEM_12_Step12 Input Offer Information
   Offer_AEM_12_Step12 Input Offer Fulfillment
   Offer_AEM_12_Step12 Input Offer Mechanics
   Offer_AEM_12_Step12 Input Siebel Configuration
   Offer_AEM_12_Step13 Verify Offer Information
   Offer_AEM_12_Step14 Click Preview > Click Submit
   Offer_AEM_12_Step14 Approve Flow
   Offer_AEM_12_Step15 Verify Offer page
   Offer_AEM_12 Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_13 Create public child 1 offer and voucher type as reward of reward group 1 via AEM
   Offer_AEM_13_Step07 Click Create > Click Page
   Offer_AEM_13_Step08 Select Offer Page
   Offer_AEM_13_Step09 Input Title Name > Click Create
   Offer_AEM_13_Step10 Click Open
   Offer_AEM_13_Step11 Click Edit Offer > Click Configure
   Offer_AEM_13_Step12 Input Offer Information
   Offer_AEM_13_Step12 Input Offer Fulfillment
   Offer_AEM_13_Step12 Input Offer Mechanics
   Offer_AEM_13_Step12 Input Siebel Configuration
   Offer_AEM_13_Step13 Verify Offer Information
   Offer_AEM_13_Step14 Click Preview > Click Submit
   Offer_AEM_13_Step14 Approve Flow
   Offer_AEM_13_Step15 Verify Offer page
   Offer_AEM_13_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_14 Create public child 2 offer and voucher type as pre gen code reward of reward group 1 via AEM
   Offer_AEM_14_Step07 Click Create > Click Page
   Offer_AEM_14_Step08 Select Offer Page
   Offer_AEM_14_Step09 Input Title Name > Click Create
   Offer_AEM_14_Step10 Click Open
   Offer_AEM_14_Step11 Click Edit Offer > Click Configure
   Offer_AEM_14_Step12 Input Offer Information
   Offer_AEM_14_Step12 Input Offer Fulfillment
   Offer_AEM_14_Step12 Input Offer Mechanics
   Offer_AEM_14_Step12 Input Siebel Configuration
   Offer_AEM_14_Step13 Verify Offer Information
   Offer_AEM_14_Step14 Click Preview > Click Submit
   Offer_AEM_14_Step14 Approve Flow
   Offer_AEM_14_Step15 Verify Offer page
   Offer_AEM_14_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_15 Create public offer and voucher type as rewad group as rewardgroup_1 via AEM
   Offer_AEM_15_Step07 Click Create > Click Page
   Offer_AEM_15_Step08 Select Offer Page
   Offer_AEM_15_Step09 Input Title Name > Click Create
   Offer_AEM_15_Step10 Click Open
   Offer_AEM_15_Step11 Click Edit Offer > Click Configure
   Offer_AEM_15_Step12 Input Offer Information
   Offer_AEM_15_Step12 Input Offer Fulfillment
   Offer_AEM_15_Step12 Input Offer Mechanics
   Offer_AEM_15_Step12 Input Siebel Configuration
   Offer_AEM_15_Step13 Verify Offer Information
   Offer_AEM_15_Step14 Click Preview > Click Submit
   Offer_AEM_15_Step14 Approve Flow
   Offer_AEM_15_Step15 Verify Offer page
   Offer_AEM_15_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_16 Create targeted child 1 offer and voucher type as reward of reward group with restrictions 2 via AEM
   Offer_AEM_16_Step07 Click Create > Click Page
   Offer_AEM_16_Step08 Select Offer Page
   Offer_AEM_16_Step09 Input Title Name > Click Create
   Offer_AEM_16_Step10 Click Open
   Offer_AEM_16_Step11 Click Edit Offer > Click Configure
   Offer_AEM_16_Step12 Input Offer Information
   Offer_AEM_16_Step12 Input Offer Fulfillment
   Offer_AEM_16_Step12 Input Offer Mechanics
   Offer_AEM_16_Step12 Input Siebel Configuration
   Offer_AEM_16_Step13 Verify Offer Information
   Offer_AEM_16_Step14 Click Preview > Click Submit
   Offer_AEM_16_Step14 Approve Flow
   Offer_AEM_16_Step15 Verify Offer page
   Offer_AEM_16_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_17 Create targeted child 2 offer and voucher type as pre gen multiuse code of reward group with restrictions 2 via AEM
   Offer_AEM_17_Step07 Click Create > Click Page
   Offer_AEM_17_Step08 Select Offer Page
   Offer_AEM_17_Step09 Input Title Name > Click Create
   Offer_AEM_17_Step10 Click Open
   Offer_AEM_17_Step11 Click Edit Offer > Click Configure
   Offer_AEM_17_Step12 Input Offer Information
   Offer_AEM_17_Step12 Input Offer Fulfillment
   Offer_AEM_17_Step12 Input Offer Mechanics
   Offer_AEM_17_Step12 Input Siebel Configuration
   Offer_AEM_17_Step13 Verify Offer Information
   Offer_AEM_17_Step14 Click Preview > Click Submit
   Offer_AEM_17_Step14 Approve Flow
   Offer_AEM_17_Step15 Verify Offer page
   Offer_AEM_17_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_18 Create targeted child 3 offer and voucher type as pre gen code reward of reward group with restrictions 2 via AEM
   Offer_AEM_18_Step07 Click Create > Click Page
   Offer_AEM_18_Step08 Select Offer Page
   Offer_AEM_18_Step09 Input Title Name > Click Create
   Offer_AEM_18_Step10 Click Open
   Offer_AEM_18_Step11 Click Edit Offer > Click Configure
   Offer_AEM_18_Step12 Input Offer Information
   Offer_AEM_18_Step12 Input Offer Fulfillment
   Offer_AEM_18_Step12 Input Offer Mechanics
   Offer_AEM_18_Step12 Input Siebel Configuration
   Offer_AEM_18_Step13 Verify Offer Information
   Offer_AEM_18_Step14 Click Preview > Click Submit
   Offer_AEM_18_Step14 Approve Flow
   Offer_AEM_18_Step15 Verify Offer page
   Offer_AEM_18_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_19 Create targeted offer and voucher type as reward group with restrictions as reward_group_wr_2 via AEM
   Offer_AEM_19_Step07 Click Create > Click Page
   Offer_AEM_19_Step08 Select Offer Page
   Offer_AEM_19_Step09 Input Title Name > Click Create
   Offer_AEM_19_Step10 Click Open
   Offer_AEM_19_Step11 Click Edit Offer > Click Configure
   Offer_AEM_19_Step12 Input Offer Information
   Offer_AEM_19_Step12 Input Offer Fulfillment
   Offer_AEM_19_Step12 Input Offer Mechanics
   Offer_AEM_19_Step12 Input Siebel Configuration
   Offer_AEM_19_Step13 Verify Offer Information
   Offer_AEM_19_Step14 Click Preview > Click Submit
   Offer_AEM_19_Step14 Approve Flow
   Offer_AEM_19_Step15 Verify Offer page
   Offer_AEM_19_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_20 Create public child 1 offer and voucher type as reward of Package 3 via AEM
   Offer_AEM_20_Step07 Click Create > Click Page
   Offer_AEM_20_Step08 Select Offer Page
   Offer_AEM_20_Step09 Input Title Name > Click Create
   Offer_AEM_20_Step10 Click Open
   Offer_AEM_20_Step11 Click Edit Offer > Click Configure
   Offer_AEM_20_Step12 Input Offer Information
   Offer_AEM_20_Step12 Input Offer Fulfillment
   Offer_AEM_20_Step12 Input Offer Mechanics
   Offer_AEM_20_Step12 Input Siebel Configuration
   Offer_AEM_20_Step13 Verify Offer Information
   Offer_AEM_20_Step14 Click Preview > Click Submit
   Offer_AEM_20_Step14 Approve Flow
   Offer_AEM_20_Step15 Verify Offer page
   Offer_AEM_20_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_21 Create public child 2 offer and voucher type as pre gen code reward of Package 3 via AEM
   Offer_AEM_21_Step07 Click Create > Click Page
   Offer_AEM_21_Step08 Select Offer Page
   Offer_AEM_21_Step09 Input Title Name > Click Create
   Offer_AEM_21_Step10 Click Open
   Offer_AEM_21_Step11 Click Edit Offer > Click Configure
   Offer_AEM_21_Step12 Input Offer Information
   Offer_AEM_21_Step12 Input Offer Fulfillment
   Offer_AEM_21_Step12 Input Offer Mechanics
   Offer_AEM_21_Step12 Input Siebel Configuration
   Offer_AEM_21_Step13 Verify Offer Information
   Offer_AEM_21_Step14 Click Preview > Click Submit
   Offer_AEM_21_Step14 Approve Flow
   Offer_AEM_21_Step15 Verify Offer page
   Offer_AEM_21_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_22 Create public offer and voucher type as reward group with restriction as Package 3 via AEM
   Offer_AEM_22_Step07 Click Create > Click Page
   Offer_AEM_22_Step08 Select Offer Page
   Offer_AEM_22_Step09 Input Title Name > Click Create
   Offer_AEM_22_Step10 Click Open
   Offer_AEM_22_Step11 Click Edit Offer > Click Configure
   Offer_AEM_22_Step12 Input Offer Information
   Offer_AEM_22_Step12 Input Offer Fulfillment
   Offer_AEM_22_Step12 Input Offer Mechanics
   Offer_AEM_22_Step12 Input Siebel Configuration
   Offer_AEM_22_Step13 Verify Offer Information
   Offer_AEM_22_Step14 Click Preview > Click Submit
   Offer_AEM_22_Step14 Approve Flow
   Offer_AEM_22_Step15 Verify Offer page
   Offer_AEM_22_Step16 Verify Offer Management and Verify Reward Store on SMP
   Offer_AEM_22_Step16 Verify Configure Package Offers for Selection


Offer_AEM_23 Create tier child 1 offer and voucher type as reward of reward group 4 via AEM
   Offer_AEM_23_Step07 Click Create > Click Page
   Offer_AEM_23_Step08 Select Offer Page
   Offer_AEM_23_Step09 Input Title Name > Click Create
   Offer_AEM_23_Step10 Click Open
   Offer_AEM_23_Step11 Click Edit Offer > Click Configure
   Offer_AEM_23_Step12 Input Offer Information
   Offer_AEM_23_Step12 Input Offer Fulfillment
   Offer_AEM_23_Step12 Input Offer Mechanics
   Offer_AEM_23_Step12 Input Siebel Configuration
   Offer_AEM_23_Step13 Verify Offer Information
   Offer_AEM_23_Step14 Click Preview > Click Submit
   Offer_AEM_23_Step14 Approve Flow
   Offer_AEM_23_Step15 Verify Offer page
   Offer_AEM_23_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_24 Create tier child 2 offer and voucher type as pre gen code reward of reward group 4 via AEM
   Offer_AEM_24_Step07 Click Create > Click Page
   Offer_AEM_24_Step08 Select Offer Page
   Offer_AEM_24_Step09 Input Title Name > Click Create
   Offer_AEM_24_Step10 Click Open
   Offer_AEM_24_Step11 Click Edit Offer > Click Configure
   Offer_AEM_24_Step12 Input Offer Information
   Offer_AEM_24_Step12 Input Offer Fulfillment
   Offer_AEM_24_Step12 Input Offer Mechanics
   Offer_AEM_24_Step12 Input Siebel Configuration
   Offer_AEM_24_Step13 Verify Offer Information
   Offer_AEM_24_Step14 Click Preview > Click Submit
   Offer_AEM_24_Step14 Approve Flow
   Offer_AEM_24_Step15 Verify Offer page
   Offer_AEM_24_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_25 Create tier offer and voucher type as reward group as reward group 4 via AEM
   Offer_AEM_25_Step07 Click Create > Click Page
   Offer_AEM_25_Step08 Select Offer Page
   Offer_AEM_25_Step09 Input Title Name > Click Create
   Offer_AEM_25_Step10 Click Open
   Offer_AEM_25_Step11 Click Edit Offer > Click Configure
   Offer_AEM_25_Step12 Input Offer Information
   Offer_AEM_25_Step12 Input Offer Fulfillment
   Offer_AEM_25_Step12 Input Offer Mechanics
   Offer_AEM_25_Step12 Input Siebel Configuration
   Offer_AEM_25_Step13 Verify Offer Information
   Offer_AEM_25_Step14 Click Preview > Click Submit
   Offer_AEM_25_Step14 Approve Flow
   Offer_AEM_25_Step15 Verify Offer page
   Offer_AEM_25_Step16 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_26 Download new offer via AEM to excel file for update offer in siebel
   Offer_AEM_26_Step04 Click Folder Offer under the 1 Central and Offer_AEM_18_Step05 Select offer pic all voucher Type



Offer_AEM_27 Edit add offer category and change siebel points of public offer and voucher type as reward via AEM
   Offer_AEM_27_Step07 Click Create > Click Page
   Offer_AEM_27_Step08 Click Edit Offer > Click Configure
   Offer_AEM_27_Step09 Edit Offer Information
   Offer_AEM_27_Step10 Verify Offer Information
   Offer_AEM_27_Step11 Click Preview > Click Submit
   Offer_AEM_27_Step12 Verify Offer page
   Offer_AEM_27_Step13 Verify Offer management and Reward store on SMP



Offer_AEM_28 Edit change offer category and change image of public offer and voucher type as pre gen code reward via AEM
   Offer_AEM_28_Step07 Click Create > Click Page
   Offer_AEM_28_Step08 Click Edit Offer > Click Configure
   Offer_AEM_28_Step09 Edit Offer Information
   Offer_AEM_28_Step10 Verify Offer Information
   Offer_AEM_28_Step11 Click Preview > Click Submit
   Offer_AEM_28_Step12 Verify Offer page
   Offer_AEM_28_Step13 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_29 Edit change exchange rate of other offer and voucher type as trasnfer out via AEM
   Offer_AEM_29_Step07 Click Create > Click Page
   Offer_AEM_29_Step08 Click Edit Offer > Click Configure
   Offer_AEM_29_Step09 Edit Offer Information
   Offer_AEM_29_Step10 Verify Offer Information
   Offer_AEM_29_Step11 Click Preview > Click Submit
   Offer_AEM_29_Step12 Verify Offer page
   Offer_AEM_29_Step13 Verify Offer Management and Verify Reward Store on SMP



Offer_AEM_30 Edit change start date and enddate of other offer and voucher type as privilege via AEM
   Offer_AEM_30_Step07 Click Create > Click Page
   Offer_AEM_30_Step08 Click Edit Offer > Click Configure
   Offer_AEM_30_Step09 Edit Offer Information
   Offer_AEM_30_Step10 Verify Offer Information
   Offer_AEM_30_Step11 Click Preview > Click Submit
   Offer_AEM_30_Step12 Verify Offer page
   Offer_AEM_30_Step13 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_31 Edit remove associated reward store of targeted offer and voucher type as reward via AEM
   Offer_AEM_31_Step07 Click Create > Click Page
   Offer_AEM_31_Step08 Click Edit Offer > Click Configure
   Offer_AEM_31_Step09 Edit Offer Information
   Offer_AEM_31_Step10 Verify Offer Information
   Offer_AEM_31_Step11 Click Preview > Click Submit
   Offer_AEM_31_Step12 Verify Offer page
   Offer_AEM_31_Step13 Verify Offer Management and Verify Reward Store on SMP



Offer_AEM_32 Edit change associated reward store of bulk T1X offer and voucher type as reward via AEM
   Offer_AEM_32_Step07 Click Create > Click Page
   Offer_AEM_32_Step08 Click Edit Offer > Click Configure
   Offer_AEM_32_Step09 Edit Offer Information
   Offer_AEM_32_Step10 Verify Offer Information
   Offer_AEM_32_Step11 Click Preview > Click Submit
   Offer_AEM_32_Step12 Verify Offer page
   Offer_AEM_32_Step13 Verify Offer Management and Verify Reward Store on SMP



Offer_AEM_33 Edit change POS Discount ID and change countdownvalue of public offer and voucher type as pre gen multiuse code via AEM
   Offer_AEM_33_Step07 Click Create > Click Page
   Offer_AEM_33_Step08 Click Edit Offer > Click Configure
   Offer_AEM_33_Step09 Edit Offer Information
   Offer_AEM_33_Step10 Verify Offer Information
   Offer_AEM_33_Step11 Click Preview > Click Submit
   Offer_AEM_33_Step12 Verify Offer page
   Offer_AEM_33_Step13 Verify Offer Management and Verify Reward Store on SMP



Offer_AEM_34 Edit remove Reward_child1_1 of of reward group 1 via AEM
   Offer_AEM_34_Step07 Click Create > Click Page
   Offer_AEM_34_Step08 Click Edit Offer > Click Configure
   Offer_AEM_34_Step09 Edit Offer Information
   Offer_AEM_34_Step10 Verify Offer Information
   Offer_AEM_34_Step11 Click Preview > Click Submit
   Offer_AEM_34_Step12 Verify Offer page
   Offer_AEM_34_Step13 Verify Offer Management and Verify Reward Store on SMP


Offer_AEM_35 Edit PreGenMultiUse_child2_2 child of reward group with restrictions 2 via AEM
   Offer_AEM_35_Step06 Click Pic
   Offer_AEM_35_Step07 Click Edit Offer > Click Configure
   Offer_AEM_35_Step08 Edit Offer Information
   Offer_AEM_35_Step09 Verify Offer Information
   Offer_AEM_35_Step10 Click Preview > Click Submit
   Offer_AEM_35_Step11 Click Pic
   Offer_AEM_35_Step12 Click Edit Offer > Click Configure
   Offer_AEM_35_Step13 Edit Offer Information
   Offer_AEM_35_Step14 Verify Offer Information
   Offer_AEM_35_Step15 Click Preview > Click Submit
   Offer_AEM_35_Step15 Verify Offer page
   Offer_AEM_35_Step15 Verify Offer Management and Verify Reward Store on SMP
   Offer_AEM_35_Step16 Click Pic offer
   Offer_AEM_35_Step17 Click Edit Offer > Click Configure
   Offer_AEM_35_Step18 Edit Offer Mechanics
   Offer_AEM_35_Step19 Verify Offer Information
   Offer_AEM_35_Step20 Click Preview > Click Submit
   Offer_AEM_35_Step21 Verify Offer page
   Offer_AEM_35_Step22 Verify Offer management and Reward store on SMP
   Offer_AEM_35_Step23 Verify Configure Package Offers for Selection


Offer_AEM_36 Download old offer via AEM to excel file for update offer in siebel
   Offer_AEM_36_Step04 Click Folder Offer under the 1 Central and Offer_AEM_18_Step05 Select offer pic all voucher Type


Offer_AEM_37 Edit old offer, add offer category and change siebel points of public offer and voucher type as reward via AEM
   Offer_AEM_37_Step07 Click Create > Click Page
   Offer_AEM_37_Step08 Click Edit Offer > Click Configure
   Offer_AEM_37_Step09 Edit Offer Information
   Offer_AEM_37_Step10 Verify Offer Information
   Offer_AEM_37_Step11 Click Preview > Click Submit
   Offer_AEM_37_Step12 Verify Offer page
   Offer_AEM_37_Step13 Verify Offer management and Reward store on SMP

