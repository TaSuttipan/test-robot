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
Resource    ../Variable/Variable_Banner_UI_AEM.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_AT_Banner_AEM.robot
Suite Teardown     Close Browser


*** Test Cases ***

Login AEM with test-approver account
    Get Date and DateTime
    Get Date of AEM
    Get Date of SMP
    Login AEM with test-approver account
    Check if Questionnaire AT Banner AEM

AEM_AT_01 Create Carousel List Page 'Carousel_1' for section1 on Home page application
    AEM_AT_01_Step03 Click AT Banner Icon
    AEM_AT_01_Step05 Select Carousel List API Page
    AEM_AT_01_Step06 Input value in Basic tab
    AEM_AT_01_Step07 Click Create
    AEM_AT_01_Step08 Click Open and verify AT Banner
    AEM_AT_01_Step09 Click Page Information > Publish Page on AT Banner page
    AEM_AT_01_Step10 Click Preview and verify Publish API on AT Banner page

AEM_AT_02 Create Carousel List Page 'Carousel_2' for section1 on Home page application
    AEM_AT_02_Step03 Click AT Banner Icon
    AEM_AT_02_Step05 Select Carousel List API Page
    AEM_AT_02_Step06 Input value in Basic tab
    AEM_AT_02_Step07 Click Create
    AEM_AT_02_Step08 Click Open and verify AT Banner
    AEM_AT_02_Step09 Click Page Information > Publish Page on AT Banner page
    AEM_AT_02_Step10 Click Preview and verify Publish API on AT Banner page

AEM_AT_03 Create AT Banner Listing Page 'T1X' for check logic create banner 2 setting number of banner 10 on Carousel_1
    AEM_AT_03_Step03 Click AT Banner Icon
    AEM_AT_03_Step06 Select AT Banner Listing Page
    AEM_AT_03_Step07 Input value in Basic tab
    AEM_AT_03_Step08 Input AT Banner Setting
    AEM_AT_03_Step09 Click Create
    AEM_AT_03_Step10 Click Open and verify AT Banner
    AEM_AT_03_Step11 Click Page Information > Publish Page on AT Banner page
    AEM_AT_03_Step12 Click Preview and verify Publish API on AT Banner page
    AEM_AT_03_Step13 Click PagePreview AT Banner Listing Page

AEM_OFFER_AT_01 Create Offer Banner Page in T1X for check logic Search by Title, Short Description, or Partner Name on Carousel 1
    AEM_OFFER_AT_01 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_01 Step07 Select Offer Banner Page
    AEM_OFFER_AT_01 Step08 Input value in Basic tab
    AEM_OFFER_AT_01 Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_OFFER_AT_01 Step10 Enter Create
    AEM_OFFER_AT_01 Step11 Click Open and verify AT Banner
    AEM_OFFER_AT_01 Step12 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_01 Step13 Click Preview and verify Publish API on Offer Banner Page
    AEM_OFFER_AT_01 Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_OFFER_AT_02 Create Offer Banner Page in T1X for check logic Search by Search by Offer ID on Carousel 1
    AEM_OFFER_AT_02 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_02 Step07 Select Offer Banner Page
    AEM_OFFER_AT_02 Step08 Input value in Basic tab
    AEM_OFFER_AT_02 Step09 Input Offer Setting Search Rootoffer
    AEM_OFFER_AT_02 Step10 Enter Create
    AEM_OFFER_AT_02 Step11 Click Open and verify AT Banner
    AEM_OFFER_AT_02 Step12 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_02 Step13 Click Preview and verify Publish API on Offer Banner Page
    AEM_OFFER_AT_02 Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_OFFER_AT Test button Reset
    AEM_OFFER_AT_Reset Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_Reset Step07 Select Offer Banner Page
    AEM_OFFER_AT_Reset Step08 Input value in Basic tab
    AEM_OFFER_AT_Reset Step09 Input Offer Setting Search Rootoffer
    AEM_OFFER_AT_Reset Step10 Button Reset
    AEM_OFFER_AT_Reset Step11 Click Open and verify AT Banner

AEM_OFFER_AT_03 Create Offer Banner Page in T1X for check logic create offer banner page not start on Carousel 1
    AEM_OFFER_AT_03 Step05 Click Pic of AT Banner Listing Page "t1x" Step06 Click Create > Click Page
    AEM_OFFER_AT_03 Step07 Select Offer Banner Page
    AEM_OFFER_AT_03 Step08 Input value in Basic tab
    AEM_OFFER_AT_03 Step09 Input Offer Setting Start Date Not Start
    AEM_OFFER_AT_03 Step10 Click Create
    AEM_OFFER_AT_03 Step11 Click Open and verify AT Banner
    AEM_OFFER_AT_03 Step12 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_03 Step13 Click Preview and verify Publish API on Offer Banner Page
    AEM_OFFER_AT_03 Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_OFFER_AT_04 Create Offer Banner Page in T1X for check logic Search an offer that isn't listed in issueChannel
    AEM_OFFER_AT_04 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_04 Step07 Select Offer Banner Page
    AEM_OFFER_AT_04 Step08 Input value in Basic tab
    AEM_OFFER_AT_04 Step09 Input Offer Setting Search an offer that isn't listed in issueChannel

AEM_OFFER_AT_05 Create Offer Banner Page in T1X for check logic Search by Thai language on Carousel 1
    AEM_OFFER_AT_05 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_05 Step07 Select Offer Banner Page
    AEM_OFFER_AT_05 Step08 Input value in Basic tab
    AEM_OFFER_AT_05 Step09 Input Offer Setting Search by Thai language on Carousel 1

AEM_OFFER_AT_06 Create Offer Banner Page in T1X for check logic search by root offer id expired on Carousel 1
    AEM_OFFER_AT_06 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_06 Step07 Select Offer Banner Page
    AEM_OFFER_AT_06 Step08 Input value in Basic tab
    AEM_OFFER_AT_06 Step09 Input Offer by root offer id expired on Carousel 1


AEM_OFFER_AT_07 Edit information of Offer Banner Page in T1X to verify that you can edit the information.
    AEM_OFFER_AT_07_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_07_Step08 Edit information of Offer Setting Banner Image,Title,Short Description,Date,Link URL
    AEM_OFFER_AT_07_Step09 Enter Save&Close
    AEM_OFFER_AT_07_Step10 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_07_Step13 Click PagePreview "t1x" on AT Banner Listing Page


AEM_OFFER_AT_08 Edit start date is greater than the current date to check that the status changes to Not start.
    AEM_OFFER_AT_08_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_08_Step08 Edit information of Offer Edit Offer Setting Start Date Change date Not start
    AEM_OFFER_AT_08_Step09 Enter Save&Close
    AEM_OFFER_AT_08_Step10 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_08_Step13 Click PagePreview "t1x" on AT Banner Listing Page


AEM_OFFER_AT_09 Edit end date is less than the current date to check that the status changes to expired.
    AEM_OFFER_AT_09_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_OFFER_AT_09_Step08 Edit Offer Setting End Date Change date expired
    AEM_OFFER_AT_09_Step09 Enter Save&Close
    AEM_OFFER_AT_09_Step10 Click Page Information > Publish Page on Offer Banner Page
    AEM_OFFER_AT_09_Step13 Click PagePreview "t1x" on AT Banner Listing Page


AEM_LINK_AT_01 Create Link Banner API Page in T1X to check LinkType LinkURL successfully created on Carousel 1
    AEM_LINK_AT_01 Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_LINK_AT_01 Step07 Select Link Banner Page
    AEM_LINK_AT_01 Step08 Input value in Basic tab
    AEM_LINK_AT_01 Step09 Input Link Details in Link Configuration tab
    AEM_LINK_AT_01 Step10 Enter Create
    AEM_LINK_AT_01 Step11 Click Open and verify AT Banner
    AEM_LINK_AT_01 Step12 Click Page Information > Publish Page on Link Banner Pagee
    AEM_LINK_AT_01 Step13 Click Preview and verify Publish API on Link Banner Page
    AEM_LINK_AT_01 Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_LINK_AT_02 Edit information of Link Banner Page in T1X to verify that you can edit the information.
    AEM_LINK_AT_02_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_LINK_AT_02_Step09 Edit Link Setting Title, Short Description, or Partner Name
    AEM_LINK_AT_02_Step10 Enter Save&Close
    AEM_LINK_AT_02_Step12 Click Page Information > Publish Page on Link Banner Page
    AEM_LINK_AT_02_Step13 Click Preview and verify Publish API on Link Banner Page
    AEM_LINK_AT_02_Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_LINK_AT_03 Edit start date is greater than the current date and change linktype url of Link Banner API Page in T1X.
    AEM_LINK_AT_03_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_LINK_AT_03_Step09 Edit information and Edit Setting Start Date Change date Not start
    AEM_LINK_AT_03_Step10 Enter Save&Close
    AEM_LINK_AT_03_Step12 Click Page Information > Publish Page on Link Banner Page
    AEM_LINK_AT_03_Step13 Click Preview and verify Publish API on Link Banner Page
    AEM_LINK_AT_03_Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_LINK_AT_04 Edit end date is less than the current date and change linktype url of Link Banner API Page
    AEM_LINK_AT_04_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_LINK_AT_04_Step09 Edit Link Setting edit date expired
    AEM_LINK_AT_04_Step10 Enter Save&Close
    AEM_LINK_AT_04_Step12 Click Page Information > Publish Page on Link Banner Page
    AEM_LINK_AT_04_Step13 Click Preview and verify Publish API on Link Banner Page
    AEM_LINK_AT_04_Step14 Click PagePreview "t1x" on AT Banner Listing Page

AEM_LINK_AT_05 Remove Link Banner API Page in T1X to verify that the mandatory field cannot be saved.
    AEM_LINK_AT_05_Step05 Click Pic of AT Banner Listing Page "t1x"
    AEM_LINK_AT_05_Step08 Not input value in Basic tab


AEM_AT_04 Create AT Banner Listing Page 'Default' for check logic create banner 10 setting number of banner 10 on Carousel_2
    AEM_AT_04_Step05 Click Create > Click Page
    AEM_AT_04_Step06 Select AT Banner Listing Page
    AEM_AT_04_Step07 Input value in Basic tab
    AEM_AT_04_Step08 Input AT Banner Setting
    AEM_AT_04_Step09 Click Create
    AEM_AT_04_Step10 Click Open and verify AT Banner
    AEM_AT_04_Step11 Click Page Information > Publish Page on AT Banner page
    AEM_AT_04_Step12 Click Preview and verify Publish API on AT Banner page



AEM_AT_04List Create offer banner 5 and Create Link Banner 5 in Listing Page "Default"
    AEM_AT_04_L1 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L1 AEM_OFFER_AT_Step07 Select Offer Banner Page
    AEM_AT_04_L1 AEM_OFFER_AT_Step08 Input value in Basic tab
    AEM_AT_04_L1 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_AT_04_L1 AEM_OFFER_AT_Step10 Enter Create
    AEM_AT_04_L1 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L1 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    AEM_AT_04_L1 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page

    AEM_AT_04_L2 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L2 AEM_OFFER_AT_Step07 Select Offer Banner Page
    AEM_AT_04_L2 AEM_OFFER_AT_Step08 Input value in Basic tab
    AEM_AT_04_L2 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_AT_04_L2 AEM_OFFER_AT_Step10 Enter Create
    AEM_AT_04_L2 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L2 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    AEM_AT_04_L2 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page

    AEM_AT_04_L3 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L3 AEM_OFFER_AT_Step07 Select Offer Banner Page
    AEM_AT_04_L3 AEM_OFFER_AT_Step08 Input value in Basic tab
    AEM_AT_04_L3 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_AT_04_L3 AEM_OFFER_AT_Step10 Enter Create
    AEM_AT_04_L3 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L3 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    AEM_AT_04_L3 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page

    AEM_AT_04_L4 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L4 AEM_OFFER_AT_Step07 Select Offer Banner Page
    AEM_AT_04_L4 AEM_OFFER_AT_Step08 Input value in Basic tab
    AEM_AT_04_L4 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_AT_04_L4 AEM_OFFER_AT_Step10 Enter Create
    AEM_AT_04_L4 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L4 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    AEM_AT_04_L4 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page

    AEM_AT_04_L5 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L5 AEM_OFFER_AT_Step07 Select Offer Banner Page
    AEM_AT_04_L5 AEM_OFFER_AT_Step08 Input value in Basic tab
    AEM_AT_04_L5 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    AEM_AT_04_L5 AEM_OFFER_AT_Step10 Enter Create
    AEM_AT_04_L5 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L5 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    AEM_AT_04_L5 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page

    AEM_AT_04_L6_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L6_AEM_LINK_AT_Step07 Select Link Banner Page
    AEM_AT_04_L6_AEM_LINK_AT_Step08 Input value in Basic tab
    AEM_AT_04_L6_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    AEM_AT_04_L6_AEM_LINK_AT_Step10 Enter Create
    AEM_AT_04_L6_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L6_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee

    AEM_AT_04_L7_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L7_AEM_LINK_AT_Step07 Select Link Banner Page
    AEM_AT_04_L7_AEM_LINK_AT_Step08 Input value in Basic tab
    AEM_AT_04_L7_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    AEM_AT_04_L7_AEM_LINK_AT_Step10 Enter Create
    AEM_AT_04_L7_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L7_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee

    AEM_AT_04_L8_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L8_AEM_LINK_AT_Step07 Select Link Banner Page
    AEM_AT_04_L8_AEM_LINK_AT_Step08 Input value in Basic tab
    AEM_AT_04_L8_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    AEM_AT_04_L8_AEM_LINK_AT_Step10 Enter Create
    AEM_AT_04_L8_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L8_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee

    AEM_AT_04_L9_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L9_AEM_LINK_AT_Step07 Select Link Banner Page
    AEM_AT_04_L9_AEM_LINK_AT_Step08 Input value in Basic tab
    AEM_AT_04_L9_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    AEM_AT_04_L9_AEM_LINK_AT_Step10 Enter Create
    AEM_AT_04_L9_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L9_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee

    AEM_AT_04_L10_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_04_L10_AEM_LINK_AT_Step07 Select Link Banner Page
    AEM_AT_04_L10_AEM_LINK_AT_Step08 Input value in Basic tab
    AEM_AT_04_L10_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    AEM_AT_04_L10_AEM_LINK_AT_Step10 Enter Create
    AEM_AT_04_L10_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    AEM_AT_04_L10_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    AEM_AT_04_Step13 Click Preview and verify Publish API on Link Banner Page
    AEM_AT_04_Step14 Click PagePreview "default" on AT Banner Listing Page

AEM_AT_05 Create AT Banner Listing Page Not input in Title it cannot be created on Carousel 1
    AEM_AT_05_Step05 Click Pic of AT Banner Listing Page "default"
    AEM_AT_05_Step06 Select Link Banner Page
    AEM_AT_05_Step07 Not input value in Basic tab


AEM_AT_06 Edit Title of AT Banner Listing Page 'Default' to verify that you can edit the Title on Carousel 1
    AEM_AT_06_Step05 Click Pic of AT Banner Listing Page
    AEM_AT_06_Step07 Edit Title : Default > Default Edit
    AEM_AT_06_Step08 Click Preview and verify Publish API on Listing Banner Page
    AEM_AT_06_Step11 Click Page Information > Publish Page on AT Banner page
    AEM_AT_06_Step14 Click PagePreview "default" on AT Banner Listing Page

AEM_AT_07 Edit Number of Banner to more than present 'Default' to verify that you can edit the Number of Banner on Carousel 1
    AEM_AT_07_Step05 Click Pic of AT Banner Listing Page
    AEM_AT_07_Step07 Edit AT Banner Setting Number of Banner : 10 >1
    AEM_AT_07_Step08 Click Preview and verify Publish API on Listing Banner Page
    AEM_AT_07_Step11 Click Page Information > Publish Page on AT Banner page
    AEM_AT_07_Step14 Click PagePreview "default" on AT Banner Listing Page
