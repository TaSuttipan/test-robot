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
Resource    ../Variable/Variable_Partner_AEM.robot


*** Keywords ***

Create Campaign 3Transfer on SMP
    sleep  12s
    Click Element Wait SMP                   ${module_campaign}
    sleep  10s
    Wait Until Element Is Visible   ${btn_createcampaign}
    Click Element Wait SMP                   ${btn_createcampaign}
    Wait Until Element Is Visible   ${btn_promotion}
    Click Element Wait SMP                   ${btn_promotion}
    sleep  3s
    Click Element Wait SMP              ${add_namecampaign}
    Input information SMP           ${add_namecampaign}    BDG_${date_today}_${Name_Badge_01}
    Click Element Wait SMP                   ${btn_create}
    sleep  12s
    Click Element Wait SMP                 ${edit datetime}
    Press Keys                    ${btn select datetime}     CTRL+a+BACKSPACE
    Press Keys                    ${btn select datetime}    DELETE
    sleep  2s
    input information SMP         ${btn select datetime}     ${date_todaystart}
    sleep  2s
    Press Keys                     ${btn select datetime End}     CTRL+a+BACKSPACE
    Press Keys                     ${btn select datetime End}     DELETE
    sleep  2s
    input information SMP          ${btn select datetime End}     ${date_todayEnd}
    sleep  2s
    Click Element Wait SMP                 ${btn ok datetime}
    sleep  2s
    Wait Until Element Is Visible   ${btn_addbehavior}
    Click Element Wait SMP                   ${btn_addbehavior}
    sleep  2s
    Click Element Wait SMP                   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Activated
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Wait Until Element Is Visible   ${select_customevent}
    Click Element Wait SMP                   ${select_customevent}
    Click Element Wait SMP                   ${select_engages}
    sleep  2s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    p2p_transfer
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced}
    Click Element Wait SMP                   ${btn_advanced}
    sleep  3s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}         BDG_${date_today}_${Name_Badge_01}_activated;;604800
    Click Element Wait SMP                   ${btn_OK}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save}
    sleep  8s
    Click Element Wait SMP                   ${btn_addbehavior2}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Inprogress
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select_customevent2}
    Click Element Wait SMP                   ${select_engages2}
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    p2p_transfer
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced2}
    Click Element Wait SMP                   ${btn_advanced2}
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}     ${badge_name_smp_Inprogress}
    Click Element Wait SMP                   ${btn_OK2}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save2}
    sleep  8s
    Click Element Wait SMP                   ${btn_addbehavior2}
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Achieved
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select_customevent3}
    Click Element Wait SMP                   ${select_engages3}
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    p2p_transfer
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced3}
    Click Element Wait SMP                   ${btn_advanced3}
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}           BDG_${date_today}_${Name_Badge_01};;604800
    Click Element Wait SMP                   ${btn_OK3}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save3}
    sleep  8s
    Wait Until Element Is Visible        ${btn_Getapproval}
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Getapproval2}
    Click Element Wait SMP                   ${btn_Getapproval2}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Launch}
    Click Element Wait SMP                   ${btn_Launch}
    sleep  10s
    Click Element Wait SMP                   ${btn_allcampaing}
    sleep  7s
    Wait Until Element Is Visible   ${input_search}
    Input text                      ${input_search}    BDG_${date_today}_${Name_Badge_01}
    sleep  3s
    Double Click Element SMP           ${btn_search}
    sleep  3s
    ${CampaignID1}   Get Text   xpath=//*[@id="content"]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[2]
    Set Global Variable              ${CampaignID1}
    Capture Page Screenshot          ${date_today}_BadgeCampaign_AEM_1.PNG
    sleep  1s

Create Campaign Spender on SMP
    go to                            https://mmc-centralgroup.stg-sessionm.com/campaigns2
    sleep  3s
    Wait Until Element Is Visible   ${btn_createcampaign}
    Click Element Wait SMP                   ${btn_createcampaign}
    Wait Until Element Is Visible   ${btn_promotion}
    Click Element Wait SMP                   ${btn_promotion}
    sleep  3s
    Click Element Wait SMP              ${add_namecampaign}
    Input information SMP           ${add_namecampaign}             BDG_${date_today}_${Name_Badge_02}
    Click Element Wait SMP                   ${btn_create}
    sleep  12s
    Click Element Wait SMP                 ${edit datetime}
    Press Keys                    ${btn select datetime}     CTRL+a+BACKSPACE
    Press Keys                    ${btn select datetime}    DELETE
    sleep  2s
    input information SMP         ${btn select datetime}        ${date_todaystart}
    sleep  2s
    Press Keys                     ${btn select datetime End}     CTRL+a+BACKSPACE
    Press Keys                     ${btn select datetime End}     DELETE
    sleep  2s
    input information SMP          ${btn select datetime End}     ${date_todayEnd}
    sleep  2s
    Click Element Wait SMP                  ${btn ok datetime}
    sleep  2s
    Wait Until Element Is Visible   ${btn_addbehavior}
    Click Element Wait SMP                   ${btn_addbehavior}
    sleep  2s
    Input information SMP           ${input_namebehavior}    Behavior Activated
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select Purchase Events}
    sleep  1s
    Click Element Wait SMP                   ${select Spend}
    sleep  1s
    Click Element Wait SMP                   ${select Event Rule}
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    1.0
    Click Element Wait SMP                   ${btn three dot}
    sleep  2s
    Click Element Wait SMP                   ${select Apply restrictions spend}
    sleep  1s
    Click Element Wait SMP                   ${Max Times Behavior Qualifies Towards Outcome}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP                   ${btn restrictions save}
    Click Element Wait SMP                   ${btn_addoutcome}
    sleep  2s
    Click Element Wait SMP                   ${btn tab Advanced Spend}
    sleep  1s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}                BDG_${date_today}_${Name_Badge_02}_activated;;604800
    Click Element Wait SMP                   ${btn OK Outcome Spend}
    sleep  4s
    Click Element Wait SMP                   ${btn save Spend}
    sleep  5s
    Wait Until Element Is Visible   ${btn_addoutcome Spend2}
    Click Element Wait SMP                   ${btn_addoutcome Spend2}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Achieved
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select Purchase Events2}
    sleep  1s
    Click Element Wait SMP                   ${select Spend2}
    sleep  1s
    Click Element Wait SMP                   ${select Event Rule}
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    10000.0
    Click Element Wait SMP                   ${btn three dot}
    sleep  1s
    Click Element Wait SMP                   ${select Apply restrictions_2}
    sleep  1s
    Click Element Wait SMP                   ${Max Times Behavior Qualifies Towards Outcome2}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP                   ${btn restrictions save2}
    sleep  1s
    Click Element Wait SMP                   ${btn_addoutcome}
    sleep  2s
    Click Element Wait SMP                   ${btn tab Advanced Spend2}
    sleep  1s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}               BDG_${date_today}_${Name_Badge_02};;604800
    Click Element Wait SMP                   ${btn OK Outcome Spend2}
    sleep  2s
    Click Element Wait SMP                   ${btn save Spend}
    sleep  10s
    Wait Until Element Is Visible        ${btn_Getapproval}
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Getapproval2}
    Click Element Wait SMP                   ${btn_Getapproval2}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Launch}
    Click Element Wait SMP                   ${btn_Launch}
    sleep  10s
    Click Element Wait SMP                   ${btn_allcampaing}
    Wait Until Element Is Visible   ${input_search}
    Input text                      ${input_search}              BDG_${date_today}_${Name_Badge_02}
    sleep  4s
    Double Click Element SMP           ${btn_search}
    sleep  4s
    ${CampaignID2}       Get Text      xpath=/html/body/div[2]/div/div[3]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[2]
    Set Global Variable           ${CampaignID2}
    Capture Page Screenshot          ${date_today}_BadgeCampaign_AEM_2.PNG
    sleep  1s

Create Campaign 2Redeem on SMP
    go to                            https://mmc-centralgroup.stg-sessionm.com/campaigns2
    sleep  3s
    Wait Until Element Is Visible   ${btn_createcampaign}
    Click Element Wait SMP                   ${btn_createcampaign}
    Wait Until Element Is Visible   ${btn_promotion}
    Click Element Wait SMP                   ${btn_promotion}
    sleep  3s
    Click Element Wait SMP              ${add_namecampaign}
    Input information SMP           ${add_namecampaign}    BDG_${date_today}_${Name_Badge_03}
    Click Element Wait SMP                   ${btn_create}
    sleep  10s
    Click Element Wait SMP                 ${edit datetime}
    Press Keys                    ${btn select datetime}     CTRL+a+BACKSPACE
    Press Keys                    ${btn select datetime}     DELETE
    sleep  2s
    input information SMP         ${btn select datetime}     ${date_todaystart}
    sleep  2s
    Press Keys                     ${btn select datetime End}     CTRL+a+BACKSPACE
    Press Keys                     ${btn select datetime End}     DELETE
    sleep  2s
    input information SMP          ${btn select datetime End}     ${date_todayEnd}
    sleep  2s
    Click Element Wait SMP                 ${btn ok datetime}
    sleep  2s
    Wait Until Element Is Visible   ${btn_addbehavior}
    Click Element Wait SMP                   ${btn_addbehavior}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Activated
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Wait Until Element Is Visible   ${select_customevent}
    Click Element Wait SMP                   ${select_customevent}
    Click Element Wait SMP                   ${select_engages}
    sleep  1s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced}
    Click Element Wait SMP                   ${btn_advanced}
    sleep  1s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}         BDG_${date_today}_${Name_Badge_03}_activated;;604800
    Click Element Wait SMP                   ${btn_OK}
    sleep  3s
    Click Element Wait SMP                   ${btn_Save}
    sleep  8s
    Click Element Wait SMP                   ${btn_addbehavior2}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Achieved
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select_customevent4}
    Click Element Wait SMP                   ${select_engages4}
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced4}
    Click Element Wait SMP                   ${btn_advanced4}
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}           BDG_${date_today}_${Name_Badge_03};;604800
    Click Element Wait SMP                   ${btn_OK2}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save2}
    sleep  10s
    Wait Until Element Is Visible        ${btn_Getapproval}
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Getapproval2}
    Click Element Wait SMP                   ${btn_Getapproval2}
    sleep  5s
    Wait Until Element Is Visible        ${btn_Launch}
    Click Element Wait SMP                   ${btn_Launch}
    sleep  10s
    Click Element Wait SMP                   ${btn_allcampaing}
    Wait Until Element Is Visible   ${input_search}
    Input text                      ${input_search}    BDG_${date_today}_${Name_Badge_03}
    sleep  4s
    Double Click Element SMP           ${btn_search}
    sleep  4s
    ${CampaignID3}   Get Text   xpath=//*[@id="content"]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[2]
    Set Global Variable           ${CampaignID3}
    Capture Page Screenshot          ${date_today}_BadgeCampaign_AEM_3.PNG
    sleep  1s

Create Campaign 1Redeem on SMP
    go to                            https://mmc-centralgroup.stg-sessionm.com/campaigns2
    sleep  3s
    Wait Until Element Is Visible   ${btn_createcampaign}
    Click Element Wait SMP                   ${btn_createcampaign}
    Wait Until Element Is Visible   ${btn_promotion}
    Click Element Wait SMP                   ${btn_promotion}
    sleep  3s
    Click Element Wait SMP              ${add_namecampaign}
    Input information SMP           ${add_namecampaign}    BDG_${date_today}_${Name_Badge_04}
    Click Element Wait SMP                   ${btn_create}
    sleep  12s
    Click Element Wait SMP                 ${edit datetime}
    Press Keys                    ${btn select datetime}     CTRL+a+BACKSPACE
    Press Keys                    ${btn select datetime}    DELETE
    sleep  1s
    input information SMP         ${btn select datetime}     ${date_todaystart}
    sleep  1s
    Press Keys                     ${btn select datetime End}     CTRL+a+BACKSPACE
    Press Keys                     ${btn select datetime End}     DELETE
    sleep  1s
    input information SMP          ${btn select datetime End}     ${date_todayEnd}
    sleep  2s
    Click Element Wait SMP                 ${btn ok datetime}
    sleep  2s
    Wait Until Element Is Visible   ${btn_addbehavior}
    Click Element Wait SMP                   ${btn_addbehavior}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}     Behavior Achieved
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Wait Until Element Is Visible   ${select_customevent}
    Click Element Wait SMP                   ${select_customevent}
    Click Element Wait SMP                   ${select_engages}
    sleep  2s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced}
    Click Element Wait SMP                   ${btn_advanced}
    sleep  3s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}         BDG_${date_today}_${Name_Badge_04};;604800
    Click Element Wait SMP                   ${btn_OK}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save}
    sleep  10s
    Wait Until Element Is Visible   ${btn_Getapproval}
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  4s
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  4s
    Wait Until Element Is Visible   ${btn_Launch}
    Click Element Wait SMP                   ${btn_Launch}
    sleep  10s
    Click Element Wait SMP                   ${btn_allcampaing}
    Wait Until Element Is Visible   ${input_search}
    Input text                      ${input_search}    BDG_${date_today}_${Name_Badge_04}
    sleep  4s
    Double Click Element SMP           ${btn_search}
    sleep  4s
    ${CampaignID4}   Get Text   xpath=//*[@id="content"]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[2]
    Set Global Variable           ${CampaignID4}
    Capture Page Screenshot          ${date_today}_BadgeCampaign_AEM_4.PNG
    sleep  1s

Create Campaign 3Redeem on SMP
    go to                            https://mmc-centralgroup.stg-sessionm.com/campaigns2
    sleep  3s
    Wait Until Element Is Visible   ${btn_createcampaign}
    Click Element Wait SMP                   ${btn_createcampaign}
    Wait Until Element Is Visible   ${btn_promotion}
    Click Element Wait SMP                   ${btn_promotion}
    sleep  3s
    Click Element Wait SMP              ${add_namecampaign}
    Input information SMP           ${add_namecampaign}    BDG_${date_today}_${Name_Badge_05}
    Click Element Wait SMP                   ${btn_create}
    sleep  12s
    Click Element Wait SMP                 ${edit datetime}
    Press Keys                    ${btn select datetime}     CTRL+a+BACKSPACE
    Press Keys                    ${btn select datetime}    DELETE
    sleep  2s
    input information SMP         ${btn select datetime}     ${date_todaystart}
    sleep  2s
    Press Keys                     ${btn select datetime End}     CTRL+a+BACKSPACE
    Press Keys                     ${btn select datetime End}     DELETE
    sleep  2s
    input information SMP          ${btn select datetime End}     ${date_todayEnd}
    sleep  2s
    Click Element Wait SMP                  ${btn ok datetime}
    sleep  2s
    Wait Until Element Is Visible   ${btn_addbehavior}
    Click Element Wait SMP                   ${btn_addbehavior}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Activated
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Wait Until Element Is Visible   ${select_customevent}
    Click Element Wait SMP                   ${select_customevent}
    Click Element Wait SMP                   ${select_engages}
    sleep  2s
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced}
    Click Element Wait SMP                   ${btn_advanced}
    sleep  2s
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}         BDG_${date_today}_${Name_Badge_05}_activated;;604800
    Click Element Wait SMP                   ${btn_OK}
    sleep  2s
    Click Element Wait SMP                   ${btn_Save}
    sleep  10s
    Wait Until Element Is Visible   ${btn_addbehavior2}
    Click Element Wait SMP                   ${btn_addbehavior2}
    sleep  2s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Inprogress
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select_customevent2}
    Click Element Wait SMP                   ${select_engages2}
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced2}
    Click Element Wait SMP                   ${btn_advanced2}
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}     ${badge_name_smp_Inprogress}
    Click Element Wait SMP                   ${btn_OK2}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save2}
    sleep  8s
    Click Element Wait SMP                   ${btn_addbehavior2}
    sleep  4s
    Wait Until Element Is Visible   ${input_namebehavior}
    Input information SMP           ${input_namebehavior}    Behavior Achieved
    Click Element Wait SMP                   ${btn_addrule}
    Click Element Wait SMP                   ${select_event}
    Click Element Wait SMP                   ${select_customevent3}
    Click Element Wait SMP                   ${select_engages3}
    Click Element Wait SMP                   ${btn_Restrictions}
    Wait Until Element Is Visible   ${input_customeventname}
    Input information SMP           ${input_customeventname}    purchase_offer
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${add_TotalNumber}
    Click Element Wait SMP                   ${btn_addoutcome}
    Wait Until Element Is Visible   ${btn_advanced3}
    Click Element Wait SMP                   ${btn_advanced3}
    Click Element Wait SMP                   ${input_tags}
    Input Text                      ${input_tags}           BDG_${date_today}_${Name_Badge_05};;604800
    Click Element Wait SMP                   ${btn_OK3}
    sleep  4s
    Click Element Wait SMP                   ${btn_Save3}
    sleep  10s
    Wait Until Element Is Visible        ${btn_Getapproval}
    Click Element Wait SMP                   ${btn_Getapproval}
    sleep  4s
    Wait Until Element Is Visible        ${btn_Getapproval2}
    Click Element Wait SMP                   ${btn_Getapproval2}
    sleep  4s
    Wait Until Element Is Visible        ${btn_Launch}
    Click Element Wait SMP                   ${btn_Launch}
    sleep  10s
    Click Element Wait SMP                   ${btn_allcampaing}
    Wait Until Element Is Visible   ${input_search}
    Input text                      ${input_search}    BDG_${date_today}_${Name_Badge_05}
    sleep  4s
    Double Click Element SMP           ${btn_search}
    sleep  4s
    ${CampaignID5}   Get Text   xpath=//*[@id="content"]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[2]
    Set Global Variable           ${CampaignID5}
    Capture Page Screenshot          ${date_today}_BadgeCampaign_AEM_5.PNG
    sleep  2s
    Close Window
    sleep  2s
Check if Questionnaire BadgeV2 AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    lick Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    lick Element Wait AEM         ${icon_Offer_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    sleep  3s

Badge_AEM_01 Step03 Click Badge Category page under the 1 Central
    Go to                           https://uatcreator.the1.co.th/sites.html/content/the1/badgecategory/
    sleep  3s
    lick Element Wait AEM          ${folder_Badge_Category}
    sleep  2s
    lick Element Wait AEM          ${btn_create_AEM}
    sleep  2s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
    lick Element Wait AEM           ${btn_Next_page}
Badge_AEM_01 Step06 Input Title Name > Click Create
    Input information AEM            ${input_title_Category}         ${date_today}_${Name_Category_01}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
Badge_AEM_01 Step08 Click Edit Badge Category > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  2s
    DoDouble Click Element AEM       ${btn_edit_badge_AEM}
    sleep  2s
Badge_AEM_01 Step09 Input Badge Category Information Click Done
    Input information AEM           ${input_Category_Name_TH}        ${date_today}_${Name_Category_01}
    Select list AEM                 ${select_cat_type}
    Select list AEM                 ${select_cat_type_Public}
    Click Element Wait SMP                   ${input_Image_Category_TH_Dark}
    Input information AEM           ${input_Image_Category_TH_Dark}     /content/dam/badge-category/D_Public.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Light}
    Input information AEM           ${input_Image_Category_TH_Light}    /content/dam/badge-category/L_Public.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Click}
    Input information AEM           ${input_Image_Category_TH_Click}    /content/dam/badge-category/C_Public.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Dark}
    Input information AEM           ${input_Image_Category_EN_Dark}     /content/dam/badge-category/D_Public.png
    Click Element Wait SMP AEM               ${input_Image_Category_EN_Light}
    Input information AEM           ${input_Image_Category_EN_Light}    /content/dam/badge-category/L_Public.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Click}
    Input information AEM           ${input_Image_Category_EN_Click}    /content/dam/badge-category/C_Public.png
    sleep  2s
    Click Element Wait SMP AEM               ${input_Category_Order}
    Input information AEM           ${input_Category_Order}     1
    Click Element Wait SMP AEM               ${btn_Done}
    sleep  2s
Badge_AEM_01 Step11 Click Preview > Click Submit
    DoDouble Click Element AEM       ${btn_Preview_Page_Badge_AEM}
    Select Frame                    xpath=//iframe[@id='ContentFrame']
    Click Element Wait SMP AEM               ${btn_Submit_Preview_Page_Cat_AEM}
    sleep  3s
    Reload Page
    sleep  8s
    Capture Page Screenshot          ${date_today}_BadgeCategory_AEM_1.PNG
    sleep  2s

Badge_AEM_02 Step03 Click Badge Category page under the 1 Central
    Go to                           https://uatcreator.the1.co.th/sites.html/content/the1/badgecategory
    sleep  3s
    lick Element Wait AEM          ${btn_create_AEM}
    sleep  2s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
Badge_AEM_02 Step06 Input Title Name > Click Create
    lick Element Wait AEM           ${btn_Next_page}
    Input information AEM            ${input_title_Category}            ${date_today}_${Name_Category_02}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Badge_AEM_02 Step08 Click Edit Badge Category > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  3s
    DoDouble Click Element AEM       ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_02 Step09 Input Badge Category Information Click Done
    Input information AEM           ${input_Category_Name_TH}            ${date_today}_${Name_Category_02}
    Select list AEM                 ${select_cat_type}
    Select list AEM                 ${select_cat_type_Staff}
    Click Element Wait SMP                   ${input_Image_Category_TH_Dark}
    Input information AEM           ${input_Image_Category_TH_Dark}     /content/dam/badge-category/D_Staff.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Light}
    Input information AEM           ${input_Image_Category_TH_Light}    /content/dam/badge-category/L_Staff.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Click}
    Input information AEM           ${input_Image_Category_TH_Click}    /content/dam/badge-category/C_Staff.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Dark}
    Input information AEM           ${input_Image_Category_EN_Dark}     /content/dam/badge-category/D_Staff.png
    Click Element Wait SMP AEM               ${input_Image_Category_EN_Light}
    Input information AEM           ${input_Image_Category_EN_Light}    /content/dam/badge-category/L_Staff.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Click}
    Input information AEM           ${input_Image_Category_EN_Click}    /content/dam/badge-category/C_Staff.png
    sleep  2s
    Click Element Wait SMP AEM               ${input_Category_Order}
    Input information AEM           ${input_Category_Order}     2
    Click Element Wait SMP AEM               ${btn_Done}
Badge_AEM_02 Step11 Click Preview > Click Submit
    DoDouble Click Element AEM       ${btn_Preview_Page_Badge_AEM}
    Select Frame                    xpath=//iframe[@id='ContentFrame']
    Click Element Wait SMP AEM               ${btn_Submit_Preview_Page_Cat_AEM}
    sleep  3s
    Reload Page
    sleep  8s
    Capture Page Screenshot          ${date_today}_BadgeCategory_AEM_2.PNG
    sleep  2s

Badge_AEM_03 Step03 Click Badge V2 under the 1 Central
    Go to                            https://uatcreator.the1.co.th/sites.html/content/the1/badgesv2
    sleep  2s
Badge_AEM_03 Step04 Click Create > Click Page
    lick Element Wait AEM           ${btn_create_AEM}
    sleep  2s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
Badge_AEM_03 Step06 Input Title Name > Click Create
    lick Element Wait AEM           ${btn_Next_page}
    Input information AEM                 ${input_title_Badge}               ${date_today}_${Name_Badge_01}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
Badge_AEM_03 Step08 Click Edit Badge V2 > Click Configure
    Click Element Wait SMP AEM                ${btn_Edit_Badge}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_03 Step09 Input Badge V2 Information Click Done
    Input information AEM            ${add_Image_Badge}                  /content/dam/badge/DoubleTransfer.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM                  ${section_Hidden}
    Select list Wait AEM             ${Hidden_No}
    Select list AEM                  ${select_Highlight}
    Select list Wait AEM             ${Highlight_No}
    Input information AEM            ${input_Category}               ${date_today}_${Name_Category_01}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM            ${input_order_Badge}                 1
    Input information AEM            ${Partner_Badge}                     the 1
    sleep    1s
    Click Element Wait SMP AEM             ${select_Partner_the1}
    Input information AEM         ${input_campaignID}                   ${CampaignID1}
    # Input information AEM         ${input_campaignID}                   12055
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Targeted}
    Click Element Wait SMP                 ${select Behavior}
    Select list Wait AEM          ${Behavior Achieved}
    Click Element Wait SMP AEM              ${select Behavior Goal Type}
    Select list Wait AEM          ${select count}
    Click Element Wait SMP AEM              ${Outcome Type}
    Select list Wait AEM          ${select Type Points}
    Input information AEM         ${Claim Expiry Date Time}            29-12-2021 23:59
    Input information AEM         ${input_point}                       100
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              RE Double Transfer V.3
    Input information AEM         ${input Rules TH}                    โอนคะแนนผ่านแอปไปให้ใครก็ได้ 3 คน ภายใน 29 ธันวาคม 2564
    Input information AEM         ${input Terms and condition TH}      ${Terms and condition BadgeV3_1 TH}
    Input information AEM         ${input Achievement Text TH}         ตอบแทนสายเปย์อย่างคุณ ด้วย 100 คะแนน รอรับได้เลยไม่เกิน 10 วัน
    Input information AEM         ${input Campaign Description TH}     รับคะแนนเดอะวัน 100 คะแนน
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              RE Double Transfer V.3
    Input information AEM         ${input Rules EN}                    Transfer Point 3 Times by 29 Dec 2021
    Input information AEM         ${input Terms and condition EN}      ${Terms and condition BadgeV3_1 EN}
    Input information AEM         ${input Achievement Text EN}         Pay back like you with 100 points, you can wait up to 10 days.
    Input information AEM         ${input Campaign Description EN}     Get 100 Points
    sleep  4s
    Click Element Wait SMP AEM             ${btn_Done}
    sleep  4s
Badge_AEM_03 Step11 Click Preview > Click Submit
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame    xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  4s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  3s
    Reload Page
    sleep  3s
    Reload Page
    sleep  3s
    Reload Page
    Capture Page Screenshot          ${date_today}_Badge_AEM_1.PNG
    sleep  1s

Badge_AEM_04 Step03 Click Badge V2 under the 1 Central
    Go to                            https://uatcreator.the1.co.th/sites.html/content/the1/badgesv2
    sleep  2s
Badge_AEM_04 Step04 Click Create > Click Page
    lick Element Wait AEM           ${btn_create_AEM}
    sleep  2s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
    lick Element Wait AEM           ${btn_Next_page}
Badge_AEM_04 Step06 Input Title Name > Click Create
    Input information AEM                 ${input_title_Badge}                ${date_today}_${Name_Badge_02}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
Badge_AEM_04 Step08 Click Edit Badge V2 > Click Configure
    Click Element Wait SMP AEM                ${btn_Edit_Badge}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_04 Step09 Input Badge V2 Information Click Done
    Input information AEM            ${add_Image_Badge}                  /content/dam/badge/Big Spender.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM                  ${section_Hidden}
    Select list Wait AEM             ${Hidden_No}
    Select list AEM                  ${select_Highlight}
    Select list Wait AEM             ${Highlight_No}
    Input information AEM            ${input_Category}                   ${date_today}_${Name_Category_01}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM            ${input_order_Badge}               2
    Input information AEM            ${Partner_Badge}                     the 1
    sleep    1s
    Click Element Wait SMP AEM             ${select_Partner_the1}
    # Input information AEM         ${input_campaignID}                   12054
    Input information AEM         ${input_campaignID}                   ${CampaignID2}
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Targeted}
    Click Element Wait SMP                 ${select Behavior}
    Select list Wait AEM          ${Behavior Achieved}
    Click Element Wait SMP AEM               ${select Behavior Goal Type}
    Select list Wait AEM          ${select spent}
    Click Element Wait SMP AEM               ${Outcome Type}
    Select list Wait AEM          ${select Type Reward}
    Input information AEM         ${Claim Expiry Date Time}            ${date of Issuance Period_End Date_AEM}
    Input information AEM         ${input_Internal Name}               OFFER_BDG_BIG_SPENDER_V3
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              Regression Big Spender
    Input information AEM         ${input Rules TH}                    ช้อปสะสมให้ครบ 10,000 บาท ภายใน 30 ธันวาคม 2564
    Input information AEM         ${input Terms and condition TH}      ${Terms and condition TH2}
    Input information AEM         ${input Achievement Text TH}         คูปองแทนเงินสด 3,000 บาท อยู่ในเมนู 'มายรีวอร์ด' เรียบร้อยแล้ว
    Input information AEM         ${input Campaign Description TH}     รับคูปองเงินสด 3,000 บาท
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              Regression Big Spender
    Input information AEM         ${input Rules EN}                    Accumulate a total spending of over 10,000 THB by 30 Dec 2021
    Input information AEM         ${input Terms and condition EN}      ${Terms and condition BadgeV3_2 EN}
    Input information AEM         ${input Achievement Text EN}         Go claim your 3,000 THB The 1 cash coupon!
    Input information AEM         ${input Campaign Description EN}     Get 3,000 Baht The 1 Cash Coupon
    sleep  3s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_04 Step11 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame            xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM      ${btn_Submit_Page_Spent_AEM}
    sleep  4s
    Reload Page
    sleep  4s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  4s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  4s
    Reload Page
    Reload Page
    sleep  2s
    Capture Page Screenshot          ${date_today}_Badge_AEM_2.PNG
    sleep  1s

Badge_AEM_05 Step03 Click Badge V2 under the 1 Central
    Go to                            https://uatcreator.the1.co.th/sites.html/content/the1/badgesv2
    sleep  3s
Badge_AEM_05 Step04 Click Create > Click Page
    lick Element Wait AEM           ${btn_create_AEM}
    sleep  3s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
    lick Element Wait AEM           ${btn_Next_page}
Badge_AEM_05 Step06 Input Title Name > Click Create
    Input information AEM            ${input_title_Badge}               ${date_today}_${Name_Badge_03}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
Badge_AEM_05 Step08 Click Edit Badge V2 > Click Configure
    Click Element Wait SMP AEM                ${btn_Edit_Badge}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  2s
Badge_AEM_05 Step09 Input Badge V2 Information Click Done
    Input information AEM            ${add_Image_Badge}                  /content/dam/badge/Tripleredeem.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM            ${add_Thumbnail Image_Badge}        /content/dam/badge/Tripleredeem.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM                  ${section_Hidden}
    Select list Wait AEM             ${Hidden_No}
    Input information AEM            ${input_Category}                  ${date_today}_${Name_Category_02}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM            ${input_order_Badge}               3
    Input information AEM            ${Partner_Badge}                     the 1
    sleep    1s
    Click Element Wait SMP AEM             ${select_Partner_the1}
    # Input information AEM         ${input_campaignID}                   12054
    Input information AEM         ${input_campaignID}                   ${CampaignID3}
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP                 ${btn select Campaign Type}
    sleep  1s
    Click Element Wait SMP                 ${select Targeted Optin}
    Click Element Wait SMP                 ${select Behavior}
    Select list Wait AEM          ${Behavior Achieved}
    Click Element Wait SMP AEM               ${select Behavior Goal Type}
    Select list Wait AEM          ${select count}
    Click Element Wait SMP AEM               ${Outcome Type}
    Select list Wait AEM          ${select Type Points}
    Input information AEM         ${input_Internal Name}               OFFER_BDG_2REDEEM_V3
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Claim Expiry Date Time}            ${date of Issuance Period_End Date_AEM}
    Input information AEM         ${input_point}                       10
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              Regression Double Redeem
    Input information AEM         ${input Rules TH}                    แลก 2 รีวอร์ดบนแอป The 1 ภายใน 31 ธันวาคม 2564
    Input information AEM         ${input Terms and condition TH}      ${Terms and condition BadgeV3_3 TH}
    Input information AEM         ${input Achievement Text TH}         ตอบแทนสายเปย์อย่างคุณ ด้วย 20 คะแนน รอรับได้เลยไม่เกิน 10 วัน
    Input information AEM         ${input Campaign Description TH}     รับคะแนนเดอะวัน 20 คะแนน
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              Regression Double Redeem
    Input information AEM         ${input Rules EN}                    Redeem 2 SITwards by 31 Dec 2021
    Input information AEM         ${input Terms and condition EN}      ${Terms and condition BadgeV3_3 EN}
    Input information AEM         ${input Achievement Text EN}         Your friends will love you. Here's 20 points of our gratitude! Points will be SITwarded within 10 days.
    Input information AEM         ${input Campaign Description EN}     Get 20 points
    sleep  3s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_05 Step11 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame                xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM          ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM       ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    sleep  1s
    Reload Page
    Reload Page
    Capture Page Screenshot          ${date_today}_Badge_AEM_3.PNG
    sleep   2s

Badge_AEM_06 Step03 Click Badge V2 under the 1 Central
    Go to                            https://uatcreator.the1.co.th/sites.html/content/the1/badgesv2
    sleep  3s
Badge_AEM_06 Step04 Click Create > Click Page
    lick Element Wait AEM           ${btn_create_AEM}
    sleep  3s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
    lick Element Wait AEM           ${btn_Next_page}
Badge_AEM_06 Step06 Input Title Name > Click Create
    Input information AEM                 ${input_title_Badge}              ${date_today}_${Name_Badge_04}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
Badge_AEM_06 Step08 Click Edit Badge V2 > Click Configure
    Click Element Wait SMP AEM                ${btn_Edit_Badge}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_06 Step09 Input Badge V2 Information Click Done
    Input information AEM            ${add_Image_Badge}                  /content/dam/badge/CentralBigSpenderMissionImage.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM                  ${section_Hidden}
    Select list Wait AEM             ${Hidden_No}
    Input information AEM            ${input_Category}              ${date_today}_${Name_Category_02}
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM            ${input_order_Badge}                 4
    Input information AEM            ${Partner_Badge}                     B2S
    sleep   1s
    Click Element Wait SMP AEM             ${select_Partner_B2S}
    # Input information AEM         ${input_campaignID}                   12054
    Input information AEM         ${input_campaignID}                   ${CampaignID4}
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Targeted}
    Click Element Wait SMP                 ${select Behavior}
    Select list Wait AEM          ${Behavior Achieved}
    Click Element Wait SMP AEM             ${select Behavior Goal Type}
    Select list Wait AEM          ${select count}
    Click Element Wait SMP AEM             ${Outcome Type}
    Select list Wait AEM          ${select Type Membership QR}
    Input information AEM         ${Claim Expiry Date Time}            ${date of Issuance Period_End Date_AEM}
    Input information AEM         ${input Type Membership QR}          1243523
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              Regression Check In - B2S Book Club
    Input information AEM         ${input Rules TH}                    เช็คอิน B2S Book Club และสำเร็จภารกิจ
    Input information AEM         ${input Terms and condition TH}      ${Terms and condition BadgeV3_4 TH}
    Input information AEM         ${input Achievement Text TH}         คุณได้ทำการเช็คอินที่ B2S Book Club เรียบร้อยแล้ว คลิกเพื่อรับส่วนลด 5-10 %
    Input information AEM         ${input Campaign Description TH}     รับส่วนลด QR CODE 5-10 % ที่ B2S Book Club
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              Regression Check In - B2S Book Club
    Input information AEM         ${input Rules EN}                    Check-in B2S Book Club and achieve badge
    Input information AEM         ${input Terms and condition EN}      ${Terms and condition BadgeV3_4 EN}
    Input information AEM         ${input Achievement Text EN}         You have completed check-in at B2S Book Club. Click here to get 5-15% Discount
    Input information AEM         ${input Campaign Description EN}     Get 5-15% QR Code Discount at B2S Book Club
    sleep  3s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_06 Step11 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame                       xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM           ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Capture Page Screenshot          ${date_today}_Badge_AEM_4.PNG
    sleep  1s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    sleep  1s
    Reload Page
    Reload Page

Badge_AEM_07 Step03 Click Badge V2 under the 1 Central
    Go to                           https://uatcreator.the1.co.th/sites.html/content/the1/badgesv2
    sleep  3s
Badge_AEM_07 Step04 Click Create > Click Page
    lick Element Wait AEM           ${btn_create_AEM}
    sleep  1s
    lick Element Wait AEM           ${btn_page_AEM}
    lick Element Wait AEM           ${foder_Card_Badge_Category}
    lick Element Wait AEM           ${btn_Next_page}
Badge_AEM_07 Step06 Input Title Name > Click Create
    Input information AEM                 ${input_title_Badge}              ${date_today}_${Name_Badge_05}
    Click Element Wait SMP AEM                ${btn_create_badge_title_AEM}
    lick Element Wait AEM           ${btn_open_badge_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  4s
Badge_AEM_07 Step08 Click Edit Badge V2 > Click Configure
    Click Element Wait SMP AEM                ${btn_Edit_Badge}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_07 Step09 Input Badge V2 Information Click Done
    Input information AEM            ${add_Image_Badge}                  /content/dam/badge/ThaiWatsaduLucky3.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Select list AEM                  ${select_Highlight}
    sleep  2s
    Select list Wait AEM             ${Highlight_No}
    sleep  2s
    Input information AEM            ${input_Category}     ${date_today}_${Name_Category_02}
    sleep    2s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    2s
    Input information AEM            ${input_order_Badge}                 1
    Input information AEM            ${Partner_Badge}                     the 1
    sleep    1s
    Click Element Wait SMP AEM             ${select_Partner_the1}
    Input information AEM         ${input_campaignID}                     12054
    # Input information AEM         ${input_campaignID}                   ${CampaignID5}
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Public Optin}
    Click Element Wait SMP                 ${select Behavior}
    Select list Wait AEM          ${Behavior Achieved}
    Click Element Wait SMP AEM             ${select Behavior Goal Type}
    Select list Wait AEM          ${select count}
    Click Element Wait SMP AEM             ${Outcome Type}
    Select list Wait AEM          ${select Type Membership Card}
    Input information AEM         ${Claim Expiry Date Time}              ${date of Issuance Period_End Date_AEM}
    Input information AEM         ${input Type Membership Card}          http://imageurl
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              Regression Triple Redeem FamilyMart
    Input information AEM         ${input Rules TH}                    แลก 3 รีวอร์ดของแฟมิลี่มาร์ทบนแอปพลิเคชัน The1 เพื่อรับ Membership Card !
    Input information AEM         ${input Terms and condition TH}      ${Terms and condition BadgeV3_5 TH}
    Input information AEM         ${input Achievement Text TH}         คุณได้ทำการแลกรีวอร์ดเรียบร้อยแล้ว ! กดตรงนี้เพื่อรับ Membership Card !
    Input information AEM         ${input Campaign Description TH}     สิทธิประโยชน์พิเศษที่ร้าน FamilyMart
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              Regression Triple Redeem FamilyMart
    Input information AEM         ${input Rules EN}                    Redeem 3 Family Mart Rewards on the The1 app to get a Membership Card!
    Input information AEM         ${input Terms and condition EN}      ${Terms and condition BadgeV3_5 EN}
    Input information AEM         ${input Achievement Text EN}         You have successfully redeemed the Rewards. Click here to get a Membership Card!
    Input information AEM         ${input Campaign Description EN}     Exclusive benefits at FamilyMart store
    sleep  3s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_07 Step11 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame    xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    sleep  1s
    Reload Page
    Reload Page
    Reload Page
    Capture Page Screenshot          ${date_today}_Badge_AEM_5.PNG
    sleep  1s

Badge_AEM_08 Step03 Click Badge Category page under the 1 Central
    go to               https://uatcreator.the1.co.th/editor.html/content/the1/badgecategory/${date_today}_publicregression.html
    sleep  3s
Badge_AEM_08 Step06 Click Edit Badge Category > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
Badge_AEM_08 Step07 Edit Badge Category Information
    DoDouble Click Element AEM       ${btn_edit_cate_AEM}
    sleep  4s
    Input information AEM            ${input_Category_Name_EN}         ${date_today}_${Name_Category_Edit1}
    Input information AEM            ${input_Category_Name_TH}         ${date_today}_${Name_Category_Edit1}
    Select list AEM                 ${select_cat_type}
    Select list AEM                 ${select_cat_type_targeted}
    Click Element Wait SMP                   ${input_Image_Category_TH_Dark}
    Input information AEM           ${input_Image_Category_TH_Dark}     /content/dam/badge-category/D_Targeted.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Light}
    Input information AEM           ${input_Image_Category_TH_Light}    /content/dam/badge-category/L_Targeted.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Click}
    Input information AEM           ${input_Image_Category_TH_Click}    /content/dam/badge-category/C_Targeted.png
    Click Element Wait SMP                   ${input_Image_Category_TH_Banner}
    Input information AEM           ${input_Image_Category_TH_Banner}    /content/dam/badge-category/C_Targeted.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Dark}
    Input information AEM           ${input_Image_Category_EN_Dark}     /content/dam/badge-category/D_Targeted.png
    Click Element Wait SMP AEM               ${input_Image_Category_EN_Light}
    Input information AEM           ${input_Image_Category_EN_Light}    /content/dam/badge-category/L_Targeted.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Click}
    Input information AEM           ${input_Image_Category_EN_Click}    /content/dam/badge-category/C_Targeted.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Banner}
    Input information AEM           ${input_Image_Category_EN_Banner}    /content/dam/badge-category/C_Targeted.png
    sleep  2s
    Click Element Wait SMP AEM               ${input_Category_Order}
    Input information AEM           ${input_Category_Order}     2
    Click Element Wait SMP AEM               ${btn_Done}
    sleep  4s
Badge_AEM_08 Step09 Click Preview > Click Submit
    DoDouble Click Element AEM       ${btn_Preview_Page_Badge_AEM}
    Select Frame                    xpath=//iframe[@id='ContentFrame']
    Click Element Wait SMP AEM               ${btn_Submit_Preview_Page_Cat_AEM}
    sleep  4s
    Reload Page
    Reload Page
    sleep  8s
    Capture Page Screenshot          ${date_today}_Badge_AEM_8.PNG
    sleep  1s

Badge_AEM_09 Step03 Click Badge Category page under the 1 Central
    go to               https://uatcreator.the1.co.th/editor.html/content/the1/badgecategory/${date_today}_staffregression.html
    sleep  3s
Badge_AEM_09 Step06 Click Edit Badge Category > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
Badge_AEM_09 Step07 Edit Badge Category Information
    DoDouble Click Element AEM       ${btn_edit_cate_AEM}
    sleep  4s
    Input information AEM            ${input_Category_Name_EN}         ${date_today}_${Name_Category_Edit2}
    Input information AEM            ${input_Category_Name_TH}         ${date_today}_${Name_Category_Edit2}
    Select list AEM                 ${select_cat_type}
    Select list AEM                 ${select_cat_type_t1x}
    Click Element Wait SMP                   ${input_Image_Category_TH_Dark}
    Input information AEM           ${input_Image_Category_TH_Dark}     /content/dam/badge-category/D_T1X.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Light}
    Input information AEM           ${input_Image_Category_TH_Light}    /content/dam/badge-category/L_T1X.png
    Click Element Wait SMP AEM               ${input_Image_Category_TH_Click}
    Input information AEM           ${input_Image_Category_TH_Click}    /content/dam/badge-category/C_TT1X.png
    Click Element Wait SMP                   ${input_Image_Category_TH_Banner}
    Input information AEM           ${input_Image_Category_TH_Banner}    /content/dam/badge-category/C_T1X.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Dark}
    Input information AEM           ${input_Image_Category_EN_Dark}     /content/dam/badge-category/D_T1X.png
    Click Element Wait SMP AEM               ${input_Image_Category_EN_Light}
    Input information AEM           ${input_Image_Category_EN_Light}    /content/dam/badge-category/L_T1X.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Click}
    Input information AEM           ${input_Image_Category_EN_Click}    /content/dam/badge-category/C_T1X.png
    Click Element Wait SMP                   ${input_Image_Category_EN_Banner}
    Input information AEM           ${input_Image_Category_EN_Banner}    /content/dam/badge-category/C_T1X.png
    sleep  2s
    Click Element Wait SMP AEM               ${input_Category_Order}
    Input information AEM           ${input_Category_Order}     2
    Click Element Wait SMP AEM               ${btn_Done}
    sleep  4s
Badge_AEM_09 Step09 Click Preview > Click Submit
    DoDouble Click Element AEM       ${btn_Preview_Page_Badge_AEM}
    Select Frame                    xpath=//iframe[@id='ContentFrame']
    Click Element Wait SMP AEM               ${btn_Submit_Preview_Page_Cat_AEM}
    sleep  4s
    Reload Page
    Reload Page
    sleep  8s
    Capture Page Screenshot          ${date_today}_Badge_AEM_9.PNG
    sleep  1s

Badge_AEM_011 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_1
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev31.html
    sleep  3s
    Click Element Wait SMP AEM                ${Click edit}
    sleep  3s
Badge_AEM_011 Step06 Click Edit Badge V3 > Click Configure
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_011 Step07 Edit Badge V3 Information
    Click Element Wait SMP AEM             ${Tab_Thai}
    Input information AEM         ${input displayname TH}              RE Double Transfer V.3 แก้ไข
    Input information AEM         ${input Rules TH}                    โอนคะแนนผ่านแอปไปให้ใครก็ได้ 3 คน ภายใน 29 ธันวาคม 2564 แก้ไข
    Input information AEM         ${input Terms and condition TH}      ข้อกำหนดและเงื่อนไข 1. โอนคะแนนไปยังสมาชิกท่านอื่นให้ครบ 3 คนผ่านแอป The 1 เพื่อสำเร็จมิชชั่น \n2.คุณจะได้รับคะแนน The 1 โดยอัตโนมัติไปยังบัญชีของคุณภายใน 10 วันหลังจากเสร็จสิ้นมิชชั่น \n3. หมดเขตร่วมกิจกรรม 29 ธันวาคม 2564 \n4. จำกัด 1 สมาชิก ต่อ 1 สิทธิ์ ตลอดรายการ \n5.บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อกำหนดและเงื่อนไขโดยไม่ต้องแจ้งให้ทราบล่วงหน้า \n6.สำหรับรายละเอียดเพิ่มเติมกรุณาติดต่อ The 1 Call center 0-2660-1000
    Input information AEM         ${input Achievement Text TH}         ตอบแทนสายเปย์อย่างคุณ ด้วย 100 คะแนน รอรับได้เลยไม่เกิน 10 วัน แก้ไข
    Input information AEM         ${input Campaign Description TH}     รับคะแนนเดอะวัน 100 คะแนน แก้ไข
    Click Element Wait SMP AEM             ${Tab_English}
    Input information AEM         ${input displayname EN}              RE Double Transfer V.3 Edit
    Input information AEM         ${input Rules EN}                    Transfer Point 3 Times by 29 Dec 2021 Edit
    Input information AEM         ${input Terms and condition EN}      TERMS & CONDITIONS \n1. Transfer points to 3 friends via The 1 application to finish the mission \n2.The 1 points will be automatically to your account within 10 days after finishing the mission \n3.Activity deadline is 29 December 2021 \n4.Limited to 1 member per 1 privilege throughout the campaign \n5.The company serves the right to change terms and conditions without prior notice \n6.Form details please contact The 1 Call center 0-2660-1000
    Input information AEM         ${input Achievement Text EN}         Your friends will love you. HeSIT's 100 points of gratitude! Points will be SITwarded within 10 days. Edit
    Input information AEM         ${input Campaign Description EN}     Get 100 Points Edit
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_011 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame           xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM      ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    sleep  1s
    Reload Page
    sleep  1s
    Capture Page Screenshot          ${date_today}_Badge_AEM_11.PNG
    sleep  1s

Badge_AEM_13 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_2
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev32.html
    sleep  3s
Badge_AEM_13 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  3s
Badge_AEM_13 Step07 Edit Badge V3 Information
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Public Optin}
    Click Element Wait SMP AEM               ${Outcome Type}
    Select list Wait AEM          ${select Type Points}
    Input information AEM         ${input_point}                   10
    sleep  3s
    Click Element Wait SMP AEM                ${btn_Done}
Badge_AEM_13 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame                    xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM               ${btn_Submit_Page_Spent_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM      ${btn_complete_Approve flow_badge_AEM}
    sleep  4s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  4s
    Reload Page
    Reload Page
    sleep  1s
    Capture Page Screenshot          ${date_today}_Badge_AEM_13.PNG
    sleep  2s


Badge_AEM_14 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev33.html
    sleep  3s
Badge_AEM_14 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  4s
Badge_AEM_14 Step07 Edit Badge V3 Information
    Click Element Wait SMP                 ${btn select Campaign Type}
    Click Element Wait SMP                 ${select Public}
    sleep  2s
    Click Element Wait SMP AEM             ${Outcome Type}
    sleep  2s
    Select list Wait AEM          ${select Type Reward}
    sleep  2s
    Input information AEM         ${input_Internal Name}               OFFER_BDG_BIG_SPENDER_V3
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_14 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame        xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    Capture Page Screenshot       ${date_today}_Badge_AEM_14.png
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    Reload Page
    sleep  1s
    Capture Page Screenshot       ${date_today}_Badge_AEM_14.png
    sleep  1s

Badge_AEM_15 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_4
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev34.html
    sleep  3s
Badge_AEM_15 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  3s
Badge_AEM_15 Step07 Edit Badge V3 Information
    Click Element Wait SMP AEM             ${Outcome Type}
    Select list Wait AEM          ${select Type MembershipCode}
    sleep  2s
    Input information AEM         ${input Membership Code}          CTRBKK2020
    sleep  4s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_15 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame        xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    Reload Page
    sleep  2s
    Capture Page Screenshot       ${date_today}_Badge_AEM_15.png
    sleep  1s


Badge_AEM_16 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_5
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev35.html
    sleep  3s
Badge_AEM_16 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  3s
Badge_AEM_16 Step07 Edit Badge V3 Information
    Click Element Wait SMP AEM             ${Outcome Type}
    Select list Wait AEM          ${select Type MembershipBarcode}
    sleep  2s
    Input information AEM         ${input Membership Barcode}          12324444
    sleep  3s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_16 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame        xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    Reload Page
    sleep  2s
    Capture Page Screenshot       ${date_today}_Badge_AEM_16.png
    sleep  1s

Badge_AEM_17 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev33.html
    sleep  3s
Badge_AEM_17 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  3s
Badge_AEM_17 Step07 Edit Badge V3 Information
    Press Keys                    ${input_order_Badge}     CTRL+a+BACKSPACE
    Press Keys                    ${input_order_Badge}    DELETE
    sleep  3s
    Input information AEM         ${input_order_Badge}               2
    Input information AEM         ${Partner_Badge}                     B2S
    sleep    1s
    Click Element Wait SMP AEM             ${select_Partner_B2S}
    sleep  2s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_17 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame        xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    sleep  5s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    Reload Page
    sleep  2s
    Capture Page Screenshot       ${date_today}_Badge_AEM_17.png
    sleep  1s


Badge_AEM_18 Step04 Click Pic YYYYMMDD_SIT_BadgeV3_3
    go to             https://uatcreator.the1.co.th/editor.html/content/the1/badgesv2/${date_today}_badgev33.html
    sleep  3s
Badge_AEM_18 Step06 Click Edit Badge V3 > Click Configure
    Click Element Wait SMP AEM                ${Click edit}
    sleep  4s
    DoDouble Click Element AEM        ${btn_edit_badge_AEM}
    sleep  3s
Badge_AEM_18 Step07 Edit Badge V3 Information
    Press Keys                    ${add_Image_Badge}     CTRL+a+BACKSPACE
    Press Keys                    ${add_Image_Badge}    DELETE
    Input information AEM        ${add_Image_Badge}                  /content/dam/badge/B2S.png
    sleep  2s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Select list AEM                ${section_NewArrival}
    Select list Wait AEM           ${NewArrival_No}
    Select list AEM                  ${select_Highlight}
    Select list Wait AEM             ${Highlight_No}
    sleep  1s
    Press Keys                    ${input_Category}     CTRL+a+BACKSPACE
    Press Keys                    ${input_Category}    DELETE
    sleep  1s
    Input information AEM         ${input_Category}     Dining
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Input information AEM         ${input_order_Badge}               10
    Input information AEM         ${Partner_Badge}                     the 1
    sleep  1s
    Click Element Wait SMP AEM             ${select_Partner_the1}
    sleep  2s
    Input information AEM         ${input_campaignID}                   12860
    # Input information AEM         ${input_campaignID}                   ${CampaignID5}
    sleep  1s
    Click Element Wait SMP AEM             ${btn_Retrieve Campaign Details}
    sleep  8s
    Click Element Wait SMP AEM             ${btn_Done}
Badge_AEM_18 Step09 Click Preview > Click Submit
    sleep  4s
    DoDouble Click Element AEM          ${btn_Preview_Page_badge_AEM}
    Select Frame        xpath=//iframe[@id='ContentFrame']
    sleep  4s
    Click Element Wait SMP AEM     ${btn_Submit_Preview_Page_badge_AEM}
    sleep  4s
    Reload Page
    Reload Page
    sleep  1s
    lick Element Wait AEM     ${btn_complete_Approve flow_badge_AEM}
    sleep  2s
    lick Element Wait AEM      ${btn_complete_ok_Approve flow_badge_AEM}
    sleep  2s
    Reload Page
    Reload Page
    sleep  1s
    Capture Page Screenshot       ${date_today}_Badge_AEM_18.png
    sleep  5s






