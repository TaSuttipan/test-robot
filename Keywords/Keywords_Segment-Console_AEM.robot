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
Resource    ../Variable/Variable_Personalization_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser




*** Keywords ***
Check if Questionnaire segment-console AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
#Login_AEM_Step02 Click The1 Central
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  1s
#Check if Questionnaire2
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
#Login_AEM_Step03 Click AT Banner Icon
    Click Element Wait AEM         ${icon_Personalization_AEM}
    sleep  1s
    Click Element Wait AEM         ${icon_Segment Console_AEM}
    sleep  2s
#Check if Questionnaire3
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
#ogin_AEM_Step04 Click Pic of Carousel List "Name Carousel"
    Click Element Wait AEM       ${folder_Segment Console_AEM}
    sleep  3s


AEM_Segment_01_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_01_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
    sleep  1s
AEM_Segment_01_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_Test
    sleep  2s

AEM_Segment_01_Step08 Verify User Selection Information and Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_01_Click Open and Step12 Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Capture Page Screenshot          ${date_today}_AEM_Segment_01.PNG
    sleep  3s
AEM_Segment_01_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_01_Properties.PNG
    sleep  3s
AEM_Segment_01_Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=${date_today}_Segment_Console_Test&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_01_API.PNG
    sleep  1s







AEM_Segment_02_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_02_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_02_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_2_offers
    sleep  1s
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep    2s
AEM_Segment_02_Step07 Click search by offer title, partner name ,short description in EN
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep    2s
    Click Element Wait AEM      ${click_No.1_Offer 100_segment_console_AEM}
    sleep    2s
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.2_Offer 100_segment_console_AEM}
    sleep  2s
    Input information AEM       ${input_Order_No.1 Offer 100_segment_console_AEM}       1
    sleep  2s
    Input information AEM       ${input_Order_No.2 Offer 100_segment_console_AEM}       2
    sleep  3s
AEM_Segment_02_Step08 Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_02_Step09 Click Open and Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_02.PNG
    sleep  3s
AEM_Segment_02_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_02_Properties.PNG
    sleep  3s
AEM_Segment_02_Step11 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=${date_today}_Segment_Console_2_offers&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_02_API.PNG
    sleep  3s






AEM_Segment_03_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_03_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_03_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_99_offers
    sleep  1s
AEM_Segment_03_Step07 Click tab user selection
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  2s
AEM_Segment_03_Step08 Click slecte offer 99 offers
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.1_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.2_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.3_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.4_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.5_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.6_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.7_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.8_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.9_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.10_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.11_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.12_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.13_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.14_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.15_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.16_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.17_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.18_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.19_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.20_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.21_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.22_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.23_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.24_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.25_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.26_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.27_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.28_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.29_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.30_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.31_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.32_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.33_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.34_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.35_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.36_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.37_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.38_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.39_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.40_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.41_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.42_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.43_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.44_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.45_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.46_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.47_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.48_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.49_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.50_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.51_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.52_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.53_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.54_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.55_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.56_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.57_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.58_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.59_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.60_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.61_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.62_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.63_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.64_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.65_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.66_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.67_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.68_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.69_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.70_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.71_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.72_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.73_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.74_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.75_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.76_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.77_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.78_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.79_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.80_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.81_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.82_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.83_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.84_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.85_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.86_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.87_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.88_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.89_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.90_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.91_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.92_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.93_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.94_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.95_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.96_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.97_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.98_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.99_Offer 100_segment_console_AEM}
    sleep  2s
AEM_Segment_03_Step09 Input Order offer 99 offers
    Input information AEM       ${input_Order_No.1 Offer 100_segment_console_AEM}       1
    sleep  2s
    Input information AEM       ${input_Order_No.2 Offer 100_segment_console_AEM}       2
    sleep  2s
    Input information AEM       ${input_Order_No.3 Offer 100_segment_console_AEM}       3
    sleep  2s
    Input information AEM       ${input_Order_No.4 Offer 100_segment_console_AEM}       4
    sleep  2s
    Input information AEM       ${input_Order_No.5 Offer 100_segment_console_AEM}       5
    sleep  2s
    Input information AEM       ${input_Order_No.6 Offer 100_segment_console_AEM}       6
    sleep  2s
    Input information AEM       ${input_Order_No.7 Offer 100_segment_console_AEM}       7
    sleep  2s
    Input information AEM       ${input_Order_No.8 Offer 100_segment_console_AEM}       8
    sleep  2s
    Input information AEM       ${input_Order_No.9 Offer 100_segment_console_AEM}       9
    sleep  2s
    Input information AEM       ${input_Order_No.10 Offer 100_segment_console_AEM}      10
    sleep  2s
    Input information AEM       ${input_Order_No.11 Offer 100_segment_console_AEM}      11
    sleep  2s
    Input information AEM       ${input_Order_No.12 Offer 100_segment_console_AEM}      12
    sleep  2s
    Input information AEM       ${input_Order_No.13 Offer 100_segment_console_AEM}      13
    sleep  2s
    Input information AEM       ${input_Order_No.14 Offer 100_segment_console_AEM}      14
    sleep  2s
    Input information AEM       ${input_Order_No.15 Offer 100_segment_console_AEM}      15
    sleep  2s
    Input information AEM       ${input_Order_No.16 Offer 100_segment_console_AEM}      16
    sleep  2s
    Input information AEM       ${input_Order_No.17 Offer 100_segment_console_AEM}      17
    sleep  2s
    Input information AEM       ${input_Order_No.18 Offer 100_segment_console_AEM}      18
    sleep  2s
    Input information AEM       ${input_Order_No.19 Offer 100_segment_console_AEM}      19
    sleep  2s
    Input information AEM       ${input_Order_No.20 Offer 100_segment_console_AEM}      20
    sleep  2s
    Input information AEM       ${input_Order_No.21 Offer 100_segment_console_AEM}      21
    sleep  2s
    Input information AEM       ${input_Order_No.22 Offer 100_segment_console_AEM}      22
    sleep  2s
    Input information AEM       ${input_Order_No.23 Offer 100_segment_console_AEM}      23
    sleep  2s
    Input information AEM       ${input_Order_No.24 Offer 100_segment_console_AEM}      24
    sleep  2s
    Input information AEM       ${input_Order_No.25 Offer 100_segment_console_AEM}      25
    sleep  2s
    Input information AEM       ${input_Order_No.26 Offer 100_segment_console_AEM}      26
    sleep  2s
    Input information AEM       ${input_Order_No.27 Offer 100_segment_console_AEM}      27
    sleep  2s
    Input information AEM       ${input_Order_No.28 Offer 100_segment_console_AEM}      28
    sleep  2s
    Input information AEM       ${input_Order_No.29 Offer 100_segment_console_AEM}      29
    sleep  2s
    Input information AEM       ${input_Order_No.30 Offer 100_segment_console_AEM}      30
    sleep  2s
    Input information AEM       ${input_Order_No.31 Offer 100_segment_console_AEM}      31
    sleep  2s
    Input information AEM       ${input_Order_No.32 Offer 100_segment_console_AEM}      32
    sleep  2s
    Input information AEM       ${input_Order_No.33 Offer 100_segment_console_AEM}      33
    sleep  2s
    Input information AEM       ${input_Order_No.34 Offer 100_segment_console_AEM}      34
    sleep  2s
    Input information AEM       ${input_Order_No.35 Offer 100_segment_console_AEM}      35
    sleep  2s
    Input information AEM       ${input_Order_No.36 Offer 100_segment_console_AEM}      36
    sleep  2s
    Input information AEM       ${input_Order_No.37 Offer 100_segment_console_AEM}      37
    sleep  2s
    Input information AEM       ${input_Order_No.38 Offer 100_segment_console_AEM}      38
    sleep  2s
    Input information AEM       ${input_Order_No.39 Offer 100_segment_console_AEM}      39
    sleep  2s
    Input information AEM       ${input_Order_No.40 Offer 100_segment_console_AEM}      40
    sleep  2s
    Input information AEM       ${input_Order_No.41 Offer 100_segment_console_AEM}      41
    sleep  2s
    Input information AEM       ${input_Order_No.42 Offer 100_segment_console_AEM}      42
    sleep  2s
    Input information AEM       ${input_Order_No.43 Offer 100_segment_console_AEM}      43
    sleep  2s
    Input information AEM       ${input_Order_No.44 Offer 100_segment_console_AEM}      44
    sleep  2s
    Input information AEM       ${input_Order_No.45 Offer 100_segment_console_AEM}      45
    sleep  2s
    Input information AEM       ${input_Order_No.46 Offer 100_segment_console_AEM}      46
    sleep  2s
    Input information AEM       ${input_Order_No.47 Offer 100_segment_console_AEM}      47
    sleep  2s
    Input information AEM       ${input_Order_No.48 Offer 100_segment_console_AEM}      48
    sleep  2s
    Input information AEM       ${input_Order_No.49 Offer 100_segment_console_AEM}      49
    sleep  2s
    Input information AEM       ${input_Order_No.50 Offer 100_segment_console_AEM}      50
    sleep  2s
    Input information AEM       ${input_Order_No.51 Offer 100_segment_console_AEM}      51
    sleep  2s
    Input information AEM       ${input_Order_No.52 Offer 100_segment_console_AEM}      52
    sleep  2s
    Input information AEM       ${input_Order_No.53 Offer 100_segment_console_AEM}      53
    sleep  2s
    Input information AEM       ${input_Order_No.54 Offer 100_segment_console_AEM}      54
    sleep  2s
    Input information AEM       ${input_Order_No.55 Offer 100_segment_console_AEM}      55
    sleep  2s
    Input information AEM       ${input_Order_No.56 Offer 100_segment_console_AEM}      56
    sleep  2s
    Input information AEM       ${input_Order_No.57 Offer 100_segment_console_AEM}      57
    sleep  2s
    Input information AEM       ${input_Order_No.58 Offer 100_segment_console_AEM}      58
    sleep  2s
    Input information AEM       ${input_Order_No.59 Offer 100_segment_console_AEM}      59
    sleep  2s
    Input information AEM       ${input_Order_No.60 Offer 100_segment_console_AEM}      60
    sleep  2s
    Input information AEM       ${input_Order_No.61 Offer 100_segment_console_AEM}      61
    sleep  2s
    Input information AEM       ${input_Order_No.62 Offer 100_segment_console_AEM}      62
    sleep  2s
    Input information AEM       ${input_Order_No.63 Offer 100_segment_console_AEM}      63
    sleep  2s
    Input information AEM       ${input_Order_No.64 Offer 100_segment_console_AEM}      64
    sleep  2s
    Input information AEM       ${input_Order_No.65 Offer 100_segment_console_AEM}      65
    sleep  2s
    Input information AEM       ${input_Order_No.66 Offer 100_segment_console_AEM}      66
    sleep  2s
    Input information AEM       ${input_Order_No.67 Offer 100_segment_console_AEM}      67
    sleep  2s
    Input information AEM       ${input_Order_No.68 Offer 100_segment_console_AEM}      68
    sleep  2s
    Input information AEM       ${input_Order_No.69 Offer 100_segment_console_AEM}      69
    sleep  2s
    Input information AEM       ${input_Order_No.70 Offer 100_segment_console_AEM}      70
    sleep  2s
    Input information AEM       ${input_Order_No.71 Offer 100_segment_console_AEM}      71
    sleep  2s
    Input information AEM       ${input_Order_No.72 Offer 100_segment_console_AEM}      72
    sleep  2s
    Input information AEM       ${input_Order_No.73 Offer 100_segment_console_AEM}      73
    sleep  2s
    Input information AEM       ${input_Order_No.74 Offer 100_segment_console_AEM}      74
    sleep  2s
    Input information AEM       ${input_Order_No.75 Offer 100_segment_console_AEM}      75
    sleep  2s
    Input information AEM       ${input_Order_No.76 Offer 100_segment_console_AEM}      76
    sleep  2s
    Input information AEM       ${input_Order_No.77 Offer 100_segment_console_AEM}      77
    sleep  2s
    Input information AEM       ${input_Order_No.78 Offer 100_segment_console_AEM}      78
    sleep  2s
    Input information AEM       ${input_Order_No.79 Offer 100_segment_console_AEM}      79
    sleep  2s
    Input information AEM       ${input_Order_No.80 Offer 100_segment_console_AEM}      80
    sleep  2s
    Input information AEM       ${input_Order_No.81 Offer 100_segment_console_AEM}      81
    sleep  2s
    Input information AEM       ${input_Order_No.82 Offer 100_segment_console_AEM}      82
    sleep  2s
    Input information AEM       ${input_Order_No.83 Offer 100_segment_console_AEM}      83
    sleep  2s
    Input information AEM       ${input_Order_No.84 Offer 100_segment_console_AEM}      84
    sleep  2s
    Input information AEM       ${input_Order_No.85 Offer 100_segment_console_AEM}      85
    sleep  2s
    Input information AEM       ${input_Order_No.86 Offer 100_segment_console_AEM}      86
    sleep  2s
    Input information AEM       ${input_Order_No.87 Offer 100_segment_console_AEM}      87
    sleep  2s
    Input information AEM       ${input_Order_No.88 Offer 100_segment_console_AEM}      88
    sleep  2s
    Input information AEM       ${input_Order_No.89 Offer 100_segment_console_AEM}      89
    sleep  2s
    Input information AEM       ${input_Order_No.90 Offer 100_segment_console_AEM}      90
    sleep  2s
    Input information AEM       ${input_Order_No.91 Offer 100_segment_console_AEM}      91
    sleep  2s
    Input information AEM       ${input_Order_No.92 Offer 100_segment_console_AEM}      92
    sleep  2s
    Input information AEM       ${input_Order_No.93 Offer 100_segment_console_AEM}      93
    sleep  2s
    Input information AEM       ${input_Order_No.94 Offer 100_segment_console_AEM}      94
    sleep  2s
    Input information AEM       ${input_Order_No.95 Offer 100_segment_console_AEM}      95
    sleep  2s
    Input information AEM       ${input_Order_No.96 Offer 100_segment_console_AEM}      96
    sleep  2s
    Input information AEM       ${input_Order_No.97 Offer 100_segment_console_AEM}      97
    sleep  2s
    Input information AEM       ${input_Order_No.98 Offer 100_segment_console_AEM}      98
    sleep  2s
    Input information AEM       ${input_Order_No.99 Offer 100_segment_console_AEM}      99
    sleep  5s
AEM_Segment_03_Step10 Verify User Selection Information and Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_03_Step11 Click Open and Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_03.PNG
    sleep  3s
AEM_Segment_03_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM           ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  10s
    Click Element Wait AEM           ${Oder_99_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_03_Properties.PNG
    sleep  5s
AEM_Segment_03_Step12 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=${date_today}_Segment_Console_99_offers&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_03_API.PNG
    sleep  3s






AEM_Segment_04_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_04_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_04_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_expired
    sleep  1s
AEM_Segment_04_Step07 Click tab user selection
    Click Element Wait AEM           ${tab_Segment Console_AEM}
AEM_Segment_04_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    sleep  2s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Title EN_EXPIRE_NOW
    Capture Page Screenshot          ${date_today}_AEM_Segment_04_Title.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Short Description EN Title EN_EXPIRE_NOW
    Capture Page Screenshot          ${date_today}_AEM_Segment_04_ShortDescriptionEN.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         A Style Nail Eyelash
    Capture Page Screenshot          ${date_today}_AEM_Segment_04_Partner.PNG
    sleep  3s
AEM_Segment_04_Verify User Selection Information and Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_04_Click Open and Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_04.PNG
    sleep  3s
AEM_Segment_04_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_04_Properties.PNG
    sleep  1s





AEM_Segment_05_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_05_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_05_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_SearchThai
    sleep  1s
AEM_Segment_05_Step07 Click tab user selection
    Click Element Wait AEM           ${tab_Segment Console_AEM}
AEM_Segment_05_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    sleep  2s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Title TH Search
    Capture Page Screenshot          ${date_today}_AEM_Segment_05_Title.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Short Description TH Search
    Capture Page Screenshot          ${date_today}_AEM_Segment_05_ShortDescriptionEN.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Mint_Cafe
    Capture Page Screenshot          ${date_today}_AEM_Segment_05_Partner.PNG
    sleep  3s
AEM_Segment_05_Verify User Selection Information and Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_05_Click Open and Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_05.PNG
    sleep  3s
AEM_Segment_05_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_05_Properties.PNG
    sleep  1s






AEM_Segment_06_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_06_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_06_Step06 Input value in Basic tab
    Input information AEM            ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_Search
AEM_Segment_06_Step08 Click search by offer title, partner name ,short description in EN and Step09 Input Order
    sleep  3s
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  2s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Title EN Search
    Capture Page Screenshot          ${date_today}_AEM_Segment_06_Title.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Short Description EN Search
    Capture Page Screenshot          ${date_today}_AEM_Segment_06_ShortDescriptionEN.PNG
    sleep  3s
    Clear Element Text               ${input_Nane_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${input_Nane_Segment Console_AEM}         Mint_Cafe
    Capture Page Screenshot          ${date_today}_AEM_Segment_06_Partner.PNG
    sleep    3s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
    Clear Element Text               ${input_Order_No.1 Offer segment_console_AEM}
    Input information AEM            ${input_Order_No.1 Offer segment_console_AEM}     1
    sleep  3s
AEM_Segment_06_Verify User Selection Information and Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_06_Click Open and Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_06.PNG
    sleep  3s
AEM_Segment_06_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM           ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_06_Properties.PNG
    sleep  2s



AEM_Segment_07_Validate_field_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_07_Validate_field_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_07_Validate_field_Step06 Input value in Basic tab
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_07.PNG
    sleep  3s




AEM_Segment_08_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_08_Validate_field_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
    sleep  1s
    Input information AEM           ${input_title_segment_console_AEM}     P_Rec_EatAround
    sleep   1s
    Press Keys    None    RETURN
    sleep   3s
AEM_Segment_08_Validate_field_Step06 Input value in Basic tab
    Capture Page Screenshot          ${date_today}_AEM_Segment_08_duplicate.PNG
    sleep   3s
    Click Element Wait AEM           ${btn_cancel_duplicate_Segment Console_AEM}
    sleep   3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_08_Can't_Enter.PNG
    sleep   3s
    Click Element Wait AEM           ${btn_cancel_enter_Segment Console_AEM}
    sleep   3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_08_Title_Blank.PNG
    sleep   2s



AEM_Segment_09_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_09_Validate_field_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
    Input information AEM            ${input_title_segment_console_AEM}      Validate_field
    sleep   3s
AEM_Segment_09_Validate_field_Step07 Click tab user selection
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  2s
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM           ${click_No.1_Offer 100_segment_console_AEM}
    sleep  2s
AEM_Segment_09_Validate_field_Step08 Verify User Selection Information and Click Create
    Click Element Wait AEM           ${btn_create_category_tag_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_09.PNG
    sleep  3s



AEM_Segment_10_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_10_Validate_field_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
    sleep  1s
    Input information AEM            ${input_title_segment_console_AEM}      P_Rec_Test
    sleep  1s
AEM_Segment_10_Validate_field_Step09 Input Order offer
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  2s
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM           ${click_No.1_Offer 100_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM           ${click_No.2_Offer 100_segment_console_AEM}
    sleep  2s
    Input information AEM            ${input_Order_No.1 Offer 100_segment_console_AEM}       1
    sleep  2s
    Input information AEM            ${input_Order_No.2 Offer 100_segment_console_AEM}       1
    sleep  2s
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_10.PNG
    sleep   3s





AEM_Segment_11_Step04 Click Pic of Segment api "Name XXXXX" and Step05 Click Properties menu
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/personalization/segment-console/p_rec_health-wellness.html
    sleep  3s
AEM_Segment_11_Step07 Click tab user selection
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
AEM_Segment_11_Step08 Click search by offer title, partner name ,short description in EN
    sleep  2s
    Input information AEM            ${edit_input_Nane_Segment_segment_console_AEM}         EDIT_PUBLISH_REWARD_1
    sleep    3s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
AEM_Segment_11_Step09 Input Order and Change Order
    Input information AEM       ${click_No.1_Offer of edit_order_segment_console_AEM}         2
    sleep    2s
    Input information AEM       ${click_No.2_Offer of edit_order_segment_console_AEM}         1
    sleep    2s
AEM_Segment_11_Step10 Verify User Selection Information
    sleep    3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_11_Before.PNG
    sleep    3s
AEM_Segment_11_Step11 Click Done
    Click Element Wait AEM           ${btn_save&close_segment_console_AEM}
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Segment_11.PNG
    sleep  3s
AEM_Segment_11_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_11_Properties.PNG
    sleep  3s
AEM_Segment_11_Step13 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=P_Rec_Home%26Electronics&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_11_API.PNG
    sleep  3s

AEM_Segment_11_Roll Back
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/properties.html?item=/content/the1/personalization/segment-console/p_rec_health-wellness
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Click Element Wait AEM          ${Click_Remove_1_segment_console_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_segment_console_AEM}
    sleep  3s






AEM_Segment_12_Step04 Click Pic of Segment api "Name XXXXX" and Step05 Click Properties menu
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/personalization/segment-console/p_rec_home-electronics.html
    sleep  3s
AEM_Segment_12_Step07 Click tab user selection
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
AEM_Segment_12_Step07 Remove offer
    Click Element Wait AEM          ${Click_Remove_1_segment_console_AEM}
AEM_Segment_12_Step08 Verify User Selection Information
    sleep    3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_12_Before.PNG
    sleep    3s
AEM_Segment_12_Step09 Click Done
    Click Element Wait AEM           ${btn_save&close_segment_console_AEM}
    sleep    3s
AEM_Segment_12_Step10 Click Preview page
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Segment_12.PNG
    sleep  3s
AEM_Segment_12_Step11 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_12_Properties.PNG
    sleep  3s
AEM_Segment_12_Step12 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=P_Rec_Home%26Electronics&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_12_API.PNG
    sleep  3s

AEM_Segment_12_Roll Back
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/properties.html?item=%2Fcontent%2Fthe1%2Fpersonalization%2Fsegment-console%2Fp_rec_home-electronics
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  3s
    Input information AEM            ${edit_input_Nane_Segment_segment_console_AEM}         Reward_Home_Electronics1 Title EN
    sleep    3s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
    Input information AEM       ${click_No.2_Offer of edit_order_segment_console_AEM}         4
    sleep  2s
    Input information AEM       ${click_No.1_Offer of edit_order_segment_console_AEM}         2
    sleep    2s
    Input information AEM       ${click_No.3_Offer of edit_order_segment_console_AEM}         1
    sleep    3s
    Click Element Wait AEM           ${btn_save&close_segment_console_AEM}
    sleep    3s






AEM_Segment_13_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/segment-console
    sleep  3s
AEM_Segment_13_Step05 Select Segment API Page
    Click Element Wait AEM           ${card_segment_console_AEM}
    Click Element Wait AEM           ${btn_next_card_segment_console_AEM}
AEM_Segment_13_Step06 Input value in Basic tab
    Input information AEM     ${input_title_segment_console_AEM}     ${date_today}_Segment_Console_16_offers
    sleep  1s
AEM_Segment_13_Step07 Click tab user selection
    Click Element Wait AEM           ${tab_Segment Console_AEM}
    sleep  2s
AEM_Segment_13_Step08 Click slecte offer 16 offers
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.1_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.2_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.3_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.4_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.5_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.6_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.7_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.8_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.9_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.10_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.11_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.12_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.13_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.14_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.15_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
    Click Element Wait AEM      ${click_No.16_Offer 100_segment_console_AEM}
    Click Element Wait AEM           ${icon_select_segment_console_AEM}
    sleep  2s
AEM_Segment_13_Step09 Input Order offer 16 offers
    Input information AEM       ${input_Order_No.1 Offer 100_segment_console_AEM}       1
    sleep  2s
    Input information AEM       ${input_Order_No.2 Offer 100_segment_console_AEM}       2
    sleep  2s
    Input information AEM       ${input_Order_No.3 Offer 100_segment_console_AEM}       3
    sleep  2s
    Input information AEM       ${input_Order_No.4 Offer 100_segment_console_AEM}       4
    sleep  2s
    Input information AEM       ${input_Order_No.5 Offer 100_segment_console_AEM}       5
    sleep  2s
    Input information AEM       ${input_Order_No.6 Offer 100_segment_console_AEM}       6
    sleep  2s
    Input information AEM       ${input_Order_No.7 Offer 100_segment_console_AEM}       7
    sleep  2s
    Input information AEM       ${input_Order_No.8 Offer 100_segment_console_AEM}       8
    sleep  2s
    Input information AEM       ${input_Order_No.9 Offer 100_segment_console_AEM}       9
    sleep  2s
    Input information AEM       ${input_Order_No.10 Offer 100_segment_console_AEM}      10
    sleep  2s
    Input information AEM       ${input_Order_No.11 Offer 100_segment_console_AEM}      11
    sleep  2s
    Input information AEM       ${input_Order_No.12 Offer 100_segment_console_AEM}      12
    sleep  2s
    Input information AEM       ${input_Order_No.13 Offer 100_segment_console_AEM}      13
    sleep  2s
    Input information AEM       ${input_Order_No.14 Offer 100_segment_console_AEM}      14
    sleep  2s
    Input information AEM       ${input_Order_No.15 Offer 100_segment_console_AEM}      15
    sleep  2s
    Input information AEM       ${input_Order_No.16 Offer 100_segment_console_AEM}      16

    sleep  5s
AEM_Segment_13_Step10 Verify User Selection Information and Step11 Click Create
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    sleep  3s
AEM_Segment_13_Step10 Click Open and Step12 Click Preview page
    Click Element Wait AEM            ${btn_open_segment_console_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_13.PNG
    sleep  3s
AEM_Segment_13_Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM           ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Segment Console_AEM}
    sleep  5s
    Click Element Wait AEM           ${Oder_16_Segment Console_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Segment_13_Properties.PNG
    sleep  3s


AEM_Segment_14_Step04 Click Create > Click Page
    Go to                       https://uatcreator.the1.co.th/editor.html/content/the1/personalization/segment-console/${date_today}_segmentconsole99offers.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  2s
    Click Element Wait AEM           ${Btn_Open_Properties_AEM}
    sleep  2s
    Click Element Wait AEM           ${Tab Edit User Selection}
AEM_Segment_14_Step08 Input offer and order 100
    sleep  1s
    Input information AEM            ${edit_input_Nane_Segment_segment_console_AEM}         Reward_Home_Electronics1 Title EN
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Segment_14.PNG
    sleep  3s
