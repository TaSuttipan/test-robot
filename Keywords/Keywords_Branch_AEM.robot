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
Resource    ../Variable/Variable_Branch_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords_Branch_AEM.robot
Resource    ../Keywords/Keywords_Partner_AEM.robot
Resource    ../Variable/Variable_Partner_AEM.robot
Resource    ../Keywords/Keywords.robot



*** Keywords ***
Check if Questionnaire Branch AEM
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM          ${icon_Partner_Branchs_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${folder_Partner Adobe_Branchs_AEM}
    sleep  3s


#AEM_Branch_01 Create branch page 'Adobe Branch - 1' for check created branch page
AEM_Branch_01_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners/adobe
    sleep  1s
AEM_Branch_01_Step04 Select Branchs API Page
    Click Element Wait AEM           ${card_Branchs_AEM}
    Click Element Wait AEM           ${btn_next_card_Branchs_AEM}
AEM_Branch_01_Step05 Input value in Basic tab
    Input information AEM        ${input_title_Branchs_AEM}        ${date_today}_Regression Adobe Branch - 1
    sleep  1s
AEM_Branch_01_Step06 Input Branch Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Branchs_AEM}
    sleep  3s
    Input information AEM         ${input_Branch ID *_Branchs_AEM}              AB0000001
    Input information AEM         ${input_Branch Name - TH *_Branchs_AEM}       เซ็นทรัลเวิลด์
    Input information AEM         ${input_Branch Name - EN *_Branchs_AEM}       Central World
    Input information AEM         ${input_Branch Address - TH_Branchs_AEM}      999/9 ถนนพระราม 1, แขวงปทุมวัน, เขตปทุมวัน, กรุงเทพมหานคร,10330
    Input information AEM         ${input_Branch Address - EN_Branchs_AEM}      999/9 Rama I Rd, Pathum Wan, Pathum Wan District, Bangkok 10330
    Input information AEM         ${input_District - TH_Branchs_AEM}            ปทุมวัน
    Input information AEM         ${input_District - EN_Branchs_AEM}            Pathum Wan
    Input information AEM         ${input_Sub District - TH_Branchs_AEM}        ปทุมวัน
    Input information AEM         ${input_Sub District - EN_Branchs_AEM}        Pathum Wan
    Input information AEM         ${input_City - EN_Branchs_AEM}                Bangkok
    sleep  1s
    Click Element Wait AEM        ${click_City - EN_Branchs_AEM}
    sleep  1s
    Input information AEM         ${input_Postal Code_Branchs_AEM}             10330
    Input information AEM         ${input_Longitude_Branchs_AEM}               13.746786
    Input information AEM         ${input_Latitude_Branchs_AEM}                89.539335
    sleep  1s
    Input information AEM         ${input_Location - EN_Branchs_AEM}            Central World
    sleep  1s
    Click Element Wait AEM        ${click_Location - EN_Branchs_AEM}
    sleep  1s
    Input information AEM         ${input_Contact Number_Branchs_AEM}                    082-222-3722
    Input information AEM         ${input_URL - TH_Branchs_AEM}                      https://www.centralworld.co.th/
    Input information AEM         ${input_URL - EN_Branchs_AEM}                      https://www.centralworld.co.th/
    sleep  3s
    Click Element Wait AEM        ${btn_create_Branch_AEM}
    sleep  3s
AEM_Branch_01_Step07 Click Create
    Click Element Wait AEM        ${btn_open_Branch_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Branch_01_Step08 Click Open and verify Branch
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Branch_01_Step09 Click Page Information > Publish Page on Branch page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Branch_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_tab_Branch_AEM}
    sleep  3s
    Input information AEM         ${input_Free Text - TH_Branch_AEM}                    ${text_Free Text - TH_Branch_AEM}
    Input information AEM         ${input_Free Text - EN_Branch_AEM}                    ${text_Free Text - EN_Branch_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_save_Branch_AEM}
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Branch_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Branch_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Branch
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Branch_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_01.PNG
    sleep  1s
AEM_Branch_01_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Branch_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Branch_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Branch_API}         ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Branch_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


#AEM_Branch_02 Create branch page 'Adobe Branch - 2' not input all information on condition field for check created branch page
AEM_Branch_02_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners/adobe
    sleep  1s
AEM_Branch_02_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Branchs_AEM}
    Click Element Wait AEM           ${btn_next_card_Branchs_AEM}
AEM_Branch_02_Step05 Input value in Basic tab
    Input information AEM        ${input_title_Branchs_AEM}        ${date_today}_Regression Adobe Branch - 2
    sleep  1s
AEM_Branch_02_Step06 Input Branch Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Branchs_AEM}
AEM_Branch_02_Create Branch Page 'Branch Test 1' not input mandatory field
    sleep  3s
    Input information AEM         ${input_Branch ID *_Branchs_AEM}              AB0000002
    Input information AEM         ${input_Branch Name - TH *_Branchs_AEM}       กรูฟ-เซ็นทรัลเวิลด์
    Input information AEM         ${input_Branch Name - EN *_Branchs_AEM}       Groove-Central World
    sleep  3s
    Click Element Wait AEM        ${btn_create_Branch_AEM}
    sleep  3s
AEM_Branch_02_Step07 Click Create
    Click Element Wait AEM        ${btn_open_Branch_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Branch_02_Step08 Click Open and verify Branch
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Branch_02_Step09 Click Page Information > Publish Page on Branch page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Branch_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Locations_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Branch
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Branch_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_02.PNG
    sleep  1s
AEM_Branch_02_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Branch_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Branch_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Branch_API}         ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Branch_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_API_02.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s



#AEM_Branch_03 Create branch page 'branch Test' not input mandatory field for check can't create branch page
AEM_Branch_03_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/partners/adobe
    sleep  1s
AEM_Branch_03_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Branchs_AEM}
    Click Element Wait AEM           ${btn_next_card_Branchs_AEM}
AEM_Branch_03_Step05 Input value in Basic tab
    sleep  1s
AEM_Branch_03_Step06 Input Branch Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Branchs_AEM}
AEM_Branch_03_Create Branch Page 'Branch Test 1' not input mandatory field
    sleep  3s
    Capture Page Screenshot       ${date_today}_AEM_Branch_03.PNG
    sleep  3s





#AEM_Branch_04 Edit Adobe Branch edit information,add text "edit" all text field for check edited branch page
AEM_Branch_04_Step01 Click Page Information > Unpublish Page
    Go to    https://uatcreator.the1.co.th/editor.html/content/the1/partners/adobe/${date_today}_regression-adobe-branch---1.html
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Branch_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Branch_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Branch_AEM}
    sleep  3s
AEM_Branch_04_Step02 Click Edit Information
    Click Element Wait AEM           ${edit_tab_Branchs_AEM}
    sleep  3s
    Input information AEM         ${edit_input_Branch Address - TH_Branchs_AEM}      999/9 ถนนพระราม 1, แขวงปทุมวัน, เขตปทุมวัน, กรุงเทพมหานคร,10330
    Input information AEM         ${edit_input_Branch Address - EN_Branchs_AEM}      999/9 Rama I Rd, Pathum Wan, Pathum Wan District, Bangkok 10330
    Input information AEM         ${edit_input_District - TH_Branchs_AEM}            ปทุมวัน
    Input information AEM         ${edit_input_District - EN_Branchs_AEM}            Pathum Wan
    Input information AEM         ${edit_input_Sub District - TH_Branchs_AEM}        ปทุมวัน
    Input information AEM         ${edit_input_Sub District - EN_Branchs_AEM}        Pathum Wan
    Input information AEM         ${edit_input_City - EN_Branchs_AEM}                Bangkok
    sleep  1s
    Click Element Wait AEM        ${edit_click_City - EN_Branchs_AEM}
    sleep  1s
    Input information AEM         ${edit_input_Postal Code_Branchs_AEM}             10330
    Input information AEM         ${edit_input_Longitude_Branchs_AEM}               13.746786
    Input information AEM         ${edit_input_Latitude_Branchs_AEM}                89.539335
    sleep  1s
    Input information AEM         ${edit_input_Location - EN_Branchs_AEM}            Central World
    sleep  1s
    Click Element Wait AEM        ${edit_click_Location - EN_Branchs_AEM}
    sleep  1s
    Input information AEM         ${edit_input_Contact Number_Branchs_AEM}                    082-222-3722
    Input information AEM         ${edit_input_URL - TH_Branchs_AEM}                      https://www.centralworld.co.th/
    Input information AEM         ${edit_input_URL - EN_Branchs_AEM}                      https://www.centralworld.co.th/
    sleep  3s
    Input information AEM         ${input_Free Text - TH_Branch_AEM}                    ${text_Free Text - TH_Branch_AEM}
    Input information AEM         ${input_Free Text - EN_Branch_AEM}                    ${text_Free Text - EN_Branch_AEM}
    sleep  3s
AEM_Branch_04_Step03 Publish Page on Branchs page
    sleep  3s
    Click Element Wait AEM        ${btn_save_Branch_AEM}
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Branch_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Branch_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Branch_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status     Wait Until Page Contains Element      ${btn_Confirm_Publish_Branch_AEM}
     Run Keyword if     '${present}'=='True'     Publish Button AEM Branch
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Branch_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_04.PNG
    sleep  1s
AEM_Branch_04_Step04 Click Preview and verify Publish API on Branchs page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Branch_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Branch_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Branch_API}         ${resp.text}\n


    Click Element Wait AEM           ${link_Publish API_Branch_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Branch_API_04.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s



#AEM_Partner Validate Adobe Partner
AEM_Partner Validate Adobe Partner
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/partners/adobe.html
    sleep  1s
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Partner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_Adobe_Partner.PNG
    sleep  3s
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
    Capture Page Screenshot          ${date_today}_Adobe_Partner_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s