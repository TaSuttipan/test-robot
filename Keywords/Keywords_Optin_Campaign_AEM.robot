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
Resource    ../Variable/Variable_Optin_Campaign_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Optin_Campaign_AEM.robot
Resource    ../Keywords/Keywords.robot


*** Keywords ***

Check if Questionnaire Optin Campaign AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    sleep  3s
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    sleep  3s
    Click Element Wait AEM         ${icon_Canpaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    sleep  1s





#AEM_Optin_Campaign_01 Create Campaign Page 'Optin_Campaign_1' Type of Content Free text
AEM_Optin_Campaign_01 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_01 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign1
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign1
    Input information AEM     ${input_Campaign_Description_AEM}             ${date_today}_Optin_Campaign1
AEM_Optin_Campaign_01 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 1 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 1 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_01 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_01 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_01 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_AEM}     ไทย Free Text
    sleep  1s
AEM_Optin_Campaign_01 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_01 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_01 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_01.PNG
    sleep  3s
AEM_Optin_Campaign_01 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Optin_Campaign_02 Create Campaign Page 'Optin_Campaign_2' Type of Content image

AEM_Optin_Campaign_02 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_02 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign2
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign2
AEM_Optin_Campaign_02 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 2 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 2 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_02 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_02 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_02 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_order 2_Image_1_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-EN 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-TH 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s
AEM_Optin_Campaign_02 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_02 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_02 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_02.PNG
    sleep  3s
AEM_Optin_Campaign_02 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_02_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s





#AEM_Optin_Campaign_03 Create Campaign Page 'Optin_Campaign_3' Type of Content Link Out URL

AEM_Optin_Campaign_03 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_03 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign3
AEM_Optin_Campaign_03 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 3 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 3 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_03 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_03 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_03 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_1_Optin_Campaign_AEM}
    sleep  1s
    Select list AEM        ${select_order_Link Out URL_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_order 3_Link Out URL_1_Optin_Campaign_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Optin_Campaign_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Optin_Campaign_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Optin_Campaign_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Optin_Campaign_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Optin_Campaign_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Optin_Campaign_AEM}      ไทย Free Text
    sleep  1s
AEM_Optin_Campaign_03 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_03 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_03 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_03.PNG
    sleep  3s
AEM_Optin_Campaign_03 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_03_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_04 Create Campaign Page 'Optin_Campaign_4' Type of Content Button to Optin

AEM_Optin_Campaign_04 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_04 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign4
AEM_Optin_Campaign_04 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 4 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 4 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_04 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_04 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_04 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_1_Optin_Campaign_AEM}
    sleep  1s
    Input information AEM     ${input_Campaign ID_Optin_Campaign_AEM}         10053
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_AEM}
    sleep  10s
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_AEM}       ไทย Button Text
    sleep  3s
AEM_Optin_Campaign_04 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_04 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_04 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_04.PNG
    sleep  3s
AEM_Optin_Campaign_04 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_04_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s





#AEM_Optin_Campaign_05 Create Campaign Page 'Optin_Campaign_5' 4 Type of Content

AEM_Optin_Campaign_05 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_05 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign5
AEM_Optin_Campaign_05 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 5 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 5 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_05 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_05 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_05 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_05_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_05_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Input information AEM     ${input_Image-EN 1_Campaign_05_AEM}      /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Campaign_05_AEM}      /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Campaign_05_AEM}      /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Input information AEM     ${input_Image-TH 1_Campaign_05_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Campaign_05_AEM}      /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Campaign_05_AEM}      /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s

    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${select_order_Link Out URL_3_Campaign_05_AEM}
    Select list AEM        ${selected_order_3_Link Out URL_3_Campaign_05_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_05_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_05_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_05_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_05_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_05_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_05_AEM}       ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_05_AEM}
    Select list AEM        ${select_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${select_order_Button to Optin_4_Campaign_05_AEM}
    Select list AEM        ${selected_order_4_Button to Optin URL_4_Campaign_05_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_05_AEM}         10053
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_05_AEM}
    sleep  10s
    Select list AEM        ${select_Include Opt-in Button Optin_Campaign_05_AEM}
    Select list AEM        ${selected_NO_Include Opt-in Button Optin_Campaign_05_AEM}
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_05_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_05_AEM}       ไทย Button Text
    sleep  3s

AEM_Optin_Campaign_05 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_05 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_05 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_05.PNG
    sleep  3s
AEM_Optin_Campaign_05 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_05_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Optin_Campaign_06 AEM_Optin_Campaign_06 Create Campaign Page 'Optin_Campaign_6' 5 Type of Content

AEM_Optin_Campaign_06 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_06 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign6
AEM_Optin_Campaign_06 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 6 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 6 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_06 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_06 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_06 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_05_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_05_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Input information AEM     ${input_Image-EN 1_Campaign_05_AEM}      /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Campaign_05_AEM}      /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Campaign_05_AEM}      /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Input information AEM     ${input_Image-TH 1_Campaign_05_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Campaign_05_AEM}      /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Campaign_05_AEM}      /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s

    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${select_order_Link Out URL_3_Campaign_05_AEM}
    Select list AEM        ${selected_order_3_Link Out URL_3_Campaign_05_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_05_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_05_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_05_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_05_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_05_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_05_AEM}       ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_05_AEM}
    Select list AEM        ${select_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${select_order_Button to Optin_4_Campaign_05_AEM}
    Select list AEM        ${selected_order_4_Button to Optin URL_4_Campaign_05_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_05_AEM}         10053
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_05_AEM}
    sleep  10s
    Select list AEM        ${select_Include Opt-in Button Optin_Campaign_05_AEM}
    Select list AEM        ${selected_NO_Include Opt-in Button Optin_Campaign_05_AEM}
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_05_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_05_AEM}       ไทย Button Text
    sleep  3s


    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${select_order_Link Out URL_5_Campaign_06_AEM}
    Select list AEM        ${selected_order_5_Link Out URL_5_Campaign_06_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_06_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_06_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_06_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_06_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_06_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_06_AEM}       ไทย Free Text
    sleep  1s


    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_06_AEM}
    Select list AEM        ${select_order_Free Text_6_Campaign_06_AEM}
    Select list AEM        ${selected_order_6_Free Text_6_Campaign_06_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_06_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_06_AEM}     ไทย Free Text
    sleep  1s


    Click Element Wait AEM      ${btn_Add_6_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${selected_Image_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${select_order_Image_7_Campaign_06_AEM}
    Select list AEM        ${selected_order_7_Image_7_Campaign_06_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_06_AEM}
    Input information AEM      ${input_Image-EN 1_Campaign_06_AEM}      /content/dam/aem-images/test/en/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_06_AEM}
    Input information AEM      ${input_Image-TH 1_Campaign_06_AEM}     /content/dam/aem-images/test/th/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s


AEM_Optin_Campaign_06 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_06 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_06 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_06.PNG
    sleep  3s
AEM_Optin_Campaign_06 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_06_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_07 Create Campaign Page 'Optin_Campaign_7' 10 Type of Content

AEM_Optin_Campaign_07 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_07 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign7
AEM_Optin_Campaign_07 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 7 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 7 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_07 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_07 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_07 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_05_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_05_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Input information AEM     ${input_Image-EN 1_Campaign_05_AEM}      /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Campaign_05_AEM}      /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Campaign_05_AEM}      /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Input information AEM     ${input_Image-TH 1_Campaign_05_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Campaign_05_AEM}      /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Campaign_05_AEM}      /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s

    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${select_order_Link Out URL_3_Campaign_05_AEM}
    Select list AEM        ${selected_order_3_Link Out URL_3_Campaign_05_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_05_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_05_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_05_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_05_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_05_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_05_AEM}       ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_05_AEM}
    Select list AEM        ${select_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${select_order_Button to Optin_4_Campaign_05_AEM}
    Select list AEM        ${selected_order_4_Button to Optin URL_4_Campaign_05_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_05_AEM}         10053
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_05_AEM}
    sleep  10s
    Select list AEM        ${select_Include Opt-in Button Optin_Campaign_05_AEM}
    Select list AEM        ${selected_NO_Include Opt-in Button Optin_Campaign_05_AEM}
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_05_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_05_AEM}       ไทย Button Text
    sleep  3s

    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${select_order_Link Out URL_5_Campaign_06_AEM}
    Select list AEM        ${selected_order_5_Link Out URL_5_Campaign_06_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_06_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_06_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_06_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_06_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_06_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_06_AEM}       ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_06_AEM}
    Select list AEM        ${select_order_Free Text_6_Campaign_06_AEM}
    Select list AEM        ${selected_order_6_Free Text_6_Campaign_06_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_06_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_06_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_6_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${selected_Image_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${select_order_Image_7_Campaign_06_AEM}
    Select list AEM        ${selected_order_7_Image_7_Campaign_06_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_06_AEM}
    Input information AEM      ${input_Image-EN 1_Campaign_06_AEM}      /content/dam/aem-images/test/en/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_06_AEM}
    Input information AEM      ${input_Image-TH 1_Campaign_06_AEM}     /content/dam/aem-images/test/th/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s

    Click Element Wait AEM      ${btn_Add_7_Type of Content_Campaign_07_AEM}
    Select list AEM        ${select_Type of Content_8_Optin_Campaign_07_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_8_Optin_Campaign_07_AEM}
    Select list AEM        ${select_order_Button to Optin_8_Campaign_07_AEM}
    Select list AEM        ${selected_order_8_Button to Optin URL_8_Campaign_07_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_07_AEM}         10065
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_07_AEM}
    sleep  10s
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_07_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_07_AEM}       ไทย Button Text
    sleep  3s

    Click Element Wait AEM      ${btn_Add_8_Type of Content_Campaign_07_AEM}
    Select list AEM        ${select_order_Free Text_9_Campaign_07_AEM}
    Select list AEM        ${selected_order_9_Free Text_6_Campaign_07_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_07_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_07_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_9_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_10_Campaign_07_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_10_Campaign_07_AEM}
    Select list AEM        ${select_order_Link Out URL_10_Campaign_07_AEM}
    Select list AEM        ${selected_order_10_Link Out URL_10_Campaign_07_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_07_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_07_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_07_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_07_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_07_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_07_AEM}       ไทย Free Text
    sleep  1s

AEM_Optin_Campaign_07 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_07 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_07 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_07.PNG
    sleep  3s
AEM_Optin_Campaign_07 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']


#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_07.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Optin_Campaign_08 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
AEM_Optin_Campaign_08 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_08 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign8
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign8
AEM_Optin_Campaign_08 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 8 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 8 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_08 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_08 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_08 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_order 10_Image_1_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Max allowed items is 5_Campaign_Fail_AEM}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_08.PNG
    sleep  3s





#AEM_Optin_Campaign_09 Create Campaign Page 'Optin_Campaign_9' 11 Type of Content
AEM_Optin_Campaign_09 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_09 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign9
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign9
AEM_Optin_Campaign_09 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 9 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 9 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_09 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_09 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_09 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
AEM_Optin_Campaign_09_Create Campaign Page add Type of Contend 10 Blocks
    sleep  5s
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 10}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_09.PNG
    sleep  3s






#AEM_Optin_Campaign_10 Create Campaign Page 'Optin_Campaign_10' Repeat order number
AEM_Optin_Campaign_10 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_10 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign10
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign10
AEM_Optin_Campaign_10 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 10 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 10 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_10 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_10 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_10 Create Campaign Page 'Optin_Campaign_8' Type of Content image add 6 image
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
AEM_Optin_Campaign_10_Create Campaign Page add Type of Contend 10 Blocks
    sleep  5s
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_10_Create Repeat order number
    Click Element Wait AEM           ${Order value exists. Modify value_Campaign_Fail_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_10.PNG
    sleep  3s

#AEM_Optin_Campaign_11 Edit Campaign Page change remove and move image 'Optin_Campaign_2' Type of Content image
AEM_Optin_Campaign_11_Edit Campaign Page change remove and move image
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Optin_Campaign2.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${Btn_add_image_EN_Optin_Campaign_AEM}
    sleep  1s
    Input information AEM            ${input_Image-EN 4_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text                ${input_Image-EN 1_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-EN 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text                ${input_Image-EN 2_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-EN 3_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-EN 2_Optin_Campaign_AEM}
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-TH 3_Optin_Campaign_AEM}
    sleep    1s
    Clear Element Text          ${input_Image-TH 1_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-TH 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text          ${input_Image-TH 2_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-TH 2_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
AEM_Optin_Campaign_11 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_11 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  3s
AEM_Optin_Campaign_11 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_11.PNG
    sleep  3s
AEM_Optin_Campaign_11 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_11_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Optin_Campaign_11_add image Max allowed items is 5
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 5}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_11_2.PNG
    sleep  3s


#AEM_Optin_Campaign_12 Edit Campaign information 4 Type of Content'Optin_Campaign_5'
AEM_Optin_Campaign_12_Edit Campaign information 4 Type of Content
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_optincampaign5.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Clear Element Text Wait AEM          ${input_Header Title EN_Campaign_12_AEM}
    Input information AEM        ${input_Header Title EN_Campaign_12_AEM}                    The 1 Lucky Draw
    Clear Element Text Wait AEM          ${input_Header Title TH_Campaign_12_AEM}
    Input information AEM        ${input_Header Title TH_Campaign_12_AEM}                    จับรางวัลกับ The 1
    Clear Element Text Wait AEM          ${input_Feature Image - EN_Campaign_12_AEM}
    sleep  1s
    Input information AEM        ${input_Feature Image - EN_Campaign_12_AEM}                    /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
    Clear Element Text Wait AEM      ${input_Feature Image - TH_Campaign_12_AEM}
    Input information AEM        ${input_Feature Image - TH_Campaign_12_AEM}                    /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text Wait AEM      ${input_Page Start Date_Campaign_12_AEM}
    Input information AEM      ${input_Page Start Date_Campaign_12_AEM}                    October 05, 2020
    Clear Element Text Wait AEM      ${input_Page End Date_Campaign_12_AEM}
    Input information AEM     ${input_Page End Date_Campaign_12_AEM}                     October 30, 2020
    sleep  5s

    Clear Element Text Wait AEM      ${input_Free Text - EN_Campaign_12_AEM}
    Input information AEM     ${input_Free Text - EN_Campaign_12_AEM}      ${Free Text - EN_Campaign_12_AEM}
    Clear Element Text Wait AEM      ${input_Free Text - TH_Campaign_12_AEM}
    Input information AEM     ${input_Free Text - TH_Campaign_12_AEM}      ${Free Text - TH_Campaign_12_AEM}
    sleep  3s


    Select list AEM        ${select_order_Image_2_Campaign_12_AEM}
    Select list AEM        ${selected_order_3_Image_2_Campaign_12_AEM}
    Clear Element Text Wait AEM      ${input_Image-EN 1_Campaign_12_AEM}
    Input information AEM       ${input_Image-EN 1_Campaign_12_AEM}     /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text Wait AEM      ${input_Image-TH 1_Campaign_12_AEM}
    Input information AEM       ${input_Image-TH 1_Campaign_12_AEM}     /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-EN 3_Campaign_12_AEM}
    Click Element Wait AEM           ${Delete_Image-EN 2_Campaign_12_AEM}
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-TH 3_Campaign_12_AEM}
    Click Element Wait AEM           ${Delete_Image-TH 2_Campaign_12_AEM}
    sleep    1s


    Select list AEM        ${select_order_Link Out URL_3_Campaign_12_AEM}
    Select list AEM        ${selected_order_2_Link Out URL_3_Campaign_12_AEM}
    sleep  1s
    Clear Element Text Wait AEM      ${input_Header - EN_URL_Campaign_12_AEM}
    Input information AEM     ${input_Header - EN_URL_Campaign_12_AEM}         How to Enter
    Clear Element Text Wait AEM      ${input_Header - TH_URL_Campaign_12_AEM}
    Input information AEM     ${input_Header - TH_URL_Campaign_12_AEM}         วิธีการเข้า
    Clear Element Text Wait AEM      ${input_URL - EN_URL_Campaign_12_AEM}
    Input information AEM     ${input_URL - EN_URL_Campaign_12_AEM}            https://www.the1.co.th/en/privacy
    Clear Element Text Wait AEM      ${input_URL - TH_URL_Campaign_12_AEM}
    Input information AEM     ${input_URL - TH_URL_Campaign_12_AEM}            https://www.the1.co.th/privacy
    Clear Element Text Wait AEM      ${input_Free Text - EN_URL_Campaign_12_AEM}
    Input information AEM     ${input_Free Text - EN_URL_Campaign_12_AEM}      ${Free Text - EN_URL_Campaign_12_AEM}
    Clear Element Text Wait AEM      ${input_Free Text - TH_URL_Campaign_12_AEM}
    Input information AEM     ${input_Free Text - TH_URL_Campaign_12_AEM}       ${Free Text - TH_URL_Campaign_12_AEM}
    sleep  1s


    Clear Element Text Wait AEM        ${input_Campaign ID_Optin_Campaign_12_AEM}
    Input information AEM       ${input_Campaign ID_Optin_Campaign_12_AEM}         10065
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_12_AEM}
    sleep  10s
    Select list AEM        ${select_Include Opt-in Button Optin_Campaign_12_AEM}
    Select list AEM        ${selected_YES_Include Opt-in Button Optin_Campaign_12_AEM}
    Clear Element Text Wait AEM       ${input_Opt-in Button Text - EN_Optin_Campaign_12_AEM}
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_12_AEM}       Join now
    Clear Element Text Wait AEM       ${input_Opt-in Button Text - TH_Optin_Campaign_12_AEM}
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_12_AEM}       เข้าร่วมตอนนี้

    sleep  3s
AEM_Optin_Campaign_12 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_12 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_12 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish2 button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_12.PNG
    sleep  3s
AEM_Optin_Campaign_12 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_12_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s


#AEM_Optin_Campaign_13 "Edit Campaign Page add Type of Content 'Optin_Campaign_3' Type of Content Link Out URL"
AEM_Optin_Campaign_13_Edit Campaign Page add Type of Content
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_optincampaign3.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_R1_Optin_Campaign_AEM}
    sleep  1s
    Input information AEM     ${input_Free Text - EN_2_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_2_Optin_Campaign_AEM}     ไทย Free Text
    sleep  3s
AEM_Optin_Campaign_13 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_13 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_13 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  3s
    Reload Page
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_13.PNG
    sleep  5s
AEM_Optin_Campaign_13 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_13_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_14 Edit Campaign Page Remove Type of Content 'Optin_Campaign_6'
AEM_Optin_Campaign_14_Edit Campaign Remove 1 Type of Content
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_optincampaign6.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Click Element Wait AEM         ${Btn_Remove_Type of Content_7_Campaign_14_AEM}
    sleep  3s
AEM_Optin_Campaign_14 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_14 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_14 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish2 button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_14.PNG
    sleep  3s
AEM_Optin_Campaign_14 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_14_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_15 Edit Campaign Page Remove 9 Type of Content 'Optin_Campaign_7'

AEM_Optin_Campaign_15 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_15 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign15
AEM_Optin_Campaign_15 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 15 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 15 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_15 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_15 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_15 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_05_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_05_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_05_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_05_AEM}
    Input information AEM     ${input_Image-EN 1_Campaign_05_AEM}      /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Campaign_05_AEM}      /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Campaign_05_AEM}      /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_05_AEM}
    Input information AEM     ${input_Image-TH 1_Campaign_05_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Campaign_05_AEM}      /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Campaign_05_AEM}      /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s

    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_05_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_3_Campaign_05_AEM}
    Select list AEM        ${select_order_Link Out URL_3_Campaign_05_AEM}
    Select list AEM        ${selected_order_3_Link Out URL_3_Campaign_05_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_05_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_05_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_05_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_05_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_05_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_05_AEM}       ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_05_AEM}
    Select list AEM        ${select_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_4_Optin_Campaign_05_AEM}
    Select list AEM        ${select_order_Button to Optin_4_Campaign_05_AEM}
    Select list AEM        ${selected_order_4_Button to Optin URL_4_Campaign_05_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_05_AEM}         10053
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_05_AEM}
    sleep  10s
    Select list AEM        ${select_Include Opt-in Button Optin_Campaign_05_AEM}
    Select list AEM        ${selected_NO_Include Opt-in Button Optin_Campaign_05_AEM}
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_05_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_05_AEM}       ไทย Button Text
    sleep  3s


    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_5_Campaign_06_AEM}
    Select list AEM        ${select_order_Link Out URL_5_Campaign_06_AEM}
    Select list AEM        ${selected_order_5_Link Out URL_5_Campaign_06_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_06_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_06_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_06_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_06_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_06_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_06_AEM}       ไทย Free Text
    sleep  1s


    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_06_AEM}
    Select list AEM        ${select_order_Free Text_6_Campaign_06_AEM}
    Select list AEM        ${selected_order_6_Free Text_6_Campaign_06_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_06_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_06_AEM}     ไทย Free Text
    sleep  1s


    Click Element Wait AEM      ${btn_Add_6_Type of Content_Campaign_06_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${selected_Image_Type of Content_7_Campaign_06_AEM}
    Select list AEM        ${select_order_Image_7_Campaign_06_AEM}
    Select list AEM        ${selected_order_7_Image_7_Campaign_06_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_06_AEM}
    Input information AEM      ${input_Image-EN 1_Campaign_06_AEM}      /content/dam/aem-images/test/en/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_06_AEM}
    Input information AEM      ${input_Image-TH 1_Campaign_06_AEM}     /content/dam/aem-images/test/th/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s

    Click Element Wait AEM      ${btn_Add_7_Type of Content_Campaign_07_AEM}
    Select list AEM        ${select_Type of Content_8_Optin_Campaign_07_AEM}
    Select list AEM        ${selected_Button to Optin_Type of Content_8_Optin_Campaign_07_AEM}
    Select list AEM        ${select_order_Button to Optin_8_Campaign_07_AEM}
    Select list AEM        ${selected_order_8_Button to Optin URL_8_Campaign_07_AEM}
    sleep  1s
    Input information AEM       ${input_Campaign ID_Optin_Campaign_07_AEM}         10065
    Click Element Wait AEM      ${btn_Retrieve Campaign Details_Optin_Campaign_07_AEM}
    sleep  10s
    Input information AEM     ${input_Opt-in Button Text - EN_Optin_Campaign_07_AEM}       English Button Text
    Input information AEM     ${input_Opt-in Button Text - TH_Optin_Campaign_07_AEM}       ไทย Button Text
    sleep  3s

    Click Element Wait AEM      ${btn_Add_8_Type of Content_Campaign_07_AEM}
    Select list AEM        ${select_order_Free Text_9_Campaign_07_AEM}
    Select list AEM        ${selected_order_9_Free Text_6_Campaign_07_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Optin_Campaign_07_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Optin_Campaign_07_AEM}     ไทย Free Text
    sleep  1s

    Click Element Wait AEM      ${btn_Add_9_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_10_Campaign_07_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_10_Campaign_07_AEM}
    Select list AEM        ${select_order_Link Out URL_10_Campaign_07_AEM}
    Select list AEM        ${selected_order_10_Link Out URL_10_Campaign_07_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_07_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_07_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_07_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_07_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_07_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_07_AEM}       ไทย Free Text
    sleep  1s

AEM_Optin_Campaign_15 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_15 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_15 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_15 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s

AEM_Optin_Campaign_15_Edit Campaign Remove 9 Type of Content
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    Click Element Wait AEM         ${Btn_Remove_Type of Content_2_Campaign_15_AEM}
    sleep  3s
AEM_Optin_Campaign_15_Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_15_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_15_Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish2 button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_15.PNG
    sleep  3s
AEM_Optin_Campaign_15_Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_15_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_16 Edit Campaign Page Change Campaign ID 'Optin_Campaign_1' Type of Content Button to Optin
AEM_Optin_Campaign_16_Edit Type of Campaign
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Optin_Campaign1.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Capture Element Screenshot      ${Can't Change Camapaign Type}   AEM_Optin_Campaign_16.PNG
    sleep  3s





#AEM_Optin_Campaign_17 Edit Unpublish Campaign Page Change Campaign type 'Optin_Campaign_1'
AEM_Optin_Campaign_17 Edit Step06 Click Page Information > Unpublish Page on Campaign page
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Optin_Campaign1.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  1s
    Click Element Wait AEM           ${select_Type of Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM           ${selected_Type Seasonal Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_17_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Campaign_17_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Campaign_17_AEM}     ไทย Free Text
    sleep  3s
AEM_Optin_Campaign_17 Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_17 Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_17 Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  3s
    Reload Page
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_17.PNG
    sleep  5s
AEM_Optin_Campaign_17 Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  2s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_17_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s







#AEM_Optin_Campaign_18 Edit Campaign Page Remove all Type of Content 'Optin_Campaign_18'

AEM_Optin_Campaign_18 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Optin_Campaign_18 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Optin_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Optin_Campaign18
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Optin_Campaign2
AEM_Optin_Campaign_18 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 18 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 18 TH
    Input information AEM     ${input_Feature Image - EN_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Feature Image - TH_AEM}                    /content/dam/aem-images/Adobe_standard_logo_RGB.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Page Start Date_AEM}                    ${Campain_Start Date_AEM}
    Input information AEM     ${input_Page End Date_AEM}                      ${Campain_End Date_AEM}
    sleep  3s
AEM_Optin_Campaign_18 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Optin_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_18 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_18 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_order 2_Image_1_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-EN 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Optin_Campaign_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Optin_Campaign_AEM}
    Input information AEM     ${input_Image-TH 1_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Optin_Campaign_AEM}     /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s
AEM_Optin_Campaign_18 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_18 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_18 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Optin_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Optin_Campaign_AEM}
    sleep  3s
AEM_Optin_Campaign_18 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s

AEM_Optin_Campaign_18_Edit Campaign Page change remove and move image
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep    1s
    Clear Element Text Wait AEM      ${input_Page Start Date_Campaign_12_AEM}
    Input information AEM      ${input_Page Start Date_Campaign_12_AEM}                    ${Campain_End Date_AEM}
    Clear Element Text Wait AEM      ${input_Page End Date_Campaign_12_AEM}
    Input information AEM     ${input_Page End Date_Campaign_12_AEM}                     ${Campain_Start Date_AEM}
    sleep  5s
    Click Element Wait AEM           ${btn_Delete_1_Type of Content_Campaign_18_AEM}

AEM_Optin_Campaign_18_Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Optin_Campaign_AEM}
    sleep  5s
AEM_Optin_Campaign_18_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
AEM_Optin_Campaign_18_Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Optin_Campaign_AEM}
    sleep  3s
    Reload Page
    sleep  5s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_18.PNG
    sleep  5s
AEM_Optin_Campaign_18_Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Optin_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Optin_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Optin_Campaign_API}      ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Optin_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_18_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Optin_Campaign_19 Edit Campaign Page add Repeat order number 'Optin_Campaign_1' Type of Content image
AEM_Optin_Campaign_19_Edit Repeat order number
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Optin_Campaign1.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Order value exists. Modify value}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_19.PNG





#AEM_Optin_Campaign_20_Edit Campaign Page add Type of Contend 10 Blocks
AEM_Optin_Campaign_20_Edit Campaign Page add Type of Contend 10 Blocks
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Optin_Campaign1.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Optin_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Optin_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Optin_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Optin_Campaign_AEM}
    Select list AEM        ${selected_Type Opt-in Campaign_Optin_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Optin_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Optin_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Optin_Campaign_AEM}
    Select list AEM        ${selected_order 2_Image_1_Optin_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Optin_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 10}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Optin_Campaign_20.PNG
    sleep  1s












