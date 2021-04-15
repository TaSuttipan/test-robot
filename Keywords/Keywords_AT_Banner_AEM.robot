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
Resource    ../Variable/Variable_Banner_UI_AEM.robot
Resource    ../Keywords/Keywords.robot
#Suite Teardown     Close Browser




*** Keywords ***

Check if Questionnaire AT Banner AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${icon_Banner_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM       ${folder_Banner_AEM}
    sleep  3s


AEM_AT_01_Step03 Click AT Banner Icon
    go to       https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner
    sleep  3s
AEM_AT_01_Step05 Select Carousel List API Page
    Click Element Wait AEM           ${Card create system}
    Click Element Wait AEM           ${btn_next_card_AT_Banner_AEM}
    sleep  1s
AEM_AT_01_Step06 Input value in Basic tab
    Input information AEM          ${input title carousel}       Carousel_Regression
AEM_AT_01_Step07 Click Create
    Click Element Wait AEM         ${btn_create_Carousel List API Page}
    sleep  4s
AEM_AT_01_Step08 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
AEM_AT_01_Step09 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  2s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element     ${Click_Publish_Carousel_Banner_AEM}
    Run Keyword if     '${present}'=='True'     Publish Carousel Banner AEM
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_AT_01.PNG
    sleep  1s
AEM_AT_01_Step10 Click Preview and verify Publish API on AT Banner page
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Select Frame    xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_AT_01_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s


AEM_AT_02_Step03 Click AT Banner Icon
    go to       https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner
    sleep  3s
AEM_AT_02_Step05 Select Carousel List API Page
    Click Element Wait AEM           ${Card create system}
    Click Element Wait AEM           ${btn_next_card_AT_Banner_AEM}
    sleep  1s
AEM_AT_02_Step06 Input value in Basic tab
    Input information AEM          ${input title carousel}       Carousel_Regression2
AEM_AT_02_Step07 Click Create
    Click Element Wait AEM         ${btn_create_Carousel List API Page}
    sleep  4s
AEM_AT_02_Step08 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
AEM_AT_02_Step09 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element     ${Click_Publish_Carousel_Banner_AEM}
    Run Keyword if     '${present}'=='True'     Publish Carousel Banner AEM
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_AT_02.PNG
    sleep  1s
AEM_AT_02_Step10 Click Preview and verify Publish API on AT Banner page
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Select Frame    xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_AT_02_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Reload Page
    sleep  1s


AEM_AT_03_Step03 Click AT Banner Icon
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression
    sleep  2s
AEM_AT_03_Step06 Select AT Banner Listing Page
    Click Element Wait AEM           ${card_AT_Banner_List_AEM}
    Click Element Wait AEM           ${btn_next_card_AT_Banner_AEM}
    sleep  2s
AEM_AT_03_Step07 Input value in Basic tab
    Input information AEM        ${input_title_AT_Banner_AEM}        T1X
    sleep  1s
AEM_AT_03_Step08 Input AT Banner Setting
    Click Element Wait AEM                      ${tab_AT Banner Setting_AEM}
    sleep  2s
    Textfield Value Should Be        ${input_Number of Banner_Banner_AEM}  10
    sleep  1s
    Capture Page Screenshot          ${date_today}_AEM_AT_default10.PNG
    sleep  2s
AEM_AT_03_Step09 Click Create
    Click Element Wait AEM           ${btn_create_AT Banner List_Banner_AEM}
    sleep  4s
AEM_AT_03_Step10 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM            ${btn_Preview_Page_Banner_AEM}
AEM_AT_03_Step11 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  1s
AEM_AT_03_Step12 Click Preview and verify Publish API on AT Banner page
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_AT_03_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_AT_03_EN.PNG
    sleep  2s
    Unselect Frame
AEM_AT_03_Step13 Click PagePreview AT Banner Listing Page
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_AT_03_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  2s

###Create Offer Banner
AEM_OFFER_AT_01_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  3s
AEM_OFFER_AT_01_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_01_Step08 Input value in Basic tab
    sleep  2s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_OfferT1X1
    sleep  1s
AEM_OFFER_AT_01_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        T1X 2         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_OFFER_AT_01_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_01_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_01_Preview.PNG
    sleep  3s
AEM_OFFER_AT_01_Step12 Click Page Information > Publish Page on Offer Banner Page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Offer_Banner_AEM}
    Run Keyword if     '${present}'=='True'     Publish Offer Banner AEM
    sleep  1s
AEM_OFFER_AT_01_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_01_Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_01_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_01_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_OFFER_AT_02 Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_02 Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_02 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_OfferT1X2
    sleep  1s
AEM_OFFER_AT_02 Step09 Input Offer Setting Search Rootoffer
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Select list Wait AEM                   ${selected_Search_Root Offer ID_Offer_Banner_AEM}
    sleep  1s
    Input information AEM                   ${input_Root Offer ID_Offer_Banner_AEM}        faf07439-1105-4de8-a9ed-627b458111e0       ##Rootoffer
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_OFFER_AT_02 Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_02 Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_02_Preview.PNG
    sleep  3s
AEM_OFFER_AT_02 Step12 Click Page Information > Publish Page on Offer Banner Page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Offer_Banner_AEM}
    Run Keyword if     '${present}'=='True'     Publish Offer Banner AEM
    sleep  1s
AEM_OFFER_AT_02 Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_02 Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_02_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_02_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_02_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s

AEM_OFFER_AT_Reset Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_Reset Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_Reset Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_TestReset
    sleep  1s
AEM_OFFER_AT_Reset Step09 Input Offer Setting Search Rootoffer
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Select list Wait AEM                   ${selected_Search_Root Offer ID_Offer_Banner_AEM}
    sleep  1s
    Input information AEM                   ${input_Root Offer ID_Offer_Banner_AEM}        ae653695-231c-4bda-bb54-76c4d328e566       ##Rootoffer
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_OFFER_AT_Reset Step10 Button Reset
    Click Element Wait AEM                 ${btn_reset}
    sleep  3s
AEM_OFFER_AT_Reset Step11 Click Open and verify AT Banner
    Capture Page Screenshot          AEM_OFFER_AT_Reset.PNG
    sleep  2s


AEM_OFFER_AT_03 Step05 Click Pic of AT Banner Listing Page "t1x" Step06 Click Create > Click Page
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_03 Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_03 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Testnotstart
    sleep  1s
AEM_OFFER_AT_03 Step09 Input Offer Setting Start Date Not Start
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Select list Wait AEM                   ${selected_Search_Root Offer ID_Offer_Banner_AEM}
    sleep  1s
    Input information AEM                   ${input_Root Offer ID_Offer_Banner_AEM}        d9d24661-455d-4085-bdff-b67450cc99a4       ##Rootoffenotstart
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                 ${input_StartDate}     ${date of Issuance Period_End Date_AEM}
    Input information AEM                 ${input_EndDate}       31-12-2031 23:59
    sleep  1s
AEM_OFFER_AT_03 Step10 Click Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_03 Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_OFFER_AT_03_Preview.PNG
    sleep  3s
AEM_OFFER_AT_03 Step12 Click Page Information > Publish Page on Offer Banner Page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_03 Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_03 Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_03_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_03_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_03_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_OFFER_AT_04 Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_04 Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_04 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_TestSearch_IssueCH
    sleep  1s
AEM_OFFER_AT_04 Step09 Input Offer Setting Search an offer that isn't listed in issueChannel
    Click Element Wait AEM           ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM            ${input_Title_Name_Offer_Banner_AEM}                Big Spender V.3        ##issueChannelTargeted Redemption or Collection
    sleep  2s
    capture Page Screenshot          ${date_today}_AEM_OFFER_AT_04_SearchIssue2.PNG
    sleep  1s


AEM_OFFER_AT_05 Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_05 Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_05 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_TestSearch_ThaiLanguage
    sleep  1s
AEM_OFFER_AT_05 Step09 Input Offer Setting Search by Thai language on Carousel 1
    Click Element Wait AEM           ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM            ${input_Title_Name_Offer_Banner_AEM}     รับฟรีเมนูแนะนำของร้านในเครือ
    sleep  2s
    capture Page Screenshot          ${date_today}_AEM_OFFER_AT_05_SearchThai.PNG
    sleep  1s

AEM_OFFER_AT_06 Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_OFFER_AT_06 Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_06 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Offer_Banner_AEM}                      ${date_today}_TestSearch_OfferExpired
    sleep  1s
AEM_OFFER_AT_06 Step09 Input Offer by root offer id expired on Carousel 1
    Click Element Wait AEM           ${tab_Offer Setting_AEM}
    sleep  1s
    Select list Wait AEM                   ${selected_Search_Root Offer ID_Offer_Banner_AEM}
    sleep  1s
    Input information AEM                   ${input_Root Offer ID_Offer_Banner_AEM}        7e6b2049-8b6b-42cd-93ca-e5a54a77b3bb       ##Root Offer ID Expired
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_OFFER_AT_06_RootOfferIDExpired.PNG
    sleep  1s






#Edit
AEM_OFFER_AT_07_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                                  https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_07_Step08 Edit information of Offer Setting Banner Image,Title,Short Description,Date,Link URL
    Click Element Wait AEM                 xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]
    sleep  1s
    Press Keys                             ${Banner_image_en}      CTRL+a+BACKSPACE
    Press Keys                             ${Banner_image_en}      DELETE
    sleep  1s
    Input information AEM                  ${Banner_image_en}        /content/dam/the1/banner/Banner_1_EN.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Press Keys                             ${Banner_image_th}      CTRL+a+BACKSPACE
    Press Keys                             ${Banner_image_th}      DELETE
    sleep  1s
    Input information AEM                  ${Banner_image_th}        /content/dam/the1/banner/Banner_1_TH.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input title en}         title en edit
    sleep  1s
    Input information AEM                  ${input title th}         title th แก้ไข
    sleep  1s
    Input information AEM                  ${input short description en}         Short Description en edit
    sleep  1s
    Input information AEM                  ${input short description th}         Short Description th แก้ไข
    sleep  1s
    Input information AEM                  ${Edit input input_StartDate}         ${date of Issuance Period_Start Date_AEM}
    sleep  1s
    Input information AEM                  ${Edit input input_EndDate}           ${date of Issuance Period_End Date_AEM}
    sleep  1s
    Input information AEM                  ${input link URL en}         ${Link URL EN}
    sleep  1s
    Input information AEM                  ${input link URL th}         ${Link URL TH}
    sleep  1s
AEM_OFFER_AT_07_Step09 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_07_Step10 Click Page Information > Publish Page on Offer Banner Page
    Go To        https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x1.html
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_OFFER_AT_07_Preview.PNG
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  1s
AEM_OFFER_AT_07_Step13 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_07_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_07_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_07_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_OFFER_AT_08_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                                  https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_08_Step08 Edit information of Offer Edit Offer Setting Start Date Change date Not start
    Click Element Wait AEM                 xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]
    sleep  1s
    Input information AEM                  ${Edit input input_StartDate}         ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${Edit input input_EndDate}           31-12-2031 23:59
AEM_OFFER_AT_08_Step09 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_08_Step10 Click Page Information > Publish Page on Offer Banner Page
    Go To                               https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x1.html
    sleep  2s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_08_Preview.PNG
    sleep  2s
AEM_OFFER_AT_08_Step13 Click PagePreview "t1x" on AT Banner Listing Page
    Go to                               https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_08_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_08_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_08_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_OFFER_AT_09_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                                  https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x2.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_09_Step08 Edit Offer Setting End Date Change date expired
    Click Element Wait AEM                 xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]
    sleep  2s
    Input information AEM                  ${Edit input input_EndDate}           ${date of Issuance Period_Start Date_AEM}
    sleep  1s
AEM_OFFER_AT_09_Step09 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Offer_Banner_AEM}
    sleep  3s
AEM_OFFER_AT_09_Step10 Click Page Information > Publish Page on Offer Banner Page
    Go To        https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_offert1x2.html
    sleep  2s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
    Reload Page
    sleep  2s
    Capture Page Screenshot            ${date_today}_AEM_OFFER_AT_09_Preview.PNG
    sleep  2s
AEM_OFFER_AT_09_Step13 Click PagePreview "t1x" on AT Banner Listing Page
    Go to                               https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_09_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_OFFER_AT_09_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_OFFER_AT_09_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




##############################################################
##Create_Link_Banner_AEM
#Create Link Banner
AEM_LINK_AT_01 Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression/t1x
    sleep  2s
AEM_LINK_AT_01 Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
    sleep  1s
AEM_LINK_AT_01 Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkT1X1
    sleep  1s
AEM_LINK_AT_01 Step09 Input Link Details in Link Configuration tab
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Facebook_Banner.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Facebook_Banner.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              The must-have appication for every The 1 member.
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              แอปที่สมาชิก The 1 ทุกคนต้องมี !!
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    An appication that all The 1 members must have. Load now, check your points and accumulated shopping now !!
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    แอปที่สมาชิก The 1 ทุกคนต้องมี โหลดเดี๋ยวนี้ เช็กคะแนน และยอดช้อปสะสม ได้เดี๋ยวนี้ !!
    Input information AEM                  ${input_Partner_Link_Banner_AEM}                   T1C TH
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     01-03-2021 00:00
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       31-03-2021 23:59
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Link URL
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://www.facebook.com/The1Community/
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://www.facebook.com/The1Community/
    sleep  1s
AEM_LINK_AT_01 Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_LINK_AT_01 Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_LINK_AT_01_Preview.PNG
    sleep  3s
AEM_LINK_AT_01 Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Link_Banner_AEM}
    Run Keyword if     '${present}'=='True'     Publish Link Banner AEM
    sleep  1s
AEM_LINK_AT_01 Step13 Click Preview and verify Publish API on Link Banner Page
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  1s
AEM_LINK_AT_01 Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_01_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_01_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_LINK_AT_01_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




AEM_LINK_AT_02_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                           https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_LINK_AT_02_Step09 Edit Link Setting Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tabedit_Link Details_AEM}
    sleep  1s
    Press Keys                             ${Edit Banner Image - EN}      CTRL+a+BACKSPACE
    Press Keys                             ${Edit Banner Image - EN}      DELETE
    sleep  1s
    Input information AEM                  ${Edit Banner Image - EN}       /content/dam/the1/articles/image/TransferPoint.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Press Keys                             ${Edit Banner Image - TH}      CTRL+a+BACKSPACE
    Press Keys                             ${Edit Banner Image - TH}      DELETE
    sleep  1s
    Input information AEM                  ${Edit Banner Image - TH}       /content/dam/the1/articles/image/TransferPoint.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${EditTitle - EN}              The must-have appication for every The 1 member Edit.
    Input information AEM                  ${EditTitle - TH}              แอปที่สมาชิก The 1 ทุกคนต้องมี !! แก้ไข
    Input information AEM                  ${EditShort Description - EN}    An appication that all The 1 members must have. Load now, check your points and accumulated shopping now !! Edit
    Input information AEM                  ${EditShort Description - TH}    แอปที่สมาชิก The 1 ทุกคนต้องมี โหลดเดี๋ยวนี้ เช็กคะแนน และยอดช้อปสะสม ได้เดี๋ยวนี้ !! แก้ไข
    Input information AEM                  ${Edit_Partner Link_Banner_AEM}            SCB
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${Edit Startdate Link_Banner_AEM}     28-02-2021 00:00
    Input information AEM                  ${Edit Enddate Link_Banner_AEM}       01-04-2021 23:59
    Input information AEM                  ${Edit Link Type Link_Banner_AEM}      Article
    sleep  2s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${Edit URL EN Link_Banner_AEM}     https://uat.the1.co.th/en/articles/packing-hacks-to-fit-everything-in-your-suitcase-and-have-fun-wi
    Input information AEM                  ${Edit URL TH Link_Banner_AEM}     https://uat.the1.co.th/en/articles/packing-hacks-to-fit-everything-in-your-suitcase-and-have-fun-wi
    sleep  1s
AEM_LINK_AT_02_Step10 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Link_Banner_AEM}
    sleep  3s
AEM_LINK_AT_02_Step12 Click Page Information > Publish Page on Link Banner Page
    Go To        https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  5s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  1s
    Reload Page
    sleep  1s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_02_Preview.PNG
    sleep  1s
AEM_LINK_AT_02_Step13 Click Preview and verify Publish API on Link Banner Page
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  1s
AEM_LINK_AT_02_Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_02_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_02_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_LINK_AT_02_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


AEM_LINK_AT_03_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                           https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_LINK_AT_03_Step09 Edit information and Edit Setting Start Date Change date Not start
    Click Element Wait AEM                  ${tabedit_Link Details_AEM}
    sleep  3s
    Input information AEM                  ${Edit Startdate Link_Banner_AEM}     01-01-2021 00:00
    Input information AEM                  ${Edit Enddate Link_Banner_AEM}       01-04-2021 23:59
    Input information AEM                  ${Edit Link Type Link_Banner_AEM}      Badge
    sleep  2s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${Edit URL EN Link_Banner_AEM}     https://uat.the1.co.th/en/badge/BDG_UPDATE_EMAIL_APP
    Input information AEM                  ${Edit URL TH Link_Banner_AEM}     https://uat.the1.co.th/en/badge/BDG_UPDATE_EMAIL_APP
    sleep  1s
AEM_LINK_AT_03_Step10 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Link_Banner_AEM}
    sleep  3s
AEM_LINK_AT_03_Step12 Click Page Information > Publish Page on Link Banner Page
    Go To                          https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  5s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  1s
    Reload Page
    sleep  1s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_03_Preview.PNG
    sleep  1s
AEM_LINK_AT_03_Step13 Click Preview and verify Publish API on Link Banner Page
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  1s
AEM_LINK_AT_03_Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_03_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_03_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_LINK_AT_03_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s






AEM_LINK_AT_04_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                   https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_LINK_AT_04_Step09 Edit Link Setting edit date expired
    Click Element Wait AEM                  ${tabedit_Link Details_AEM}
    sleep  3s
    Input information AEM                  ${Edit Startdate Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${Edit Link Type Link_Banner_AEM}      Reward Store
    sleep  2s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${Edit URL EN Link_Banner_AEM}     https://uat.the1.co.th/explore/e9baa64a-b38d-4ab2-b80a-3dee430a7cb4
    Input information AEM                  ${Edit URL TH Link_Banner_AEM}     https://uat.the1.co.th/explore/e9baa64a-b38d-4ab2-b80a-3dee430a7cb4
    sleep  1s
AEM_LINK_AT_04_Step10 Enter Save&Close
    Click Element Wait AEM                 ${btn_Save&close_Link_Banner_AEM}
    sleep  3s
AEM_LINK_AT_04_Step12 Click Page Information > Publish Page on Link Banner Page
    Go To        https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  1s
    Reload Page
    sleep  1s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_04_Preview.PNG
    sleep  1s
AEM_LINK_AT_04_Step13 Click Preview and verify Publish API on Link Banner Page
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  1s
AEM_LINK_AT_04_Step14 Click PagePreview "t1x" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_04_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_LINK_AT_04_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_LINK_AT_04_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s



AEM_LINK_AT_05_Step05 Click Pic of AT Banner Listing Page "t1x"
    Go To                   https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression/t1x/${date_today}_linkt1x1.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_LINK_AT_05_Step08 Not input value in Basic tab
    Press Keys                             ${Edit input_Title Link_Banner_AEM}      CTRL+a+BACKSPACE
    Press Keys                             ${Edit input_Title Link_Banner_AEM}      DELETE
    sleep  2s
    Capture Page Screenshot              ${date_today}_AEM_LINK_AT_05.PNG
    sleep  2s







#########
AEM_AT_04_Step05 Click Create > Click Page
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2
    sleep  3s
AEM_AT_04_Step06 Select AT Banner Listing Page
    Click Element Wait AEM           ${card_AT_Banner_List_AEM}
    Click Element Wait AEM           ${btn_next_card_AT_Banner_AEM}
AEM_AT_04_Step07 Input value in Basic tab
    Input information AEM        ${input_title_AT_Banner_AEM}        Default
AEM_AT_04_Step08 Input AT Banner Setting
    sleep  3s
    Click Element Wait AEM                      ${tab_AT Banner Setting_AEM}
    sleep  2s
    Textfield Value Should Be        ${input_Number of Banner_Banner_AEM}  10
    sleep  2s
AEM_AT_04_Step09 Click Create
    Click Element Wait AEM                      ${btn_create_AT Banner List_Banner_AEM}
    sleep  3s
AEM_AT_04_Step10 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
AEM_AT_04_Step11 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  2s
AEM_AT_04_Step12 Click Preview and verify Publish API on AT Banner page
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
#     Capture Page Screenshot             ${date_today}_AEM_AT_04_TH.PNG
#     Select Frame    xpath=//iframe[@id='ContentFrame']
#     sleep  1s
#     Click Element Wait AEM            ${btn_EN_Preview_AT_Banner_AEM}
#     sleep  2s
#     Capture Page Screenshot             ${date_today}_AEM_AT_04_EN.PNG
#     sleep  3s
#     Unselect Frame
# AEM_AT_04_Step13 Click PagePreview AT Banner Listing Page
#     Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
#     sleep  2s
#     Select Frame                        xpath=//iframe[@id='ContentFrame']
# #Get API by Postman
#     ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
#     Set Global Variable           ${url_json}
#     Append To File      ${TestResult_Banner_API}     ${url_json}\n
#     ${header} =    Create Dictionary       Content-Type=application/json      type=json
#     Create Session     Get API_Personalization     ${url_json}
#     ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
#     Append To File      ${TestResult_Banner_API}        ${resp.text}\n

#     Click Element Wait AEM              ${link_Publish API_Banner_AEM}
#     sleep  1s
#     Switch Window   New
#     sleep  3s
#     Capture Page Screenshot             ${date_today}_AEM_AT_04_API.PNG
#     sleep  3s
#     Close window
#     sleep  3s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  3s
#     Reload Page
#     sleep  2s



AEM_AT_04_L1 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L1 AEM_OFFER_AT_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
AEM_AT_04_L1 AEM_OFFER_AT_Step08 Input value in Basic tab
    sleep  2s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Offerbanner1
    sleep  1s
AEM_AT_04_L1 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        Reward_Fashion1 Title EN         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_AT_04_L1 AEM_OFFER_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L1 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  4s
AEM_AT_04_L1 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L1 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  4s
AEM_AT_04_L2 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L2 AEM_OFFER_AT_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
AEM_AT_04_L2 AEM_OFFER_AT_Step08 Input value in Basic tab
    sleep  2s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Offerbanner2
    sleep  1s
AEM_AT_04_L2 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        Reward_Fashion2 Title EN         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_AT_04_L2 AEM_OFFER_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L2 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L2 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L2 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L3 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L3 AEM_OFFER_AT_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
AEM_AT_04_L3 AEM_OFFER_AT_Step08 Input value in Basic tab
    sleep  2s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Offerbanner3
    sleep  1s
AEM_AT_04_L3 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        Reward_Fashion3 Title EN         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_AT_04_L3 AEM_OFFER_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L3 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L3 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L3 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L4 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L4 AEM_OFFER_AT_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
AEM_AT_04_L4 AEM_OFFER_AT_Step08 Input value in Basic tab
    sleep  2s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Offerbanner4
    sleep  1s
AEM_AT_04_L4 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        Reward_Fashion4 Title EN         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_AT_04_L4 AEM_OFFER_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L4 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L4 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L4 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L5 AEM_OFFER_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L5 AEM_OFFER_AT_Step07 Select Offer Banner Page
    Click Element Wait AEM           ${card_AT_Offer_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Offer_Banner_AEM}
AEM_AT_04_L5 AEM_OFFER_AT_Step08 Input value in Basic tab
    sleep  1s
    Input information AEM            ${input_title_Offer_Banner_AEM}        ${date_today}_Offerbanner5
    sleep  1s
AEM_AT_04_L5 AEM_OFFER_AT_Step09 Input Offer Setting Search by Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Offer Setting_AEM}
    sleep  1s
    Input information AEM                   ${input_Title_Name_Offer_Banner_AEM}        Reward_Fashion5 Title EN         ##title
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
AEM_AT_04_L5 AEM_OFFER_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L5 AEM_OFFER_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM            ${btn_open_AT_Offer_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Offer_Banner_AEM}
    sleep  3s
AEM_AT_04_L5 AEM_OFFER_AT_Step12 Click Page Information > Publish Page on Offer Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}       15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Offer_Banner_AEM}
    sleep  2s
AEM_AT_04_L5 AEM_OFFER_AT_Step13 Click Preview and verify Publish API on Offer Banner Page
    Click Element Wait AEM              ${btn_Preview_Page_Offer_Banner_AEM}
    sleep  3s


AEM_AT_04_L6_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  3s
AEM_AT_04_L6_AEM_LINK_AT_Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
    sleep  1s
AEM_AT_04_L6_AEM_LINK_AT_Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkBanner1
    sleep  2s
AEM_AT_04_L6_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_1_EN.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_1_TH.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              Test Banner
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    Test Banner escription
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    รายละเอียด ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Partner_Link_Banner_AEM}            T1C TH
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Link URL
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://www.facebook.com/
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://www.facebook.com/
    sleep  1s
AEM_AT_04_L6_AEM_LINK_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L6_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM                 ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L6_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  2s


AEM_AT_04_L7_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  2s
AEM_AT_04_L7_AEM_LINK_AT_Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
    sleep  2s
AEM_AT_04_L7_AEM_LINK_AT_Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkBanner2
    sleep  1s
AEM_AT_04_L7_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_2_EN.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_1_TH.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              Test Banner2
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              ทดสอบ แบนเนอร์2
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    Test Banner escription
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    รายละเอียด ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Partner_Link_Banner_AEM}            Agoda
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Article
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://uat.the1.co.th/en/articles/tips-to-choose-the-right-swimsuit-for-your-baby-for-comfort-and-
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://uat.the1.co.th/en/articles/tips-to-choose-the-right-swimsuit-for-your-baby-for-comfort-and-
    sleep  1s
AEM_AT_04_L7_AEM_LINK_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L7_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM                 ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L7_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  2s
AEM_AT_04_L8_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  2s
AEM_AT_04_L8_AEM_LINK_AT_Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
AEM_AT_04_L8_AEM_LINK_AT_Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkBanner3
    sleep  1s
AEM_AT_04_L8_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_3_EN.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_3_TH.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              Test Banner3
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              ทดสอบ แบนเนอร์3
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    Test Banner escription
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    รายละเอียด ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Partner_Link_Banner_AEM}            SCB
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Reward Store
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://uat.the1.co.th/explore/57b01d9d-b682-409c-a714-731ba450117857b01d9d-b682-409c-a714-731ba4501178
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://uat.the1.co.th/explore/57b01d9d-b682-409c-a714-731ba450117857b01d9d-b682-409c-a714-731ba4501178
    sleep  1s
AEM_AT_04_L8_AEM_LINK_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L8_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM                 ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L8_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  2s
AEM_AT_04_L9_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  2s
AEM_AT_04_L9_AEM_LINK_AT_Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
AEM_AT_04_L9_AEM_LINK_AT_Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkBanner4
    sleep  1s
AEM_AT_04_L9_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_4_EN.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_4_TH.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              Test Banner4
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              ทดสอบ แบนเนอร์4
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    Test Banner escription
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    รายละเอียด ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Partner_Link_Banner_AEM}            THE 1 CENTRAL
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Link URL
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://app-download.onelink.me/oxGp/bfe78efb
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://app-download.onelink.me/oxGp/bfe78efb
    sleep  1s
AEM_AT_04_L9_AEM_LINK_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L9_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM                 ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L9_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  2s
AEM_AT_04_L10_AEM_LINK_AT_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  2s
AEM_AT_04_L10_AEM_LINK_AT_Step07 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
AEM_AT_04_L10_AEM_LINK_AT_Step08 Input value in Basic tab
    Input information AEM            ${input_title_Link_Banner_AEM}       ${date_today}_LinkBanner5
    sleep  1s
AEM_AT_04_L10_AEM_LINK_AT_Step09 Input Link Details Title, Short Description, or Partner Name
    Click Element Wait AEM                  ${tab_Link Details_AEM}
    sleep  1s
    Input information AEM                  ${input_Banner Image - EN *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_5_EN.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Banner Image - TH *_Link_Banner_AEM}       /content/dam/the1/banner/Banner_5_TH.jpg
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Title - EN *_Link_Banner_AEM}              Test Banner5
    Input information AEM                  ${input_Title - TH *_Link_Banner_AEM}              ทดสอบ แบนเนอร์5
    Input information AEM                  ${input_Short Description - EN_Link_Banner_AEM}    Test Banner escription
    Input information AEM                  ${input_Short Description - TH_Link_Banner_AEM}    รายละเอียด ทดสอบ แบนเนอร์
    Input information AEM                  ${input_Partner_Link_Banner_AEM}            THE 1 CENTRAL
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_Start Date *_Link_Banner_AEM}     ${date of Issuance Period_Start Date_AEM}
    Input information AEM                  ${input_End Date *_Link_Banner_AEM}       ${date of Issuance Period_End Date_AEM}
    Input information AEM                  ${input_Link Type *_Link_Banner_AEM}      Badge
    sleep  3s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM                  ${input_URL - EN *_Link_Banner_AEM}     https://uat.the1.co.th/en/badge/BDG_SPNDER
    Input information AEM                  ${input_URL - TH *_Link_Banner_AEM}     https://uat.the1.co.th/en/badge/BDG_SPNDER
    sleep  1s
AEM_AT_04_L10_AEM_LINK_AT_Step10 Enter Create
    Click Element Wait AEM                 ${btn_create_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L10_AEM_LINK_AT_Step11 Click Open and verify AT Banner
    Click Element Wait AEM                 ${btn_open_AT_Link_Banner_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Switch Window     title=STAGE | AEM Sites
    sleep  5s
    Close window
    sleep  4s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_L10_AEM_LINK_AT_Step12 Click Page Information > Publish Page on Link Banner Pagee
    Wait Until Page Contains Element    ${btn_Page_Infomation_Link_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Link_Banner_AEM}        15   20
    sleep  3s
    Click Element Wait AEM              ${btn_Publish Page_Link_Banner_AEM}
    sleep  2s
AEM_AT_04_Step13 Click Preview and verify Publish API on Link Banner Page
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  3s
AEM_AT_04_Step14 Click PagePreview "default" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_AT_4_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_AT_4_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_AT_4_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s





AEM_AT_05_Step05 Click Pic of AT Banner Listing Page "default"
    Go To      https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/banner/carousel_regression2/default
    sleep  2s
AEM_AT_05_Step06 Select Link Banner Page
    Click Element Wait AEM           ${card_AT_Link_Banner_Page_AEM}
    Click Element Wait AEM           ${btn_next_card_Link_Banner_AEM}
AEM_AT_05_Step07 Not input value in Basic tab
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_AT_5.PNG
    sleep  2s




AEM_AT_06_Step05 Click Pic of AT Banner Listing Page
    Go To      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_AT_06_Step07 Edit Title : Default > Default Edit
    sleep  2s
    Press Keys                   ${Edit input_Title List_Banner_AEM}      CTRL+a+BACKSPACE
    Press Keys                   ${Edit input_Title List_Banner_AEM}      DELETE
    sleep  2s
    Input information AEM        ${Edit input_Title List_Banner_AEM}        Default Edit
    sleep  2s
    Click Element Wait AEM       ${btn_save&close_listing_AEM}
    sleep  3s
AEM_AT_06_Step08 Click Preview and verify Publish API on Listing Banner Page
    go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot          AEM_AT_06_Preview_TH.PNG
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']
    Click Element Wait AEM            ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot          AEM_AT_06_Preview_EN.PNG
    sleep  2s
    Unselect Frame
AEM_AT_06_Step11 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  2s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
    sleep  2s
AEM_AT_06_Step14 Click PagePreview "default" on AT Banner Listing Page
    Go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_AT_06_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_AT_06_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_AT_06_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s





AEM_AT_07_Step05 Click Pic of AT Banner Listing Page
    Go To      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  1s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Banner_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Banner_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Offer_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Offer_Banner_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Open_Properties_Banner_AEM}
    sleep  3s
AEM_AT_07_Step07 Edit AT Banner Setting Number of Banner : 10 >1
    Click Element Wait AEM       ${tab_edit_AT Banner Setting}
    sleep  2s
    Press Keys                   ${Edit Number of Banner}      CTRL+a+BACKSPACE
    Press Keys                   ${Edit Number of Banner}      DELETE
    sleep  2s
    Input information AEM        ${Edit Number of Banner}      1
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_AT_07_10to1.PNG
    sleep  1s
    Click Element Wait AEM       ${btn_save&close_listing_AEM}
    sleep  3s
AEM_AT_07_Step08 Click Preview and verify Publish API on Listing Banner Page
    go to      https://uatcreator.the1.co.th/editor.html/content/the1/banner/carousel_regression2/default.html
    sleep  3s
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_AT_07_Preview.PNG
AEM_AT_07_Step11 Click Page Information > Publish Page on AT Banner page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Banner_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Banner_AEM}     15   20
    sleep  2s
    Click Element Wait AEM              ${btn_Publish Page_Banner_AEM}
    sleep  2s
    Click Element Wait AEM              ${btn_Preview_Link_Banner_AEM}
AEM_AT_07_Step14 Click PagePreview "default" on AT Banner Listing Page
    sleep  3s
    Capture Page Screenshot             ${date_today}_AEM_AT_07_TH.PNG
    Select Frame                        xpath=//iframe[@id='ContentFrame']
    sleep  1s
    Click Element Wait AEM              ${btn_EN_Preview_AT_Banner_AEM}
    sleep  2s
    Capture Page Screenshot             ${date_today}_AEM_AT_07_EN.PNG
    sleep  2s
    Unselect Frame
    Click Element Wait AEM              ${btn_Preview_Page_Banner_AEM}
    sleep  2s
    Select Frame                        xpath=//iframe[@id='ContentFrame']
#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Banner_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Banner_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Banner_API}        ${resp.text}\n

    Click Element Wait AEM              ${link_Publish API_Banner_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot              ${date_today}_AEM_AT_07_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s

