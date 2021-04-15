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
Resource    ../Variable/Variable_Seasonal_Campaign_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords_Seasonal_Campaign_AEM.robot
Resource    ../Keywords/Keywords.robot

*** Keywords ***

Check if Questionnaire Seasonal Campaign AEM
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
    sleep  3s


#AEM_Seasonal_Campaign_01 Create Campaign Page 'RE_Seasonal_Campaign_1' Type of Content Free text
AEM_Seasonal_Campaign_01 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_01 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_1
    Input information AEM     ${input_Campaign_Name_AEM}                    ${date_today}_Seasonal_Campaign_1
    Input information AEM     ${input_Campaign_Description_AEM}             ${date_today}_Seasonal_Campaign_1
AEM_Seasonal_Campaign_01 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_01 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_01 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_01 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_01 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_01 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_01 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_01.PNG
    sleep  3s
AEM_Seasonal_Campaign_01 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_02 Create Campaign Page 'RE_Seasonal_Campaign_2' Type of Content Image
AEM_Seasonal_Campaign_02 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_02 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_2
    sleep    2s
AEM_Seasonal_Campaign_02 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_02 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_02 Step09 Click Pic New Campaign and Click Propeties
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_02 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_order 2_Image_1_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-EN 1_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 2_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-EN 3_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-TH 1_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 2_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM     ${input_Image-TH 3_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  1s
AEM_Seasonal_Campaign_02 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_02 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_02 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_02_API.PNG
    sleep  1s
AEM_Seasonal_Campaign_02 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_02.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_03 Create Campaign Page 'RE_Seasonal_Campaign_3' Type of Content Reward Store

AEM_Seasonal_Campaign_03 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_03 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_3
AEM_Seasonal_Campaign_03 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_03 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_03 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_03 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Seasonal_Campaign_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Seasonal_Campaign_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Seasonal_Campaign_AEM}                     /content/the1/rewards/category/category_1
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
AEM_Seasonal_Campaign_03 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_03 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_03 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_03_API.PNG
    sleep  3s
AEM_Seasonal_Campaign_03 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_03_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s





#AEM_Seasonal_Campaign_04
AEM_Seasonal_Campaign_04 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_04 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_4
AEM_Seasonal_Campaign_04 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_04 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_04 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_04 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Badge_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${select_order_Badge_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_order 5_Badge_1_Seasonal_Campaign_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Seasonal_Campaign_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Seasonal_Campaign_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
AEM_Seasonal_Campaign_04 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_04 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_04 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_04.PNG
    sleep  3s
AEM_Seasonal_Campaign_04 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_04_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Seasonal_Campaign_05 Create Campaign Page 'RE_Seasonal_Campaign_5' Type of Content Article

AEM_Seasonal_Campaign_05 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_05 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_5
AEM_Seasonal_Campaign_05 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_05 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_05 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_05 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Article_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Seasonal_Campaign_AEM}                    English Article Title
    Input information AEM       ${input_Article Title - TH_Seasonal_Campaign_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Seasonal_Campaign_AEM}                      ${Article_TH_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Seasonal_Campaign_AEM}                      ${Article_TH_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Seasonal_Campaign_AEM}                      ${Article_TH_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Seasonal_Campaign_AEM}                      ${Article_TH_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
AEM_Seasonal_Campaign_05 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_05 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_05 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_05.PNG
    sleep  3s
AEM_Seasonal_Campaign_05 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_05_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_06 Create Campaign Page 'RE_Seasonal_Campaign_6' Type of Content Link out URL

AEM_Seasonal_Campaign_06 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_06 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_6
AEM_Seasonal_Campaign_06 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_06 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_06 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_06 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Seasonal_Campaign_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Seasonal_Campaign_AEM}        ไทย Header
    Input information AEM     ${input_URL - EN_URL_Seasonal_Campaign_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Seasonal_Campaign_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Seasonal_Campaign_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Seasonal_Campaign_AEM}      ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_06 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_06 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_06 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_06.PNG
    sleep  3s
AEM_Seasonal_Campaign_06 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_06_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s


#AEM_Seasonal_Campaign_07 Create Campaign Page 'RE_Seasonal_Campaign7' 3 Type of Content

AEM_Seasonal_Campaign_07 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_07 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                   ${date_today}_Seasonal_Campaign_7
AEM_Seasonal_Campaign_07 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_07 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_07 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_07 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    sleep  1s
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
AEM_Seasonal_Campaign_07 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_07 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_07 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_07.PNG
    sleep  3s
AEM_Seasonal_Campaign_07 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_07_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Seasonal_Campaign_08 Create Campaign Page 'RE_Seasonal_Campaign_8' 4 Type of Content

AEM_Seasonal_Campaign_08 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_08 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_8
AEM_Seasonal_Campaign_08 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_08 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_08 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_08 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
   sleep    1s
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Input information AEM       ${input_Image-EN 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-EN 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Input information AEM       ${input_Image-TH 2_Campaign_08_AEM}     /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-TH 3_Campaign_08_AEM}     /content/dam/aem-images/test/th/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_08_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_3_Campaign_08_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_3_Campaign_08_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_08_AEM}
    Select list AEM        ${selected_order_3_Reward Store_3_Campaign_08_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_08_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_08_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_08_AEM}                     /content/the1/rewards/category/category_1
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
AEM_Seasonal_Campaign_08 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_08 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_08 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_08.PNG
    sleep  3s
AEM_Seasonal_Campaign_08 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_08_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s


#AEM_Seasonal_Campaign_09 Create Campaign Page 'RE_Seasonal_Campaign_9' 6 Type of Content

AEM_Seasonal_Campaign_09 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_09 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_9
AEM_Seasonal_Campaign_09 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_09 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_09 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_09 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Input information AEM       ${input_Image-EN 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-EN 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Input information AEM       ${input_Image-TH 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-TH 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_08_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_3_Campaign_08_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_3_Campaign_08_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_08_AEM}
    Select list AEM        ${selected_order_3_Reward Store_3_Campaign_08_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_08_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_08_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_08_AEM}                     /content/the1/rewards/category/category_1
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${selected_Badge_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${select_order_Badge_4_Campaign_09_AEM}
    Select list AEM        ${selected_order_4_Badge_4_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Campaign_09_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Campaign_09_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                     ${badge_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${selected_Article_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${select_order_Article_5_Campaign_09_AEM}
    Select list AEM        ${selected_order_5_Article_5_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Campaign_09_AEM}                    English Article Title
    Input information AEM       ${input_Article Title - TH_Campaign_09_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${select_order_Link Out URL_6_Campaign_09_AEM}
    Select list AEM        ${selected_order_6_Link Out URL_6_Campaign_09_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_09_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_09_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_09_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_09_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_09_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_09_AEM}       ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_09 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_09 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  3s
AEM_Seasonal_Campaign_09 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_09.PNG
    sleep  3s
AEM_Seasonal_Campaign_09 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_09_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_10 Create Campaign Page 'RE_Seasonal_Campaign_10' 10 Type of Content

AEM_Seasonal_Campaign_10 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_10 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_10
AEM_Seasonal_Campaign_10 Step07 Input Campaign Details
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
AEM_Seasonal_Campaign_10 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_10 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_10 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Input information AEM       ${input_Image-EN 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-EN 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Input information AEM       ${input_Image-TH 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-TH 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_08_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_3_Campaign_08_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_3_Campaign_08_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_08_AEM}
    Select list AEM        ${selected_order_3_Reward Store_3_Campaign_08_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_08_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_08_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_08_AEM}                     /content/the1/rewards/category/category_1
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${selected_Badge_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${select_order_Badge_4_Campaign_09_AEM}
    Select list AEM        ${selected_order_4_Badge_4_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Campaign_09_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Campaign_09_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                     ${badge_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${selected_Article_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${select_order_Article_5_Campaign_09_AEM}
    Select list AEM        ${selected_order_5_Article_5_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Campaign_09_AEM}                    English Article Title
    Input information AEM       ${input_Article Title - TH_Campaign_09_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${select_order_Link Out URL_6_Campaign_09_AEM}
    Select list AEM        ${selected_order_6_Link Out URL_6_Campaign_09_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_09_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_09_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_09_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_09_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_09_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_09_AEM}       ไทย Free Text
    sleep  1s
    Click Element Wait AEM     ${btn_Add_6_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_7_Campaign_10_AEM}
    Select list AEM        ${selected_Badge_Type of Content_7_Campaign_10_AEM}
    Select list AEM        ${select_order_Badge_7_Campaign_10_AEM}
    Select list AEM        ${selected_order_7_Badge_7_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Campaign_10_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Campaign_10_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw2cte22dsep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                     /content/the1/badgesv2/bdg_checkin_ctw33dmultisep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw3cte33dmultisep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw3t3dsep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s

    Click Element Wait AEM      ${btn_Add_7_Type of Content_Campaign_10_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_8_Campaign_10_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_8_Campaign_10_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_8_Campaign_10_AEM}
    Select list AEM        ${selected_order_8_Reward Store_8_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_10_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_10_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_10_AEM}                      /content/the1/rewards/category/category_2
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_8_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_9_Campaign_10_AEM}
    Select list AEM        ${selected_Article_Type of Content_9_Campaign_10_AEM}
    Select list AEM        ${select_order_Article_9_Campaign_10_AEM}
    Select list AEM        ${selected_order_9_Article_9_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Campaign_10_AEM}                     English Article Title
    Input information AEM       ${input_Article Title - TH_Campaign_10_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_6_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_7_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_8_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      ${Article_TH_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_6
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_7
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM      ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_8
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_9_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_10_Campaign_10_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_10_Campaign_10_AEM}
    Select list AEM        ${select_order_Link Out URL_10_Campaign_10_AEM}
    Select list AEM        ${selected_order_10_Link Out URL_10_Campaign_10_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_10_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_10_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_10_AEM}             https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_10_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_10_AEM}       English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_10_AEM}        ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_10 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_10 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_10 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_10.PNG
    sleep  3s
AEM_Seasonal_Campaign_10 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_10_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s


#AEM_Seasonal_Campaign_11 Create Campaign Page 'RE_Seasonal_Campaign_11' 6 Type of Content and not input all information on condition field

AEM_Seasonal_Campaign_11 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_11 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_11
    sleep  1s
AEM_Seasonal_Campaign_11 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 11 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 11 TH
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
AEM_Seasonal_Campaign_11 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_11 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_11 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_08_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_3_Campaign_08_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_3_Campaign_08_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_08_AEM}
    Select list AEM        ${selected_order_3_Reward Store_3_Campaign_08_AEM}
    sleep    1s
    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${selected_Badge_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${select_order_Badge_4_Campaign_09_AEM}
    Select list AEM        ${selected_order_4_Badge_4_Campaign_09_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${selected_Article_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${select_order_Article_5_Campaign_09_AEM}
    Select list AEM        ${selected_order_5_Article_5_Campaign_09_AEM}
    sleep  1s
    sleep    1s
    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${select_order_Link Out URL_6_Campaign_09_AEM}
    Select list AEM        ${selected_order_6_Link Out URL_6_Campaign_09_AEM}
    sleep  1s
AEM_Seasonal_Campaign_11 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_11 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_11 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_11.PNG
    sleep  3s
AEM_Seasonal_Campaign_11 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_11.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s


#AEM_Seasonal_Campaign_12 Create Campaign Page 'RE_Seasonal_Campaign_11' Type of Content Image and add images 6

AEM_Seasonal_Campaign_12 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_12 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_Fail_12
AEM_Seasonal_Campaign_12 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign Fail 12 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign Fail 12 TH
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
AEM_Seasonal_Campaign_12 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_12 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_12 Create Campaign Page Type of Content Image and add images 6
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Image_Type of Content_1_Seasonal_Campaign_AEM}
    Select list AEM        ${select_order_Image_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_order 10_Image_1_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 5_Campaign_Fail_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_12.PNG
    sleep  3s



#AEM_Seasonal_Campaign_13 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
AEM_Seasonal_Campaign_13 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_13 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_Fail_13
AEM_Seasonal_Campaign_13 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign Fail 13 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign Fail 13 TH
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
AEM_Seasonal_Campaign_13 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_13 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s

AEM_Seasonal_Campaign_13 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  2s
    Click Element Wait AEM      ${Max allowed items is 10_Campaign_Fail_AEM}
    sleep  2s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_13.PNG
    sleep  2s



#AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_13' Repeat order number
AEM_Seasonal_Campaign_14 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_14 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_Fail_14
AEM_Seasonal_Campaign_14 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign Fail 14 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign Fail 14 TH
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
AEM_Seasonal_Campaign_14 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_14 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s

AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_12' 11 Type of Content
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  1s
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_Fail_AEM}
    sleep  2s

AEM_Seasonal_Campaign_14 Create Campaign Page 'RE_Seasonal_Campaign_13' Repeat order number
    Click Element Wait AEM      ${Order value exists. Modify value_Campaign_Fail_AEM}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_14.PNG
    sleep  3s




#AEM_Seasonal_Campaign_15 Edit Campaign Page change remove and move image 'RE_Seasonal_Campaign_2' Type of Content Image
AEM_Seasonal_Campaign_15_Edit Campaign Page change remove and move image
    GO to       https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign2.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${Btn_add_image_EN_Seasonal_Campaign_AEM}
    sleep  1s
    Input information AEM            ${input_Image-EN 4_Seasonal_Campaign_AEM}       /content/dam/aem-images/test/en/4.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text                ${input_Image-EN 1_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-EN 1_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text                ${input_Image-EN 2_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-EN 3_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-EN 2_Seasonal_Campaign_AEM}
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-TH 3_Seasonal_Campaign_AEM}
    sleep    1s
    Clear Element Text          ${input_Image-TH 1_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-TH 1_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/th/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text          ${input_Image-TH 2_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Image-TH 2_Seasonal_Campaign_AEM}     /content/dam/aem-images/test/th/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
AEM_Seasonal_Campaign_15 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_15 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  3s
AEM_Seasonal_Campaign_15 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM              ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_15.PNG
    sleep  3s
AEM_Seasonal_Campaign_15 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_15_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_Seasonal_Campaign_15_add image Max allowed items is 5
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_add_image_TH_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 5}
    sleep  1s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_15_Fail.PNG
    sleep  2s




#AEM_Seasonal_Campaign_16 Edit Campaign Page remove and add Badge'RE_Seasonal_Campaign_4' Type of Content Badge
AEM_Seasonal_Campaign_16_Edit Campaign Page add Type of Content
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign4.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_order_Badge_1_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_order 1_Badge_1_Seasonal_Campaign_AEM}
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_6_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_7_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_8_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_9_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_10_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_11_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Seasonal_Campaign_AEM}                      ${badge_12_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
    Double Click Element AEM      ${Delete_Badge Display_1_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_16 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_16 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_16 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM              ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_16.PNG
    sleep  3s
AEM_Seasonal_Campaign_16 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_16_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Seasonal_Campaign_17 Edit Campaign Page remove and add Article'RE_Seasonal_Campaign_5' Type of Content Badge
AEM_Seasonal_Campaign_17_Edit Campaign Page remove and add Article
    Go to     https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign5.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_6_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_7_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_8_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_9_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Seasonal_Campaign_AEM}                      ${Article_EN_10_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Seasonal_Campaign_AEM}                      ${Article_TH_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
    Double Click Element AEM      ${Delete_Article Page - EN_2_Seasonal_Campaign_AEM}
    sleep  3s
    Double Click Element AEM      ${Delete_Article Page - TH_2_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_17 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_17 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_17 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_17.PNG
    sleep  5s
AEM_Seasonal_Campaign_17 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_17_API.PNG
    sleep  1s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_18 Edit Campaign Page add Type of Content 'RE_Seasonal_Campaign_3' Type of Content Reward Store
AEM_Seasonal_Campaign_18_Edit Campaign Page add Type of Content
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign3.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_R1_Seasonal_Campaign_AEM}
    sleep  1s
    Select list AEM        ${select_order_Free Text_2_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_order 2_Free Text_2_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Free Text - EN_2_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_2_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  3s
AEM_Seasonal_Campaign_18 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_18 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_18 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_18.PNG
    sleep  5s
AEM_Seasonal_Campaign_18 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_18_API.PNG
    sleep  1s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s





#AEM_Seasonal_Campaign_19 Edit Campaign Page Remove Type of Content 'RE_Seasonal_Campaign_3' Type of Content Reward Store
AEM_Seasonal_Campaign_19_Edit Campaign Page Remove Type of Content
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign3.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${Delete_Free Text_2_Seasonal_Campaign_AEM}
    sleep  1s
AEM_Seasonal_Campaign_19 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_19 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_19 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_19.PNG
    sleep  5s
AEM_Seasonal_Campaign_19 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_19_API.PNG
    sleep  1s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s






AEM_Seasonal_Campaign_20_Edit Campaign information 6 Type of Content
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_seasonalcampaign9.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM              ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Clear Element Text Wait AEM          ${input_Header Title EN_Campaign_20_AEM}
    Input information AEM        ${input_Header Title EN_Campaign_20_AEM}                    Central Love Out Lound
    Clear Element Text Wait AEM          ${input_Header Title TH_Campaign_20_AEM}
    Input information AEM        ${input_Header Title TH_Campaign_20_AEM}                    Central Love Out Lound
    Clear Element Text Wait AEM          ${input_Feature Image - EN_Campaign_20_AEM}
    sleep  1s
    Input information AEM        ${input_Feature Image - EN_Campaign_20_AEM}                    /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep  3s
    Clear Element Text Wait AEM      ${input_Feature Image - TH_Campaign_20_AEM}
    Input information AEM        ${input_Feature Image - TH_Campaign_20_AEM}                    /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text Wait AEM      ${input_Page Start Date_Campaign_20_AEM}
    Input information AEM      ${input_Page Start Date_Campaign_20_AEM}                    October 05, 2021
    Clear Element Text Wait AEM      ${input_Page End Date_Campaign_20_AEM}
    Input information AEM     ${input_Page End Date_Campaign_20_AEM}                     October 30, 2021
    sleep  5s
    Clear Element Text Wait AEM      ${input_Free Text - EN_Campaign_20_AEM}
    Input information AEM     ${input_Free Text - EN_Campaign_20_AEM}     Central Love Out Lound- EN
    Clear Element Text Wait AEM      ${input_Free Text - TH_Campaign_20_AEM}
    Input information AEM     ${input_Free Text - TH_Campaign_20_AEM}     Central Love Out Lound - TH
    sleep  3s
    Clear Element Text Wait AEM      ${input_Image-EN 1_Campaign_07_AEM}
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text Wait AEM      ${input_Image-TH 1_Campaign_07_AEM}
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/Adobe_standard_logo_BLACK.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-EN 3_Campaign_20_AEM}
    Click Element Wait AEM           ${Delete_Image-EN 2_Campaign_20_AEM}
    sleep    1s
    Click Element Wait AEM           ${Delete_Image-TH 3_Campaign_20_AEM}
    Click Element Wait AEM           ${Delete_Image-TH 2_Campaign_20_AEM}
    sleep    1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_20_AEM}
    Select list AEM        ${selected_order_4_Reward Store_3_Campaign_20_AEM}
    sleep  1s
    Clear Element Text Wait AEM     ${input_Reward Store Title - EN_Campaign_08_AEM}
    Input information AEM       ${input_Reward Store Title - EN_Campaign_08_AEM}                    LOL Deals - EN
    sleep  1s
    Clear Element Text Wait AEM     ${input_Reward Store Title - TH_Campaign_08_AEM}
    Input information AEM       ${input_Reward Store Title - TH_Campaign_08_AEM}                    LOL ดีล - TH
    sleep  1s
    Clear Element Text Wait AEM      ${input_Reward Store_Campaign_20_AEM}
    sleep  1s
    Input information AEM        ${input_Reward Store_Campaign_20_AEM}                     /content/the1/rewards/category/category_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM        ${select_order_Badge_4_Campaign_09_AEM}
    Select list AEM        ${selected_order_6_Badge_4_Campaign_20_AEM}
    sleep  1s
    Clear Element Text Wait AEM     ${input_Badge Title - EN_Campaign_09_AEM}
    Input information AEM       ${input_Badge Title - EN_Campaign_09_AEM}                    LOL Missions - EN
    sleep  1s
    Clear Element Text Wait AEM       ${input_Badge Title - TH_Campaign_09_AEM}
    Input information AEM       ${input_Badge Title - TH_Campaign_09_AEM}                    LOL ภารกิจ - TH
    sleep  1s
    Double Click Element AEM      ${Delete_Badge Display_4_Campaign_20_AEM}
    sleep  1s
    Double Click Element AEM      ${Delete_Badge Display_3_Campaign_20_AEM}
    sleep  3s
    Clear Element Text Wait AEM     ${input_Article Title - EN_Campaign_09_AEM}
    Input information AEM       ${input_Article Title - EN_Campaign_09_AEM}                   Update - EN
    Clear Element Text Wait AEM     ${input_Article Title - TH_Campaign_09_AEM}
    Input information AEM       ${input_Article Title - TH_Campaign_09_AEM}                   อัพเดต - TH
    sleep  1s
    Double Click Element AEM      ${Delete_Article_TH_4_Campaign_20_AEM}
    sleep  1s
    Double Click Element AEM      ${Delete_Article_EN_4_Campaign_20_AEM}
    sleep  3s
    Select list AEM        ${select_order_Link Out URL_6_Campaign_09_AEM}
    Select list AEM        ${selected_order_3_Link Out URL_6_Campaign_20_AEM}
    sleep  1s
    Clear Element Text Wait AEM     ${input_Header - EN_URL_Campaign_09_AEM}
    Input information AEM     ${input_Header - EN_URL_Campaign_09_AEM}         Prizes - EN
    sleep  1s
    Clear Element Text Wait AEM     ${input_Header - TH_URL_Campaign_09_AEM}
    Input information AEM     ${input_Header - TH_URL_Campaign_09_AEM}         รางวัล - TH
    sleep  1s
    Clear Element Text Wait AEM     ${input_URL - EN_URL_Campaign_09_AEM}
    Input information AEM     ${input_URL - EN_URL_Campaign_09_AEM}            https://www.the1.co.th/en/terms-and-conditions
    sleep  1s
    Clear Element Text Wait AEM     ${input_URL - TH_URL_Campaign_09_AEM}
    Input information AEM     ${input_URL - TH_URL_Campaign_09_AEM}            https://www.the1.co.th/terms-and-conditions
    sleep  1s
    Clear Element Text Wait AEM     ${input_Free Text - EN_URL_Campaign_20_AEM}
    Input information AEM     ${input_Free Text - EN_URL_Campaign_20_AEM}      View Terms & Conditions - EN
    sleep  1s
    Clear Element Text Wait AEM       ${input_Free Text - TH_URL_Campaign_20_AEM}
    Input information AEM       ${input_Free Text - TH_URL_Campaign_20_AEM}       ดูข้อตกลงและเงื่อนไขการให้บริการ - TH
    sleep  1s
AEM_Seasonal_Campaign_20 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_20 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_20 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_20.PNG
    sleep  5s
AEM_Seasonal_Campaign_20 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n


    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_20_API.PNG
    sleep  1s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_21 Edit Campaign Page Remove 9 Type of Content and add 1 Type of Content 'RE_Seasonal_Campaign_10'
AEM_Seasonal_Campaign_21 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_21 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_21
AEM_Seasonal_Campaign_21 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 21 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 21 TH
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
AEM_Seasonal_Campaign_21 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_21 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_21 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
    Click Element Wait AEM      ${btn_Add_1_Type of Content_Campaign_07_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${selected_Image_Type of Content_2_Campaign_07_AEM}
    Select list AEM        ${select_order_Image_2_Campaign_07_AEM}
    Select list AEM        ${selected_order_2_Image_2_Campaign_07_AEM}
    sleep  1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-EN 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    sleep    1s
    Input information AEM       ${input_Image-TH 1_Campaign_07_AEM}     /content/dam/aem-images/test/en/1.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_EN_Campaign_07_AEM}
    Input information AEM       ${input_Image-EN 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-EN 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Click Element Wait AEM      ${Btn_add_image_TH_Campaign_07_AEM}
    Input information AEM       ${input_Image-TH 2_Campaign_08_AEM}     /content/dam/aem-images/test/en/2.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Image-TH 3_Campaign_08_AEM}     /content/dam/aem-images/test/en/3.jpg
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_2_Type of Content_Campaign_08_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_3_Campaign_08_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_3_Campaign_08_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_3_Campaign_08_AEM}
    Select list AEM        ${selected_order_3_Reward Store_3_Campaign_08_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_08_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_08_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_08_AEM}                     /content/the1/rewards/category/category_1
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${selected_Badge_Type of Content_4_Campaign_09_AEM}
    Select list AEM        ${select_order_Badge_4_Campaign_09_AEM}
    Select list AEM        ${selected_order_4_Badge_4_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Campaign_09_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Campaign_09_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                     ${badge_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_09_AEM}                      ${badge_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_4_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${selected_Article_Type of Content_5_Campaign_09_AEM}
    Select list AEM        ${select_order_Article_5_Campaign_09_AEM}
    Select list AEM        ${selected_order_5_Article_5_Campaign_09_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Campaign_09_AEM}                    English Article Title
    Input information AEM       ${input_Article Title - TH_Campaign_09_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_09_AEM}                      ${Article_EN_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_1_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_2_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_3_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_09_AEM}                      ${Article_TH_4_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_5_Type of Content_Campaign_09_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_6_Campaign_09_AEM}
    Select list AEM        ${select_order_Link Out URL_6_Campaign_09_AEM}
    Select list AEM        ${selected_order_6_Link Out URL_6_Campaign_09_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_09_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_09_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_09_AEM}            https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_09_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_09_AEM}      English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_09_AEM}       ไทย Free Text
    sleep  1s
    Click Element Wait AEM     ${btn_Add_6_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_7_Campaign_10_AEM}
    Select list AEM        ${selected_Badge_Type of Content_7_Campaign_10_AEM}
    Select list AEM        ${select_order_Badge_7_Campaign_10_AEM}
    Select list AEM        ${selected_order_7_Badge_7_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Badge Title - EN_Campaign_10_AEM}                    English Badge Title
    Input information AEM       ${input_Badge Title - TH_Campaign_10_AEM}                    ไทย Badge Title
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw2cte22dsep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                     /content/the1/badgesv2/bdg_checkin_ctw33dmultisep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw3cte33dmultisep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Badge Display_Campaign_10_AEM}                      /content/the1/badgesv2/bdg_checkin_ctw3t3dsep
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_7_Type of Content_Campaign_10_AEM}
    sleep    1s
    Select list AEM        ${select_Type of Content_8_Campaign_10_AEM}
    Click Element Wait AEM        ${selected_Reward Store_Type of Content_8_Campaign_10_AEM}
    sleep  1s
    Select list AEM        ${select_order_Reward Store_8_Campaign_10_AEM}
    Select list AEM        ${selected_order_8_Reward Store_8_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Reward Store Title - EN_Campaign_10_AEM}                    English Reward Store Title
    Input information AEM       ${input_Reward Store Title - TH_Campaign_10_AEM}                    ไทย Reward Store Title
    Input information AEM       ${input_Reward Store_Campaign_10_AEM}                      /content/the1/rewards/category/category_2
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_8_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_9_Campaign_10_AEM}
    Select list AEM        ${selected_Article_Type of Content_9_Campaign_10_AEM}
    Select list AEM        ${select_order_Article_9_Campaign_10_AEM}
    Select list AEM        ${selected_order_9_Article_9_Campaign_10_AEM}
    sleep  1s
    Input information AEM       ${input_Article Title - EN_Campaign_10_AEM}                     English Article Title
    Input information AEM       ${input_Article Title - TH_Campaign_10_AEM}                    ไทย Article Title
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_6_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_7_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - EN_Campaign_10_AEM}                      ${Article_EN_8_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      ${Article_TH_5_Seasonal_Campaign_AEM}
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_6
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_7
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM      ${input_Article Page - TH_Campaign_10_AEM}                      /content/the1/api/th/th/articles/test_article_8
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait AEM      ${btn_Add_9_Type of Content_Campaign_10_AEM}
    sleep  3s
    Select list AEM        ${select_Type of Content_10_Campaign_10_AEM}
    Select list AEM        ${selected_Link Out URL_Type of Content_10_Campaign_10_AEM}
    Select list AEM        ${select_order_Link Out URL_10_Campaign_10_AEM}
    Select list AEM        ${selected_order_10_Link Out URL_10_Campaign_10_AEM}
    sleep  1s
    Input information AEM     ${input_Header - EN_URL_Campaign_10_AEM}         English Header
    Input information AEM     ${input_Header - TH_URL_Campaign_10_AEM}         ไทย Header
    Input information AEM     ${input_URL - EN_URL_Campaign_10_AEM}             https://www.the1.co.th/en
    Input information AEM     ${input_URL - TH_URL_Campaign_10_AEM}            https://www.the1.co.th/
    Input information AEM     ${input_Free Text - EN_URL_Campaign_10_AEM}       English Free Text
    Input information AEM     ${input_Free Text - TH_URL_Campaign_10_AEM}        ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_21 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_21 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_21 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_21 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']
    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Seasonal_Campaign_21_Rmove 9 Type of Content
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  3s
    Click Element Wait AEM           ${btn_delete_1_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
    Click Element Wait AEM           ${btn_delete_2_Type of Content_Campaign_21_AEM}
AEM_Seasonal_Campaign_21_add 1 Type of Content
    Click Element Wait AEM      ${btn_Add_3_Type of Content_Campaign_21_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Campaign_21_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Campaign_21_AEM}     ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_21_Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_21_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_21_Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_21.PNG
    sleep  5s
AEM_Seasonal_Campaign_21_Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_21_API.PNG
    sleep  1s
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s



#AEM_Seasonal_Campaign_22 Edit Campaign Page Remove all Type of Content 'RE_Seasonal_Campaign_10'

AEM_Seasonal_Campaign_22 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_22 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_22
AEM_Seasonal_Campaign_22 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 22 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 22 TH
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
AEM_Seasonal_Campaign_22 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_22 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_22 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  1s
AEM_Seasonal_Campaign_22 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_22 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_22 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_22 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']
    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Seasonal_Campaign_22_Edit Campaign Page Remove all Type of Content
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  1s
    Clear Element Text Wait AEM      ${input_Page Start Date_Campaign_20_AEM}
    Input information AEM      ${input_Page Start Date_Campaign_20_AEM}                    ${Campain_End Date_AEM}
    Clear Element Text Wait AEM      ${input_Page End Date_Campaign_20_AEM}
    Input information AEM     ${input_Page End Date_Campaign_20_AEM}                     ${Campain_Start Date_AEM}
    sleep  1s
    Click Element Wait AEM           ${btn_delete_Type of Content_Campaign_22_AEM}
    sleep  1s
AEM_Seasonal_Campaign_22_Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_22_Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_22_Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_22.PNG
    sleep  5s
AEM_Seasonal_Campaign_22_Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_22_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s




#AEM_Seasonal_Campaign_23 Edit Campaign Page add Type of Contend 10 Blocks 'RE_Seasonal_Campaign_1' Type of Content Free text
AEM_Seasonal_Campaign_23_Edit Campaign Page add Type of Contend 10 Blocks
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Seasonal_Campaign_1.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Max allowed items is 10}
    sleep  1s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_23.PNG
    sleep  1s



#AEM_Seasonal_Campaign_24 Edit Campaign Page add Repeat order number 'RE_Seasonal_Campaign_1' Type of Content Free text
AEM_Seasonal_Campaign_23_Edit Type of Campaign and add Repeat order number
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/campaigns/${date_today}_Seasonal_Campaign_1.html
    sleep  3s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_Add_Type of Content_1_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${Order value exists. Modify value}
    sleep  1s
    Capture Page Screenshot           ${date_today}_AEM_Seasonal_Campaign_24_1.PNG
    Capture Element Screenshot        ${Can't Change Camapaign Type}       ${date_today}_AEM_Seasonal_Campaign_24_2.PNG
    sleep  1s




#AEM_Seasonal_Campaign_25 Edit Campaign Type and add Type of Content Free text 'RE_Seasonal_Campaign_1' Type of Content Free text

AEM_Seasonal_Campaign_25 Step04 Click Create > Click Page > Step05 Select Campaign API Page
    Go To           ${Url_Create_Campaigns}
    sleep  1s
AEM_Seasonal_Campaign_25 Step06 Input value in Basic tab
    Click Element Wait AEM           ${card_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${btn_next_card_Seasonal_Campaign_AEM}
    Input information AEM     ${input_Campaign_Title_AEM}                    ${date_today}_Seasonal_Campaign_25
AEM_Seasonal_Campaign_25 Step07 Input Campaign Details
    Click Element Wait AEM           ${tab_Campaign Details_AEM}
    Input information AEM     ${input_Header Title EN_AEM}                    Campaign 25 EN
    Input information AEM     ${input_Header Title TH_AEM}                    Campaign 25 TH
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
AEM_Seasonal_Campaign_25 Step08 Click Create and Click Done
    Click Element Wait AEM           ${Btn_Create_Seasonal_Campaign_AEM}
    Click Element Wait AEM           ${Btn_Open_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_25 Step09 Click Pic New Campaign and Click Propeties
    Switch Window     title=STAGE | AEM Sites
    Close window
    sleep  1s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_25 Step10 Input Type and Step11 Input Campaign Details (refer Information by Data Test)
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    Select list AEM        ${select_Type of Campaign_Seasonal_Campaign_AEM}
    Select list AEM        ${selected_Type Seasonal Campaign_Seasonal_Campaign_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Seasonal_Campaign_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Seasonal_Campaign_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Seasonal_Campaign_AEM}     ไทย Free Text
    sleep  1s
AEM_Seasonal_Campaign_25 Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_25 Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_25 Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Btn_Publish_Seasonal_Campaign_AEM}
    Run Keyword if     '${present}'=='True'     Publish button AEM
    sleep  1s
    Click Element Wait AEM           ${btn_Preview_Page_Seasonal_Campaign_AEM}
    sleep  3s
AEM_Seasonal_Campaign_25 Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']
    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Close window
    sleep  1s
AEM_Seasonal_Campaign_25_Edit Campaign Type and add Type of Content Free text
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${Btn_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Click Element Wait AEM           ${Btn_Confirm_Unpublish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Seasonal_Campaign_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_Campaign Details_Propeties_AEM}
    sleep  1s
    Click Element Wait AEM           ${select_Type of Campaign_Campaign_22_AEM}
    Click Element Wait AEM           ${selected_Type Opt-in Campaign_Campaign_22_AEM}
    Click Element Wait AEM      ${btn_Add_Type of Content_Campaign_22_AEM}
    sleep  3s
    Input information AEM     ${input_Free Text - EN_Campaign_22_AEM}     English Free Text
    Input information AEM     ${input_Free Text - TH_Campaign_22_AEM}     ไทย Free Text
    sleep  3s
AEM_Seasonal_Campaign_25 Edit Step12 Click Save&Close
    Click Element Wait AEM       ${btn_Save&Close_Seasonal_Campaign_AEM}
    sleep  5s
AEM_Seasonal_Campaign_25 Edit Step13 Click Pic New Campaign and Click Propeties verify Campaign
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Seasonal_Campaign_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Seasonal_Campaign_AEM}     15   20
    sleep  1s
AEM_Seasonal_Campaign_25 Edit Step14 Click Page Information > Publish Page on Campaign page
    Click Element Wait AEM           ${Btn_Publish Page_Seasonal_Campaign_AEM}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_25.PNG
    sleep  5s
AEM_Seasonal_Campaign_25 Edit Step15 Click Preview and verify Publish API on Campaign page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${Link_Publish API_Seasonal_Campaign_AEM}
    Set Global Variable           ${url_json}
    Append To File     ${TestResult_Seasonal_Campaign_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Seasonal_Campaign_API}       ${resp.text}\n

    Click Element Wait AEM           ${Link_Publish API_Seasonal_Campaign_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Seasonal_Campaign_25_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s





































































































































