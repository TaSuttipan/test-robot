*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Personalization_AEM.robot
Resource    ../Keywords/Keywords.robot
Suite Teardown     Close Browser

*** Test Cases ***

Get Date and DateTime
    ${date_today}    Get Current Date
    ${date_today}   Convert Date       ${date_today}       result_format=%Y%m%d
    Set Global Variable    ${date_today}
#date of Issuance Period_Start Date_AEM}
    ${date of Issuance Period_Start Date_AEM}    Get Current Date
    ${date of Issuance Period_Start Date_AEM}       Convert Date    ${date of Issuance Period_Start Date_AEM}    result_format=%d-%m-%Y %H:%M
    Set Global Variable     ${date of Issuance Period_Start Date_AEM}
#date of Issuance Period_End Date_AEM
    ${date of Issuance Period_End Date_AEM}    DateTime.Add Time To Date    ${date of Issuance Period_Start Date_AEM}    1 days    date_format=%d-%m-%Y %H:%M    result_format=%d-%m-%Y %H:%M
    Set Global Variable    ${date of Issuance Period_End Date_AEM}

#date of Issuance Period_Start Date_offer_SMP
    ${date of Issuance Period_Start Date_offer_SMP}    Get Current Date  UTC
    ${date of Issuance Period_Start Date_offer_SMP}    Convert Date     ${date of Issuance Period_Start Date_offer_SMP}      result_format=%m/%d/%Y
    Set Global Variable    ${date of Issuance Period_Start Date_offer_SMP}
#date of Issuance Period_End Date_offer_SMP
    ${date of Issuance Period_End Date_offer_SMP}   DateTime.Add Time To Date     ${date of Issuance Period_Start Date_offer_SMP}      1 days    date_format=%m/%d/%Y       result_format=%m/%d/%Y
    Set Global Variable    ${date of Issuance Period_End Date_offer_SMP}



Login_AEM_Step01 Login AEM with test-approver account
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Go To           ${url_AEM}
    Click Element AEM          ${btn_sign_in_locally_AEM}
    Input Username and Password    ${input_user_AEM}      ${input_pass_AEM}      ${username_AEM}      ${password_AEM}
    Click Element AEM          ${btn_sign_in_AEM}
    sleep  5s
Check if Questionnaire1
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
Login_AEM_Step02 Click The1 Central
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  1s
Check if Questionnaire2
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
Login_AEM_Step03 Click Personalization and Step04 Click Category Tags Console
    Click Element Wait AEM         ${icon_Personalization_AEM}
    sleep  1s
    Click Element Wait AEM         ${icon_Category Tags Console_AEM}
    sleep  1s
Check if Questionnaire3
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
Login_AEM_Step05 and Offer_AEM_Step06 Click Folder Regression AEM Offer
    Click Element Wait AEM       ${folder_Category Tags Console_AEM}
    sleep  1s


AEM_Category_Tags_01_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/category-tag
    sleep  2s
AEM_Category_Tags_01_Step05 Select Category Tag API page
    Click Element Wait AEM           ${card_category_tag_AEM}
    Click Element Wait AEM           ${btn_next_card_category_tag_AEM}
AEM_Category_Tags_01_Step06 Input value in Basic tab
    Input information AEM       ${input_title_category_tag_AEM}     ${date_today}_CategoryTag
    sleep  1s
#    Click Element Wait AEM           ${tab_Category Tag_AEM}
#    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Fashion
#    sleep  3s
#    ${input_Nane_Category_Tag}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${Click_Fashion category_tag__AEM}
#    Run Keyword if     '${input_Nane_Category_Tag}'=='True'     Click_Fashion category_tag
AEM_Category_Tags_01_Step07 Click Create
    sleep  3s
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    Click Element Wait AEM            ${btn_open_category_tag_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_01.PNG
    sleep  3s
AEM_Category_Tags_01_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_01_Properties.PNG
    sleep  1s
AEM_Category_Tags_01_Step08 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=4&segment=${date_today}_CategoryTag&segmentNum=12&partnerNum=0
    Capture Page Screenshot          AEM_Category_Tags_01_API.PNG
    sleep  3s



AEM_Category_Tags_02_Step04 Click Edit
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/personalization/category-tag/eat-around.html
    sleep  2s
AEM_Category_Tags_02_Step05 Click Edit Tag
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Double Click Element AEM         ${Click_Remove_category_tag_AEM}
    sleep  3s
    Input information AEM       ${edit_input_Nane_Category_Tag_category_tag_AEM}       TEST TAGS
    sleep  2s
    Click Element                ${Click Tag Test}
AEM_Category_Tags_02_Step06 Save&close
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_02.PNG
    sleep  3s
AEM_Category_Tags_02_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Wait Until Page Contains Element     ${Tag_TEST TAGS_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_02_Properties.PNG
    sleep  3s
AEM_Category_Tags_02_Step07 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=P_Rec_EatAround&segmentNum=16&partnerNum=0
    sleep  3s
   Capture Page Screenshot          AEM_Category_Tags_02_API.PNG
    sleep  3s
AEM_Category_Tags_02_Roll Back
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/properties.html?item=%2Fcontent%2Fthe1%2Fpersonalization%2Fcategory-tag%2Feat-around
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Double Click Element AEM         ${Click_Remove_category_tag_AEM}
    sleep  3s
    Input information AEM       ${edit_input_Nane_Category_Tag_category_tag_AEM}       Restaurant & Cafe
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_Category tag_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s





AEM_Category_Tags_03_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/category-tag
    sleep  2s
AEM_Category_Tags_03_Step05 Select Category Tag API page
    Click Element Wait AEM           ${card_category_tag_AEM}
    Click Element Wait AEM           ${btn_next_card_category_tag_AEM}
AEM_Category_Tags_03_Step06 Input value in Basic tab
    Input information AEM       ${input_title_category_tag_AEM}     ${date_today}_CategoryTag_Test_No_match
    sleep  1s
    Click Element Wait AEM           ${tab_Category Tag_AEM}
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      asdasdasdasd
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_03_No_match.PNG
    sleep  3s
AEM_Category_Tags_03_Step07 Click Create
    sleep  3s
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    Click Element Wait AEM            ${btn_open_category_tag_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_03.PNG
    sleep  3s
AEM_Category_Tags_03_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_03_Properties.PNG
AEM_Category_Tags_03_Step08 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=4&segment=${date_today}_CategoryTag_Test_No_match&segmentNum=12&partnerNum=0
    Capture Page Screenshot          AEM_Category_Tags_03_API.PNG
    sleep  3s




AEM_Category_Tags_04_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/category-tag
    sleep  2s
AEM_Category_Tags_04_Step05 Select Category Tag API page
    Click Element Wait AEM           ${card_category_tag_AEM}
    Click Element Wait AEM           ${btn_next_card_category_tag_AEM}
AEM_Category_Tags_04_Step06 Input value in Basic tab
    sleep  3s
    Input information AEM     ${input_title_category_tag_AEM}      Eat Around
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
AEM_Category_Tags_04_Step07 Click Create
    sleep  5s
    Capture Page Screenshot          AEM_Category_Tags_04.PNG
    sleep  3s



AEM_Category_Tags_05_Step04 Click Edit
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/personalization/category-tag/charities.html
    sleep  2s
AEM_Category_Tags_05_Step05 Click Edit Tag
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Input information AEM       ${edit_input_Nane_Category_Tag_category_tag_AEM}       financial
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_Category tag_AEM}
    sleep  1s
AEM_Category_Tags_05_Step06 Save&close
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_05.PNG
    sleep  3s
AEM_Category_Tags_05_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_05_Properties.PNG
    sleep  3s
AEM_Category_Tags_05_Step07 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=P_Rec_Charities&segmentNum=16&partnerNum=0
    sleep  3s
   Capture Page Screenshot          AEM_Category_Tags_05_API.PNG
    sleep  3s
AEM_Category_Tags_05_Roll Back
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/properties.html?item=/content/the1/personalization/category-tag/charities
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Double Click Element AEM         ${Click_Remove_category_tag_2_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s




AEM_Category_Tags_06_Step04 Click Edit
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/personalization/category-tag/grocery.html
    sleep  3s
AEM_Category_Tags_06_Step05 Click Edit Tag
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Double Click Element AEM         ${Click_Remove_category_tag_2_AEM}
    sleep  3s
AEM_Category_Tags_06_Step06 Save&close
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_06.PNG
    sleep  3s
AEM_Category_Tags_06_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_06_Properties.PNG
    sleep  3s
AEM_Category_Tags_06_Step07 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=4&segment=P_Rec_Grocery&segmentNum=12&partnerNum=0
    sleep  3s
   Capture Page Screenshot          AEM_Category_Tags_06_API.PNG
    sleep  3s
AEM_Category_Tags_06_Roll Back
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/properties.html?item=%2Fcontent%2Fthe1%2Fpersonalization%2Fcategory-tag%2Fgrocery
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Input information AEM       ${edit_input_Nane_Category_Tag_category_tag_AEM}       Food Grocery
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_Category tag_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_save&close_category_tag_AEM}
    sleep  3s



AEM_Category_Tags_07_Step04 Click Edit
    Go To           https://uatcreator.the1.co.th/libs/cq/tagging/gui/content/tags/tagedit.html/content/cq:tags/the1/offer/category/restaurant-&-cafe
    sleep  3s
AEM_Category_Tags_07_Step05 Click Edit Tag
    Clear Element Text                    ${input_Title_tag_AEM}
    Input information AEM         ${input_Title_tag_AEM}          Restaurant & Cafe Edit
AEM_Category_Tags_07_Step06 Submit
    sleep  3s
    Click Element Wait AEM           ${btn_Submit_tag_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_OK_tag_AEM}
    sleep  3s
AEM_Category_Tags_07_Step07 Validate Category Tag on Properties
    Go To          https://uatcreator.the1.co.th/editor.html/content/the1/personalization/category-tag/eat-around.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot        AEM_Category_Tags_07_Properties.PNG
    sleep  3s
AEM_Category_Tags_07_Step07 Check API Personalization
    Go To           https://uatlibrary.the1.co.th/the1/personalized/offers/recommended.recommendedOffers.json?t1xNum=0&segment=P_Rec_EatAround&segmentNum=16&partnerNum=0
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_07_API.PNG
    sleep  3s
AEM_Category_Tags_07_Roll Back
    Go To           https://uatcreator.the1.co.th/libs/cq/tagging/gui/content/tags/tagedit.html/content/cq:tags/the1/offer/category/restaurant-&-cafe
    sleep  3s
    Clear Element Text                    ${input_Title_tag_AEM}
    Input information AEM         ${input_Title_tag_AEM}          Restaurant & Cafe
    sleep  3s
    Click Element Wait AEM           ${btn_Submit_tag_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_OK_tag_AEM}
    sleep  3s


AEM_Category_Tags_08_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/category-tag
    sleep  2s
AEM_Category_Tags_08_Step05 Select Category Tag API page
    Click Element Wait AEM           ${card_category_tag_AEM}
    Click Element Wait AEM           ${btn_next_card_category_tag_AEM}
    sleep  1s
AEM_Category_Tags_08_Step06 Input value in Basic tab
    Input information AEM     ${input_title_category_tag_AEM}     ${date_today} Category 8 Tag
    sleep  3s
    Click Element Wait AEM           ${tab_Category Tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Restaurant & Cafe
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Financial
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Home Non-Electronics
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Beauty Service
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Airline
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Book & Stationery
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Sports & Sports Fashion
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Utilities & Services
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
AEM_Category_Tags_08_Step07 Click Create
    sleep  3s
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    Click Element Wait AEM            ${btn_open_category_tag_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_08.PNG
    sleep  3s
AEM_Category_Tags_08_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_08_Properties.PNG





AEM_Category_Tags_09_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/personalization/category-tag
    sleep  2s
AEM_Category_Tags_09_Step05 Select Category Tag API page
    Click Element Wait AEM           ${card_category_tag_AEM}
    Click Element Wait AEM           ${btn_next_card_category_tag_AEM}
    sleep  1s
AEM_Category_Tags_09_Step06 Input value in Basic tab
    Input information AEM     ${input_title_category_tag_AEM}     ${date_today}_CategoryTag Delete All
    sleep  3s
    Click Element Wait AEM           ${tab_Category Tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Restaurant & Cafe
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Financial
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Home Non-Electronics
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Beauty Service
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Airline
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Book & Stationery
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Sports & Sports Fashion
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
    Input information AEM       ${input_Nane_Category_Tag_category_tag_AEM}      Utilities & Services
    sleep  3s
    Click Element Wait AEM     ${Click_Tag_1_Category tag_AEM}
    sleep  1s
AEM_Category_Tags_09_Step07 Click Create
    sleep  3s
    Click Element Wait AEM                      ${btn_create_category_tag_AEM}
    ${btn_Close}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_close_category_tag_AEM}
    Run Keyword if     '${btn_Close}'=='True'     btn_close
    Click Element Wait AEM            ${btn_open_category_tag_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_Created_08.PNG
    sleep  3s
AEM_Category_Tags_09_Step07 Validate Category Tag on Properties
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_09_Created_Properties.PNG
AEM_Category_Tags_09_Step08 Deleate all Category Tag
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
    Double Click Element AEM           ${Click_Remove_category_tag_AEM}
    sleep  3s
AEM_Category_Tags_09_Step09 Validate Category Tag Deleted
    sleep  3s
    Click Element Wait AEM            ${btn_save&close_category_tag_AEM}
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_Category Tag_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_Category_Tags_09.PNG