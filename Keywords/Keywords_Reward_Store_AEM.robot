*** Settings ***
Documentation
Library    Selenium2Library
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Reward_Store_AEM.robot


*** Keywords ***

Check if Questionnaire Reward Store AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${icon_Reward Store_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    sleep  3s



#Reward_Store_AEM_01 Create System Page for each Reward Store Type via AEM
Reward_Store_AEM_01_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards
Reward_Store_AEM_01_Step06 Select Reward Page
    Click Element Wait AEM           ${card_system_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_01_Step07 Input Title Name > Click Create
    Input information AEM      ${input_offer_title_AEM}     ${date_today}_Reward_Store_Type
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_01_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Capture Page Screenshot         ${date_today}_Reward_Store_AEM_01.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s

#Reward_Store_AEM_02 Edit Name of Reward Store Type via AEM
Reward_Store_AEM_02_Step01 Edit Reward Store Type
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/rewards/${date_today}_rewardstoretype.html
    sleep  5s
    Wait Until Page Contains Element    ${Btn_Page_Infomation_Reward Store_AEM}
    Click Element At Coordinates        ${Btn_Page_Infomation_Reward_Store_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${Btn_Open_Properties_Reward Store_AEM}
    sleep  3s
    Clear Element Text     ${Input_Title_Reward Store_AEM}
    Input information AEM     ${Input_Title_Reward Store_AEM}     ${date_today}_Reward_Store_Type_Edit
    Click Element Wait AEM           ${btn Save Reward Store_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_02.PNG
    sleep  3s

#Reward_Store_AEM_03 Create Reward Store Type All and Eligibility Public via AEM
Reward_Store_AEM_03_Step05 Click Create > Click Page
    Go To          https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_03_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_03_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_All
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_03_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_03_Step09 Click Edit Reward > Click Configure
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Reward_Store_AEM_03_Step10 Input Rewards Store Information
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_All_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       1
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       All Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       All Display Name English
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Select list AEM           ${checked_No End Date_Reward_Store_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
Reward_Store_AEM_03_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_03_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_03_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_03.PNG
Reward_Store_AEM_03_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${module_Reward Store_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_All
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_All
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Element Should Be Enabled        ${Checked_Active Period_No End Date_Reward Store_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        All Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        All Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         All
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        1
    sleep  3s


#Reward_Store_AEM_04 Create Reward Store Type Partner and Eligibility Public via AEM
Reward_Store_AEM_04_Step05 Click Create > Click Page
    Go To          https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  2s
Reward_Store_AEM_04_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_04_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_Partner
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_04_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_04_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
Reward_Store_AEM_04_Step10 Input Rewards Store Information
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_Partner_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       1
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       Partner Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Partner Display Name English
    Select list AEM                ${select_Display On Explore Page_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Explore Page_False_Reward_Store_AEM}
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM          ${input_partner_Reward_Store_AEM}    Central Department Store
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_04_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_04_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_04_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_04.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_04_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_Partner
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element       ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be        ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_Partner
    Textfield Value Should Be        ${field_Active Period_Start Date_Reward Store_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be        ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        Partner Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        Partner Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             0
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_PartnerCode_Reward Store_SMP}      CDS
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         Partner
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        1
    sleep  3s



#Reward_Store_AEM_05 Create Reward Store Type T1X-Reward and Eligibility Public via AEM
Reward_Store_AEM_05_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_05_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_05_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_T1X-Reward
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_05_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_05_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
Reward_Store_AEM_05_Step10 Input Rewards Store Information
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_T1X_Reward_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       4
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       T1X-Reward Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       T1X-Reward Display Name English
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_05_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_05_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_05_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_05.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_05_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_T1X-Reward
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_T1X-Reward
    Textfield Value Should Be        ${field_Active Period_Start Date_Reward Store_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be        ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        T1X-Reward Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        T1X-Reward Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         T1X-Reward
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        4
    sleep  3s


#Reward_Store_AEM_06 Create Reward Store Type T1X-Bulk Offer and Eligibility Public via AEM
Reward_Store_AEM_06_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_06_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_06_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_T1X-Bulk Offer
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_06_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_06_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
Reward_Store_AEM_06_Step10 Input Rewards Store Information
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_T1X-Bulk Offer_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       1
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       T1X-Bulk Offer Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       T1X-Bulk Offer Display Name English
    Input information AEM          ${input_Title TH_Reward_Store_AEM}              ของขวัญคัดสรรพิเศษเพื่อคุณ Title TH
    Input information AEM          ${input_Title EN_Reward_Store_AEM}              Birthday Surprises Title EN
    Input information AEM          ${input_Short Description TH_Reward_Store_AEM}    ของขวัญสุดพิเศษสำหรับเดือนเกิดของคุณ Short Description TH
    Input information AEM          ${input_Short Description EN_Reward_Store_AEM}    Special Birthday Rewards on Your Birthday Month Short Description EN
    Input information AEM          ${input_Description TH_Reward_Store_AEM}    หมายเหตุ : คูปองนี้ได้อยู่ในหน้ามายรีวอร์ดของลูกค้าแล้ว Description TH
    Input information AEM          ${input_Description EN_Reward_Store_AEM}    Note : This reward has been collected in 'My Rewards' Description EN
    Input information AEM          ${input_Header List Text TH_Reward_Store_AEM}    ระยะเวลาการใช้คูปอง 1 มีนาคม 2563 - 31 พฤษภาคม 2563 Header List Text TH
    Input information AEM          ${input_Header List Text EN_Reward_Store_AEM}    Valid 1 Mar 2020 - 31 May 2020 Header List Text EN
    Select list AEM                ${select_Display On Explore Page_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Explore Page_False_Reward_Store_AEM}
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_06_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_06_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_06_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_06.PNG
    sleep  3s
Reward_Store_AEM_06_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_T1X-Bulk Offer
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be        ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_T1X-Bulk Offer
    Textfield Value Should Be        ${field_Active Period_Start Date_Reward Store_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be        ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}      T1X-Bulk Offer Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}      T1X-Bulk Offer Display Name ไทย
    Wait Until Element Contains         ${field_TitleEn_Reward Store_SMP}               Birthday Surprises Title EN
    Wait Until Element Contains         ${field_TitleTh_Reward Store_SMP}      ของขวัญคัดสรรพิเศษเพื่อคุณ Title TH
    Wait Until Element Contains         ${field_ShortDescEn_Reward Store_SMP}      Special Birthday Rewards on Your Birthday Month Short Description EN
    Wait Until Element Contains         ${field_ShortDescTh_Reward Store_SMP}      ของขวัญสุดพิเศษสำหรับเดือนเกิดของคุณ Short Description TH
    Wait Until Element Contains         ${field_DescEn_Reward Store_SMP}      Note : This reward has been collected in 'My Rewards' Description EN
    Wait Until Element Contains         ${field_DescTh_Reward Store_SMP}      หมายเหตุ : คูปองนี้ได้อยู่ในหน้ามายรีวอร์ดของลูกค้าแล้ว Description TH
    Wait Until Element Contains         ${field_HdrListEn_Reward Store_SMP}         Valid 1 Mar 2020 - 31 May 2020 Header List Text EN
    Wait Until Element Contains         ${field_HdrListTh_Reward Store_SMP}         ระยะเวลาการใช้คูปอง 1 มีนาคม 2563 - 31 พฤษภาคม 2563 Header List Text TH
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}      0
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}      0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobBannerUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_MobBannerUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebBannerUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_WebBannerUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}      T1X-Bulk Offer
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}      1
    sleep  3s



#Reward_Store_AEM_07 Create Reward Store Type Category and Eligibility Public via AEM
Reward_Store_AEM_07_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_07_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_07_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_Category
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_07_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_07_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
Reward_Store_AEM_07_Step10 Input Rewards Store Information
    sleep    1s
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_Category_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       5
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       Category Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Category Display Name English
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_07_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_07_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_07_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_07.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_07_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_Category
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element      ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_Category
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        Category Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        Category Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         Category
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        5
    sleep  3s

#Reward_Store_AEM_08 Create Reward Store Type Targeted and Eligibility Public via AEM
Reward_Store_AEM_08_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_08_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_08_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_Targeted_Justforyou
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_08_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_08_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Reward_Store_AEM_08_Step10 Input Rewards Store Information
    sleep    1s
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_Targeted_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       3
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       Justforyou Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Justforyou Display Name English
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_08_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_08_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_08_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_08.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_08_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_Targeted_Justforyou
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element      ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_Targeted_Justforyou
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        Justforyou Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        Justforyou Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         Targeted
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        3
    sleep  3s

#Reward_Store_AEM_09 Create Reward Store Type Targeted and Eligibility Private via AEM
Reward_Store_AEM_09_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_09_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_09_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_Targeted_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_09_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_09_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Reward_Store_AEM_09_Step10 Input Rewards Store Information
    sleep    1s
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_Targeted_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Private Reward Store-Invite_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       0
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       Targeted_1 Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Targeted_1 Display Name English
    Select list AEM                ${select_Display On Explore Page_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Explore Page_False_Reward_Store_AEM}
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_09_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_09_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_09_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_09.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_09_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_Targeted_1
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element      ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_Targeted_1
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Limited_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        Targeted_1 Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        Targeted_1 Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             0
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         Targeted
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        0
    sleep  3s

#Reward_Store_AEM_10 Create Reward Store Type Seasonal and Eligibility Public via AEM
Reward_Store_AEM_10_Step05 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/rewards/${date_today}_rewardstoretype
    sleep  1s
Reward_Store_AEM_10_Step06 Select Reward Page
    Click Element Wait AEM           ${card_Reward Store_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Reward_Store_AEM_10_Step07 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Store_Seasonal
    Click Element AEM          ${btn_create_offer_title_AEM}
Reward_Store_AEM_10_Step08 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_10_Step09 Click Edit Reward > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Reward_Store_AEM_10_Step10 Input Rewards Store Information
    Select list AEM           ${select_Reward Store Type_AEM}
    Select list AEM           ${selected_Reward Store Type_Seasonal_AEM}
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Public Reward Store_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       2
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       Seasonal Display Name ไทย
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Seasonal Display Name English
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_Start Date_Reward_Store_AEM}       ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Dark_Reward_Store_AEM}     /content/dam/reward-stores/D_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-TH-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/L_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Web Image-EN-Color_Reward_Store_AEM}     /content/dam/reward-stores/C_BOT.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Reward_Store_AEM_10_Step11 Verify Rewards Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_10_Step12 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  3s
Reward_Store_AEM_10_Step13 Verify Reward Page
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_10.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_10_Step14 Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_Seasonal
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element      ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_Seasonal
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        Seasonal Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        Seasonal Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         Seasonal
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        2
    sleep  3s






#Reward_Store_AEM_11 Edit order and date Reward Store Type All and Eligibility Public via AEM
Reward_Store_AEM_11_Step01 Go to Edit Reward Store
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/rewards/${date_today}_rewardstoretype/${date_today}_rewardstoreall.html
Reward_Store_AEM_11_Step02 Click Edit Reward Store > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
    sleep  3s
Reward_Store_AEM_11_Step03 Edit Rewards Store Information
    Select list AEM           ${select_Reward Store Eligibility_AEM}
    Select list AEM           ${selected_Reward Store Eligibility Private Reward Store-Invite_AEM}
    Clear Element Text     ${input_Reward Store Order_AEM}
    Input information AEM          ${input_Reward Store Order_AEM}       2
    Select list AEM                ${select_Display On Guest Mode_Reward_Store_AEM}
    Select list AEM                ${selected_Display On Guest Mode_False_Reward_Store_AEM}
    Select list AEM               ${checked_No End Date_Reward_Store_AEM}
    Input information AEM        ${input_Active Period_End Date_Reward_Store_AEM}         ${date of Issuance Period_End Date_AEM}
    sleep    1s
    Clear Element Text     ${input_Mobile Image-TH-Light_Reward_Store_AEM}
    Input information AEM          ${input_Mobile Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/AUTTAPOL.jpg
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-TH-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text     ${input_Mobile Image-EN-Light_Reward_Store_AEM}
    Input information AEM          ${input_Mobile Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/AUTTAPOL.jpg
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM          ${input_Mobile Image-EN-Banner_Reward_Store_AEM}      /content/dam/reward-stores/Bot_Banner.png
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text     ${input_Web Image-TH-Light_Reward_Store_AEM}
    Input information AEM          ${input_Web Image-TH-Light_Reward_Store_AEM}     /content/dam/reward-stores/AUTTAPOL.jpg
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Clear Element Text     ${input_Web Image-EN-Light_Reward_Store_AEM}
    Input information AEM          ${input_Web Image-EN-Light_Reward_Store_AEM}     /content/dam/reward-stores/AUTTAPOL.jpg
    sleep    3s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
Reward_Store_AEM_11_Step04 Verify Rewards Store Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_11_Step05 Click Rewards Store > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  5s
Reward_Store_AEM_11_Step06 Verify Reward Store Page after Edit
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_11.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_11_Step07 Verify Reward Store on SMP after Edit
    Go To           ${url_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${module_Reward Store_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_All
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be       ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_All
    Textfield Value Should Be       ${field_Active Period_Start Date_Reward Store_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Limited_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}        All Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}        All Display Name ไทย
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}             1
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}              0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/AUTTAPOL.jpg
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/AUTTAPOL.jpg
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}         https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobBannerUrlEn_Reward Store_SMP}            https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_MobBannerUrlTh_Reward Store_SMP}            https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/AUTTAPOL.jpg
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/AUTTAPOL.jpg
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}         All
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}        2
    sleep  3s

#Reward_Store_AEM_12 Edit information Reward Store Type T1X-Bulk Offer and Eligibility Public via AEM
Reward_Store_AEM_12_Step01 Go to Edit Reward Store
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/rewards/${date_today}_rewardstoretype/${date_today}_rewardstoret1x-bulk-offer.html
Reward_Store_AEM_12_Step02 Click Edit Reward Store > Click Configure
    sleep  5s
    Click Element Wait AEM     ${btn_Submit_e_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_Edit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Double Click Element AEM          ${btn_edit_offer_AEM}
Reward_Store_AEM_12_Step03 Edit Rewards Store Information
    sleep    1s
    Clear Element Text     ${input_Display Name TH_Reward_Store_AEM}
    Input information AEM          ${input_Display Name TH_Reward_Store_AEM}       แก้ไข T1X-Bulk Offer Display Name ไทย
    Clear Element Text     ${input_Display Name EN_Reward_Store_AEM}
    Input information AEM          ${input_Display Name EN_Reward_Store_AEM}       Edit T1X-Bulk Offer Display Name English
    Clear Element Text     ${input_Title TH_Reward_Store_AEM}
    Input information AEM          ${input_Title TH_Reward_Store_AEM}              แก้ไข ของขวัญคัดสรรพิเศษเพื่อคุณ Title TH
    Clear Element Text     ${input_Title EN_Reward_Store_AEM}
    Input information AEM          ${input_Title EN_Reward_Store_AEM}              Edit Birthday Surprises Title EN
    Clear Element Text     ${input_Short Description TH_Reward_Store_AEM}
    Input information AEM          ${input_Short Description TH_Reward_Store_AEM}    แก้ไข ของขวัญสุดพิเศษสำหรับเดือนเกิดของคุณ Short Description TH
    Clear Element Text     ${input_Short Description EN_Reward_Store_AEM}
    Input information AEM          ${input_Short Description EN_Reward_Store_AEM}    Edit Special Birthday Rewards on Your Birthday Month Short Description EN
    Clear Element Text     ${input_Description TH_Reward_Store_AEM}
    Input information AEM          ${input_Description TH_Reward_Store_AEM}    แก้ไข หมายเหตุ : คูปองนี้ได้อยู่ในหน้ามายรีวอร์ดของลูกค้าแล้ว Description TH
    Clear Element Text     ${input_Description EN_Reward_Store_AEM}
    Input information AEM          ${input_Description EN_Reward_Store_AEM}    Edit Note : This reward has been collected in 'My Rewards' Description EN
    Clear Element Text     ${input_Header List Text TH_Reward_Store_AEM}
    Input information AEM          ${input_Header List Text TH_Reward_Store_AEM}    แก้ไข ระยะเวลาการใช้คูปอง 1 มีนาคม 2563 - 31 พฤษภาคม 2563 Header List Text TH
    Clear Element Text     ${input_Header List Text EN_Reward_Store_AEM}
    Input information AEM          ${input_Header List Text EN_Reward_Store_AEM}    Edit Valid 1 Mar 2020 - 31 May 2020 Header List Text EN
    sleep    1s
Reward_Store_AEM_12_Step04 Verify Rewards Store Information
    Click Element AEM           ${btn_done_create_Reward_Store_AEM}
    sleep  1s
Reward_Store_AEM_12_Step05 Click Rewards Store > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame     xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Reward_Store_AEM}
    sleep  5s
    Reload Page
    sleep  5s
Reward_Store_AEM_12_Step06 Verify Reward Store Page after Edit
    Capture Page Screenshot          ${date_today}_Reward_Store_AEM_12.PNG
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Reward_Store_AEM_12_Step07 Verify Reward Store on SMP after Edit
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_Reward Store_SMP}
    Input information SMP         ${input_search_Reward Store_SMP}       ${date_today}_Reward_Store_T1X-Bulk Offer
    Click Element Wait SMP        ${btn_search_Reward Store_SMP}
    Click Element Wait SMP        ${btn_edit_Reward Store_SMP}
    sleep  2s
    Wait Until Page Contains Element        ${field_Title Name_Reward Store_SMP}
    sleep  2s
    Textfield Value Should Be        ${field_Title Name_Reward Store_SMP}    ${date_today}_Reward_Store_T1X-Bulk Offer
    Textfield Value Should Be        ${field_Active Period_Start Date_Reward Store_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be        ${field_Active Period_End Date_Reward Store_SMP}        ${date of Issuance Period_End Date_offer_SMP}
    Element Should Be Enabled        ${radio_Access_Public_Reward Store_SMP}
#Custom Data
    Wait Until Element Contains         ${field_CategoryEn_Reward Store_SMP}      Edit T1X-Bulk Offer Display Name English
    Wait Until Element Contains         ${field_CategoryTH_Reward Store_SMP}      แก้ไข T1X-Bulk Offer Display Name ไทย
    Wait Until Element Contains         ${field_TitleEn_Reward Store_SMP}               Edit Birthday Surprises Title EN
    Wait Until Element Contains         ${field_TitleTh_Reward Store_SMP}      แก้ไข ของขวัญคัดสรรพิเศษเพื่อคุณ Title TH
    Wait Until Element Contains         ${field_ShortDescEn_Reward Store_SMP}      Edit Special Birthday Rewards on Your Birthday Month Short Description EN
    Wait Until Element Contains         ${field_ShortDescTh_Reward Store_SMP}      แก้ไข ของขวัญสุดพิเศษสำหรับเดือนเกิดของคุณ Short Description TH
    Wait Until Element Contains         ${field_DescEn_Reward Store_SMP}      Edit Note : This reward has been collected in 'My Rewards' Description EN
    Wait Until Element Contains         ${field_DescTh_Reward Store_SMP}      แก้ไข หมายเหตุ : คูปองนี้ได้อยู่ในหน้ามายรีวอร์ดของลูกค้าแล้ว Description TH
    Wait Until Element Contains         ${field_HdrListEn_Reward Store_SMP}         Edit Valid 1 Mar 2020 - 31 May 2020 Header List Text EN
    Wait Until Element Contains         ${field_HdrListTh_Reward Store_SMP}         แก้ไข ระยะเวลาการใช้คูปอง 1 มีนาคม 2563 - 31 พฤษภาคม 2563 Header List Text TH
    Wait Until Element Contains         ${field_displayOnExplore_Reward Store_SMP}      0
    Wait Until Element Contains         ${field_displayForGuest_Reward Store_SMP}      0
    Wait Until Element Contains         ${field_MobLightImageUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlEn_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobLightImageUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_MobDarkImageUrlTh_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/D_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlEn_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobActImageUrlTh_Reward Store_SMP}          https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_MobBannerUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_MobBannerUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_WebImageUrlEn_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebImageUrlTh_Reward Store_SMP}             https://uatlibrary.the1.co.th/content/dam/reward-stores/L_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlEn_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebActImageUrlTh_Reward Store_SMP}      https://uatlibrary.the1.co.th/content/dam/reward-stores/C_BOT.png
    Wait Until Element Contains         ${field_WebBannerUrlEn_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_WebBannerUrlTh_Reward Store_SMP}        https://uatlibrary.the1.co.th/content/dam/reward-stores/Bot_Banner.png
    Wait Until Element Contains         ${field_Type_Reward Store_SMP}      T1X-Bulk Offer
    Wait Until Element Contains         ${field_Order_Reward Store_SMP}      1
    sleep  3s












