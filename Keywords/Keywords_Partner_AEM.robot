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
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords_Partner_AEM.robot
Resource    ../Variable/Variable_Partner_AEM.robot


*** Keywords ***

Check if Questionnaire Partner AEM
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM          ${icon_Partner_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${folder_Partner_AEM}
    sleep  3s


#AEM_Partner_01 Create Partner Page 'Regression Starbucks' for check created partner page
AEM_Partner_01_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners
    sleep  1s
AEM_Partner_01_Step05 Select Partner API Page
    Click Element Wait AEM           ${card_Partner_AEM}
    Click Element Wait AEM           ${btn_next_card_Partner_AEM}
AEM_Partner_01_Step06 Input value in Basic tab
    Input information AEM        ${input_title_Partner_AEM}                   ${date_today}_Partner_1
    sleep  1s
AEM_Partner_01_Step07 Input Partner Details (refer Information by Data Test)
    sleep  1s
    Click Element Wait AEM        ${tab_Partner_Detail_AEM}
    sleep  1s
    Input information AEM       ${input_Partner Code *_Partner_AEM}                     STS001
    Input information AEM       ${input_Partner Name - TH *_Partner_AEM}                Regression ซเว่น อีเลฟเว่น
    Input information AEM       ${input_Partner Name - EN *_Partner_AEM}                Regression 7 - Eleven
    sleep    1s
    Click Element Wait AEM      ${btn_Add_Partner Banner image_Partner_AEM}
    sleep    1s
    Input information AEM       ${input_Partner Banner image_Partner_AEM}               /content/dam/the1/banner/Banner_1_EN.jpg
    sleep    1s
    Click Element Wait AEM      ${Click_Partner Banner image_Partner_AEM}
    sleep    1s
    Input information AEM       ${input_Partner Logo image_Partner_AEM}                 /content/dam/the1/partners/711.png
    sleep    1s
    Click Element Wait AEM      ${Click_Partner Logo image_Partner_AEM}
    sleep    1s
    Input information AEM       ${input_Partner Feature image *_Partner_AEM}            /content/dam/the1/partners/711.png
    sleep    1s
    Click Element Wait AEM      ${Click_Partner Feature image *_Partner_AEM}
    sleep    1s
    Input information AEM       ${input_Header Title - TH_Partner_AEM}                  Regression เซเว่น
    Input information AEM       ${input_Header Title - EN_Partner_AEM}                  Regression Seven Eleven
    Input information AEM       ${input_Partner Description - TH_Partner_AEM}           ${text_Partner Description - TH}
    Input information AEM       ${input_Partner Description - EN_Partner_AEM}           ${text_Partner Description - EN}
    Input information AEM       ${input_Partner Category_Partner_AEM}                   Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM      ${click_Partner Category_Partner_AEM}
    sleep    1s
    Select list AEM             ${select_Include Membership Mission *_Partner_AEM}
    Select list AEM             ${selected_Yes_Include Membership Mission *_Partner_AEM}
    Input information AEM       ${input_Membership Mission Title - EN_Partner_AEM}       Membership
    Input information AEM       ${input_Membership Mission Title - TH_Partner_AEM}       สมาชิก
    Select list AEM             ${select_Include Related Mission *_Partner_AEM}
    Select list AEM             ${selected_Yes_Include Related Mission *_Partner_AEM}
    Input information AEM       ${input_Related Mission Title - EN_Partner_AEM}          Mission
    Input information AEM       ${input_Related Mission Title - TH_Partner_AEM}          ภารกิจ
    Select list AEM             ${select_Include Offer *_Partner_AEM}
    Select list AEM             ${selected_Yes_Include Offer *_Partner_AEM}
    Input information AEM       ${input_Offer Title - EN_Partner_AEM}                    Reward
    Input information AEM       ${input_Offer Title - TH_Partner_AEM}                    รีวอร์ด
    sleep  1s
    Click Element Wait AEM      ${tab_Partner Set Pagination_AEM}
    sleep  1s
    Click Element Wait AEM      ${checklist_Paginate_Partner_AEM}
    Input information AEM       ${input_Paginate Size_Partner_AEM}                       2
    sleep  1s
    Click Element Wait AEM        ${btn_create_Partner_AEM}
    sleep  1s
AEM_Partner_01_Step08 Click Create
    Click Element Wait AEM        ${btn_open_Partner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Partner_01_Step09 Click Open and verify Partner
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Partner_01_Step10 Click Page Information > Publish Page on Partner page
#    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
#    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
#    sleep  1s
#    Click Element Wait AEM     ${btn_Open_Properties_Partner_AEM}
#    sleep  3s
#    Click Element Wait AEM           ${tab_edit_tab_Partner_AEM}
#    sleep  3s
#    Input information AEM         ${input_Free Text - TH_Partner_AEM}                    ${text_Free Text - TH_Partner_AEM}
#    Input information AEM         ${input_Free Text - EN_Partner_AEM}                    ${text_Free Text - EN_Partner_AEM}
#    sleep  3s
#    Click Element Wait AEM        ${btn_save_Partner_AEM}
#    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Partner_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Partner_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Partner
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Partner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_01.PNG
    sleep  1s
AEM_Partner_01_Step11 Click Preview and verify Publish API on Partner page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Partner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Partner_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Partner_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Partner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




#AEM_Partner_02 Create Partner Page 'Partner Test 2' not input optional field all information on condition field for check created partner page
AEM_Partner_02_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners
    sleep  1s
AEM_Partner_02_Step05 Select Partner API Page
    Click Element Wait AEM           ${card_Partner_AEM}
    Click Element Wait AEM           ${btn_next_card_Partner_AEM}
AEM_Partner_02_Step06 Input value in Basic tab
    Input information AEM        ${input_title_Partner_AEM}                   ${date_today}_Partner_2
    sleep  1s
AEM_Partner_02_Step07 Input Partner Details (refer Information by Data Test)
    sleep  1s
    Click Element Wait AEM        ${tab_Partner_Detail_AEM}
    sleep  3s
    Input information AEM       ${input_Partner Code *_Partner_AEM}                     STS002
    Input information AEM       ${input_Partner Name - TH *_Partner_AEM}                Regression Partner
    Input information AEM       ${input_Partner Name - EN *_Partner_AEM}                Regression Partner
    sleep    3s
    Click Element Wait AEM        ${btn_create_Partner_AEM}
    sleep    3s
AEM_Partner_02_Step08 Click Create
    Click Element Wait AEM         ${btn_open_Partner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Partner_02_Step09 Click Open and verify Partner
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Partner_02_Step10 Click Page Information > Publish Page on Partner page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Partner_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Partner_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Partner
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Partner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_02.PNG
    sleep  1s
AEM_Partner_02_Step11 Click Preview and verify Publish API on Partner page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Partner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Partner_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Partner_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Partner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_API_02.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




#AEM_Partner_03 Create Partner Page 'Partner Test' for check not input mandatory field can't create partner page
AEM_Partner_03_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners
    sleep  1s
AEM_Partner_03_Step05 Select Partner API Page
    Click Element Wait AEM           ${card_Partner_AEM}
    Click Element Wait AEM           ${btn_next_card_Partner_AEM}
AEM_Partner_03_Step06 Input value in Basic tab
    sleep  1s
AEM_Partner_03_Step07 Input Partner Details (refer Information by Data Test)
    sleep  1s
    Click Element Wait AEM        ${tab_Partner_Detail_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_03.PNG
    sleep  1s






#AEM_Partner_04 Create Partner Page 'Partner Test' for check can't add image 6 images
AEM_Partner_04_Step04 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners
    sleep  1s
AEM_Partner_04_Step05 Select Partner API Page
    Click Element Wait AEM           ${card_Partner_AEM}
    Click Element Wait AEM           ${btn_next_card_Partner_AEM}
AEM_Partner_04_Step06 Input value in Basic tab
    Input information AEM        ${input_title_Partner_AEM}                   ${date_today}_Partner_4
    sleep  1s
AEM_Partner_04_Step07 Input Partner Details (refer Information by Data Test)
    sleep  1s
    Click Element Wait AEM        ${tab_Partner_Detail_AEM}
    sleep  3s
    Input information AEM       ${input_Partner Code *_Partner_AEM}                     STS004
    Input information AEM       ${input_Partner Name - TH *_Partner_AEM}                Regression Partner
    Input information AEM       ${input_Partner Name - EN *_Partner_AEM}                Regression Partner
    sleep  3s
    Input information AEM       ${input_Partner Feature image *_Partner_AEM}            /content/dam/the1/partners/Adobe.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Click Element Wait AEM          ${btn_Add_Partner Banner image_Partner_AEM}
    sleep  1s
    Click Element Wait AEM          ${btn_Add2_Partner Banner image_Partner_AEM}
    sleep  1s
    Click Element Wait AEM          ${btn_Add2_Partner Banner image_Partner_AEM}
    sleep  1s
    Click Element Wait AEM          ${btn_Add2_Partner Banner image_Partner_AEM}
    sleep  1s
    Click Element Wait AEM          ${btn_Add2_Partner Banner image_Partner_AEM}
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_Partner_04.PNG
    sleep  2s
    Click Element Wait AEM          ${btn_close_Partner Banner image5max_Partner_AEM}
    sleep  3s




#AEM_Partner_05 Edit all information 'Regression Starbucks' add "Edit" all field for check edited partner page
AEM_Partner_05_Click Page Information > Unpublish Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/partners/${date_today}_partner1.html
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Partner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Partner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
AEM_Partner_05_Edit all information 'Regression Partner' add "Edit" all field
    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Partner_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_tab_Partner_AEM}
    sleep  3s
    Input information AEM       ${edit_input_Partner Code *_Partner_AEM}                  EDITSTS002
    Input information AEM       ${edit_input_Partner Name - TH *_Partner_AEM}             Edit Regression Partner
    Input information AEM       ${edit_input_Partner Name - EN *_Partner_AEM}             Edit Regression Partner
    sleep    1s
    Click Element Wait AEM           ${edit_btn_add_Partner Banner image_Partner_AEM}
    sleep    1s
    Input information AEM       ${edit_input_Partner Banner image_Partner_AEM}           /content/dam/the1/banner/Banner_1_TH.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM        ${edit_input_Partner Logo image_Partner_AEM}             /content/dam/the1/partners/robinson.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Press Keys     ${edit_input_Partner Feature image *_Partner_AEM}        CTRL+a+BACKSPACE
    Press Keys     ${edit_input_Partner Feature image *_Partner_AEM}        DELETE
    sleep  1s
    Input information AEM       ${edit_input_Partner Feature image *_Partner_AEM}        /content/dam/the1/partners/tops-market.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM       ${edit_input_Header Title - TH_Partner_AEM}               Regression Partner
    Input information AEM       ${edit_input_Header Title - EN_Partner_AEM}               Regression Partner
    Input information AEM       ${edit_input_Partner Description - TH_Partner_AEM}        ${text_Partner Description - TH}
    Input information AEM       ${edit_input_Partner Description - EN_Partner_AEM}        ${text_Partner Description - EN}
    Input information AEM       ${edit_input_Partner Category_Partner_AEM}                Restaurant & Cafe
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM             ${edit_select_Include Membership Mission *_Partner_AEM}
    Select list AEM             ${edit_selected_Yes_Include Membership Mission *_Partner_AEM}
    Input information AEM       ${edit_input_Membership Mission Title - EN_Partner_AEM}    Membership
    Input information AEM       ${edit_input_Membership Mission Title - TH_Partner_AEM}    สมาชิก
    Select list AEM             ${edit_select_Include Related Mission *_Partner_AEM}
    Select list AEM             ${edit_selected_Yes_Include Related Mission *_Partner_AEM}
    Input information AEM       ${edit_input_Related Mission Title - EN_Partner_AEM}        Mission
    Input information AEM       ${edit_input_Related Mission Title - TH_Partner_AEM}        ภารกิจ
    Select list AEM             ${edit_select_Include Offer *_Partner_AEM}
    Select list AEM             ${edit_selected_Yes_Include Offer *_Partner_AEM}
    Input information AEM       ${edit_input_Offer Title - EN_Partner_AEM}                  Reward
    Input information AEM       ${edit_input_Offer Title - TH_Partner_AEM}                  รีวอร์ด
    Click Element Wait AEM      ${edit_tab_Partner Set Pagination_AEM}
    Click Element Wait AEM      ${edit_checklist_Paginate_Partner_AEM}
    Input information AEM       ${edit_input_Paginate Size_Partner_AEM}               99
    sleep  3s
    Click Element Wait AEM      ${btn_save_Partner_AEM}
    sleep  3s
AEM_Partner_05 Publish Page on Partner page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Partner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Partner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Partner_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Partner_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Partner
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Partner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_05.PNG
    sleep  1s
AEM_Partner_05 Click Preview and verify Publish API on Partner page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Partner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Partner_API}      ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File     ${TestResult_Partner_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Partner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Partner_05_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s