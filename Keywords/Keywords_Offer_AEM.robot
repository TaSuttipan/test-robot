*** Settings ***
Documentation
Library    DateTime
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Resource    ../Variable/Variable_Login_AEM.robot
Resource    ../Variable/Variable_Offer_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot


*** Keywords ***

Check if Questionnaire Offer AEM
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${icon_Offer_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM       ${folder_Regression AEM Offer_AEM}
    sleep  3s




#Offer_AEM_Expire Create offer expire today publish offer and voucher typr as reward via AEM
Offer_AEM_Expire_Today_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_Expire_Today_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_Expire_Today_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_EXPIRE_TODAY_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_Expire_Today_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_Expire_Today_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_Expire_Today_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Fashion_AEM}
    Input information AEM         ${input_title_th_AEM}    หมดอายุวันนี้
    Input information AEM         ${input_title_en_AEM}    EXPIRE TODAY
    Input information AEM         ${input_short_th_AEM}    หมดอายุวันนี้ Fashion
    Input information AEM         ${input_short_en_AEM}    EXPIRE TODAY Fashion
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Electronics
    sleep    1s
    Click Element Wait AEM        ${Click_Home Electronics Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Personal Care
    sleep    1s
    Click Element Wait AEM        ${Click_Personal Care Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Kids & Maternity Wear
    sleep    1s
    Click Element Wait AEM        ${Click_Kids & Maternity Wear Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Fashion
    sleep    1s
    Click Element Wait AEM        ${Click_Fashion Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_IssueBank_AEM}     CENTRAL
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_IssueBank_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Province_AEM}     Central
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_Province_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Channel_AEM}        POS
    sleep    1s
    Click Element Wait AEM        ${Click_POS Tags_Channel_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_Expire_Today_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_Expire_Today_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       100
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         999990000000010
Offer_AEM_Expire_Today_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_Expire_Today_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_Expire_Today_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_Expire_Today_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_Expire_Today.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s


#Offer_AEM_01 Create publish offer and voucher typr as reward via AEM

Offer_AEM_01_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_01_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_01_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_01_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_01_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_01_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Eat Around_AEM}
    Input information AEM         ${input_title_th_AEM}    รีวอร์ด_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_1 Title EN
    Input information AEM         ${input_short_th_AEM}    รีวอร์ด_1 Short Description TH Restaurant & Cafe
    Input information AEM         ${input_short_en_AEM}    Reward_1 Short Description EN Restaurant & Cafe
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_IssueBank_AEM}     CENTRAL
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_IssueBank_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Province_AEM}     Central
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_Province_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Channel_AEM}        POS
    sleep    1s
    Click Element Wait AEM        ${Click_POS Tags_Channel_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_01_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_01_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       100
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         999990000000010
Offer_AEM_01_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         10
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_01_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_01_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_01_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_01_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_01.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_01_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    999990000000010
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     10
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    10
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_1 Short Description EN Restaurant & Cafe
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                  Offer : Category / Restaurant & Cafe,Offer : Issuing Bank of credit card / CENTRAL,Offer : Province / Central,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         รีวอร์ด_1 Short Description TH Restaurant & Cafe
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}             "All Rewards","Eat Around"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s


#Offer_AEM_02 Create publish offer and voucher type as Pre Gen Code Reward via AEM(True)

Offer_AEM_02_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_02_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_02_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Pregen_1_True
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_02_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_02_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_02_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Beauty_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Home & Elctronics_AEM}
    Input information AEM         ${input_title_th_AEM}    Pregen_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Pregen_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Pregen_1 Short Description TH Home Electronics
    Input information AEM         ${input_short_en_AEM}    Pregen_1 Short Description EN Home Electronics
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Electronics
    sleep    1s
    Click Element Wait AEM        ${Click_Home Electronics Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Province_AEM}     All
    sleep    1s
    Click Element Wait AEM        ${Click_All Tags_Province_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}       Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_02_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     3
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Minutes_AEM}
Offer_AEM_02_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       50
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         aed70378-d861-11ea-85e3-fb74bfe96e5b
Offer_AEM_02_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Amount_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         10
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_02_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_02_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_02_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_02_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_02.PNG
    sleep  1s
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s

Offer_AEM_02_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_1_True
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_1_True
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     10
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   10
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      Pregen_1 Short Description EN Home Electronics
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                  Offer : Category / Home Electronics,Offer : Province / All
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         Pregen_1 Short Description TH Home Electronics
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Amount Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         180
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}             "All Rewards","Beauty","Home & Electronics"
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S
    sleep  3s


#Offer_AEM_03 Create publish offer and voucher type as Pre Gen Code Reward via AEM (False)

Offer_AEM_03_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_03_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_03_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Pregen_1_False
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_03_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_03_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_03_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    sleep  1s
    Select list AEM           ${checkbox_Minimize Offer_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Grocery_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Health & Wellness_AEM}
    Input information AEM         ${input_title_th_AEM}    F_Pregen_1 Title TH
    Input information AEM         ${input_title_en_AEM}    F_Pregen_1 Title EN
    Input information AEM         ${input_short_th_AEM}    F_Pregen_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    F_Pregen_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Grocery
    sleep    1s
    Click Element Wait AEM        ${Click_Home Grocery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Sports & Sports Fashion
    sleep    1s
    Click Element Wait AEM        ${Click_Sports & Sports Fashion Tags_Category_AEM}
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_03_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     5
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Minutes_AEM}
Offer_AEM_03_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       100
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         a11723fa-19b9-11eb-871e-5d46d5be1747
Offer_AEM_03_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_03_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_03_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_03_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_03_Step15 Verify Offer page
    Capture Page Screenshot          ${date_today}_Offer_AEM_03.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_03 Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_1_False
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_1_False
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    a11723fa-19b9-11eb-871e-5d46d5be1747
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   0
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         0
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      F_Pregen_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                   Offer : Category / Home Grocery,Offer : Category / Sports & Sports Fashion
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         F_Pregen_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         300
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}                "All Rewards","Grocery","Health & Wellness"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}           T1C TH
    sleep  3s



#Offer_AEM_04 Create bulk offer and a voucher type as Reward via AEM

Offer_AEM_04_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_04_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_04_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Bulk_1
    Click Element AEM          ${btn_create_offer_title_AEM}
    sleep  1s
Offer_AEM_04_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_04_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_04_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_bulk_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Input information AEM         ${input_title_th_AEM}    Bulk_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Bulk_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Bulk_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Bulk_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Fashion
    sleep    1s
    Click Element Wait AEM        ${Click_Fashion Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_04_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_04_Step12 Input Offer Mechanics

    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       1
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_04_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_04_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_04_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  8s
Offer_AEM_04_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_04_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          Offer_AEM_04.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_04_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Bulk_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Bulk_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Bulk_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            3
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         Bulk_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH


#Offer_AEM_05_Create bulk T1X offer and voucher type as Reward via AEM

Offer_AEM_05_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_05_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_05_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Bulk_T1X_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_05_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_05_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_05_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_bulk_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Select list AEM           ${select_Tier_AEM}
    Select list AEM           ${selected_Tier_T1X_AEM}
    Input information AEM         ${input_title_th_AEM}    Bulk_T1X_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Bulk_T1X_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Bulk_T1X_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Bulk_T1X_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Channel_AEM}        POS
    sleep    1s
    Click Element Wait AEM        ${Click_POS Tags_Channel_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_05_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_05_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       2
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
    Input Associated Reward Store AEM      ${Input_Bulk_Reward Associated_AEM}      Birthday Surprises
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_05_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_05_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_05_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_05_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_05_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_05.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_05_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Bulk_T1X_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Bulk_T1X_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}          Bulk_T1X_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_SMP}     T1X
    Wait Until Element Contains       ${field_fast_category_offer_tier_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_tier_SMP}            3
    Wait Until Element Contains       ${field_tags_offer_tier_SMP}                   Offer : Category / Restaurant & Cafe,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_SMP}         Bulk_T1X_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_SMP}          Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_tier_SMP}         2
    Wait Until Element Contains       ${field_category_offer_tier_SMP}               "Birthday Surprises"
    Wait Until Element Contains       ${field_description_th_offer_tier_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_SMP}            T1C TH
    sleep  3s




#Offer_AEM_06 Create targeted offer and voucher type as Reward via AEM

Offer_AEM_06_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_06_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_06_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Targeted_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_06_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_06_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_06_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_targeted_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Click Element Wait AEM    ${Radio_Guest Mode_false_AEM}
    Input information AEM         ${input_title_th_AEM}    Targeted_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Targeted_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Targeted_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Targeted_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_06_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_06_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       2
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
    sleep    1s
    Input Associated Reward Store AEM      ${Input_Target_Reward Associated_AEM}     TARGETED_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input Associated Reward Store AEM      ${Input_Target_Reward Associated_AEM}     TARGETED_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_06_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         66
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_06_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_06_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_06_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_06_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_06.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_06_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Targeted_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Targeted_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}    66
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    66
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         No
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Targeted_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_SMP}            Offer : Category / Restaurant & Cafe
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         Targeted_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_category_offer_SMP}               "TARGETED_1","TARGETED_2"
    Wait Until Element Contains       ${field_description_th_offer_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s


#Offer_AEM_07 Create others T1X offer and voucher type as privilege via AEM

Offer_AEM_07_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_07_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_07_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Privilege_T1X_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_07_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_07_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_07_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_others_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_privilege_AEM}
    Select list AEM           ${select_Tier_AEM}
    Select list AEM           ${selected_Tier_T1X_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_The 1 Exclusive_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    Tier Privilege_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Tier Privilege_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Tier Privilege_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Tier Privilege_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Electronics
    sleep    1s
    Click Element Wait AEM        ${Click_Home Electronics Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Personal Care
    sleep    1s
    Click Element Wait AEM        ${Click_Personal Care Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Kids & Maternity Wear
    sleep    1s
    Click Element Wait AEM        ${Click_Kids & Maternity Wear Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_07_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_07_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_07_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_07_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_07_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_07.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_07_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Privilege_T1X_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Privilege_T1X_1
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_partner_name_offer_Tier_Privilege_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_partner_code_offer_Tier_Privilege_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Tier_Privilege_SMP}          Yes
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Tier_Privilege_SMP}         Tier Privilege_1 Short Description EN
    Wait Until Element Contains       ${field_description_en_offer_Tier_Privilege_SMP}       ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_targetted_tier_offer_Tier_Privilege_SMP}     T1X
    Wait Until Element Contains       ${field_issue_channel_offer_Tier_Privilege_SMP}            6
    Wait Until Element Contains       ${field_tags_offer_Tier_Privilege_SMP}        Offer : Category / Home Electronics,Offer : Category / Restaurant & Cafe,Offer : Category / Personal Care,Offer : Category / Kids & Maternity Wear
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Tier_Privilege_SMP}        Tier Privilege_1 Short Description TH
    Wait Until Element Contains       ${field_countdown_timer_offer_Tier_Privilege_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_Tier_Privilege_SMP}         3
    Wait Until Element Contains       ${field_category_offer_Tier_Privilege_SMP}                 "The 1 Exclusive"
    Wait Until Element Contains       ${field_description_th_offer_Tier_Privilege_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Tier_Privilege_SMP}           T1C TH





#Offer_AEM_08 Create others offer and voucher type as trasnfer out via AEM

Offer_AEM_08_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_08_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_08_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Trasnfer_Out_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_08_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_08_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_08_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_others_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_transfer-out_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_TRANSFER OUT_AEM}
    Input information AEM         ${input_title_th_AEM}    Trasnfer_Out_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Trasnfer_Out_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Trasnfer_Out_1 Short Description TH Travel
    Input information AEM         ${input_short_en_AEM}    Trasnfer_Out_1 Short Description EN Travel
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Travel
    sleep    1s
    Click Element Wait AEM        ${Click_Travel Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     Esso PCL
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_08_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_08_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Input information AEM         ${Input_Transfer Partner Rate_AEM}         1
    Input information AEM         ${Input_Transfer The1 Rate_AEM}         2
    Input information AEM         ${Input_Transfer The1 Minimum Points_AEM}           1000
    Input information AEM         ${Input_Transfer Out ID_AEM}        SBL-TRN-OUT-ESO-NORMAL
Offer_AEM_08_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Partner_Trasnfer_Out_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM           ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         1
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Partner_Redeem_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Select list AEM           ${select_VAT Tax_AEM}
    Select list AEM           ${selected_VAT Tax 0.07_AEM}
    Select list AEM           ${select_Redemption Format_AEM}
    Select list AEM           ${selected_Redemption Format Format1_AEM}
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Esso PCL
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_08_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_08_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_08_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_08_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_08.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_08_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Trasnfer_Out_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Trasnfer_Out_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    SBL-TRN-OUT-ESO-NORMAL
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    1
    Wait Until Element Contains       ${field_partner_name_offer_SMP}          Esso (Thailand) PCL
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             ESO
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_vat_tax_offer_SMP}          0.07
    Wait Until Element Contains       ${field_transfer_the1_minimum_points_offer_Trasnfer_SMP}    1000
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Trasnfer_SMP}   Trasnfer_Out_1 Short Description EN Travel
    Wait Until Element Contains       ${field_item_price_offer_Trasnfer_SMP}  0.125
    Wait Until Element Contains       ${field_description_en_offer_Trasnfer_SMP}  ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_transfer_partner_rate_offer_Trasnfer_SMP}   1
    Wait Until Element Contains       ${field_fast_category_offer_Trasnfer_SMP}   Partner_Redeem
    Wait Until Element Contains       ${field_issue_channel_offer_Trasnfer_SMP}   6
    Wait Until Element Contains       ${field_tag_offer_Trasnfer_SMP}         Offer : Category / Travel
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Trasnfer_SMP}   Trasnfer_Out_1 Short Description TH Travel
    Wait Until Element Contains       ${field_product_type_offer_Trasnfer_SMP}    Partner Transfer Out
    Wait Until Element Contains       ${field_countdown_timer_offer_Trasnfer_SMP}     0
    Wait Until Element Contains       ${field_voucher_type_offer_Trasnfer_SMP}    4
    Wait Until Element Contains       ${field_vat_type_offer_Trasnfer_SMP}     Format 1
    Wait Until Element Contains       ${field_transfer_the1_rate_offer_Trasnfer_SMP}  2
    Wait Until Element Contains       ${field_description_th_offer_Trasnfer_SMP}  ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Trasnfer_SMP}    "TRANSFER OUT"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Trasnfer_SMP}   ESO
    sleep  3s



#Offer_AEM_09_Create publish offer and voucher type as custom cash coupon via AEM

Offer_AEM_09_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_09_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_09_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Custom_Cash_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_09_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_09_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_09_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_custom-cash-coupon_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    Custom_Cash_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Custom_Cash_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Custom_Cash_1 Short Description TH Financial
    Input information AEM         ${input_short_en_AEM}    Custom_Cash_1 Short Description EN Financial
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Financial
    sleep    1s
    Click Element Wait AEM        ${Click_Financial Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_09_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Duration after issuance_AEM}
    Input information AEM          ${input_Validity Period_AEM}     3
    sleep    1s
    Select list Wait AEM           ${select_Validity Unit_AEM}
    Select list Wait AEM           ${selected_Validity Unit_Months_AEM}
Offer_AEM_09_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Cash_Coupon_AEM}
    Input information AEM          ${Input_Cash Coupon Exchange Rate_AEM}     8
Offer_AEM_09_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM           ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         1
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_09_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_09_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_09_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_09_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_09.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_09_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Custom_Cash_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Custom_Cash_1
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Duration_after_offer_SMP}     3
    List Selection Should Be         ${field_Redemption_Duration_after_unit_offer_SMP}      Months
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    1
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Custom_Cash_1 Short Description EN Financial
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_cash_coupon_exchange_rate_offer_SMP}    8
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                  Offer : Category / Financial
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         Custom_Cash_1 Short Description TH Financial
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         7
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    sleep  3s


#Offer_AEM_10 Create tier offer and voucher type as reward via AEM

Offer_AEM_10_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_10_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_10_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_T1X_Reward_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_10_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_10_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_10_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_tier_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Select list AEM           ${select_Tier_AEM}
    Select list AEM           ${selected_Tier_T1X_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_The 1 Exclusive_AEM}
    Input information AEM         ${input_title_th_AEM}    T1X_Reward_1 Title TH
    Input information AEM         ${input_title_en_AEM}    T1X_Reward_1 Title EN
    Input information AEM         ${input_short_th_AEM}    T1X_Reward_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    T1X_Reward_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Grocery
    sleep    1s
    Click Element Wait AEM        ${Click_Home Grocery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Donation & CSR
    sleep    1s
    Click Element Wait AEM        ${Click_Donation & CSR Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Kids & Maternity Wear
    sleep    1s
    Click Element Wait AEM        ${Click_Kids & Maternity Wear Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Fashion
    sleep    1s
    Click Element Wait AEM        ${Click_Fashion Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_10_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_10_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       100
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_10_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         50
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_10_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_10_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_10_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_10_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_10.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_10_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_T1X_Reward_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_T1X_Reward_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     50
#Custom Dat
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    50
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}          T1X_Reward_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_SMP}     T1X
    Wait Until Element Contains       ${field_fast_category_offer_tier_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_tier_SMP}            7
    Wait Until Element Contains       ${field_tags_offer_tier_SMP}              Offer : Category / Book & Stationery,Offer : Category / Home Grocery,Offer : Category / Donation & CSR,Offer : Category / Kids & Maternity Wear,Offer : Category / Fashion
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_SMP}         T1X_Reward_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_SMP}          Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_tier_SMP}         2
    Wait Until Element Contains       ${field_category_offer_tier_SMP}               "The 1 Exclusive"
    Wait Until Element Contains       ${field_description_th_offer_tier_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_SMP}            T1C TH
    sleep  3s




#Offer_AEM_11 Create public offer and voucher type as pre gen multiuse code via AEM (True)
Offer_AEM_11_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_11_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_11_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Pregen_MultiUse_1_True
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_11_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_11_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
Offer_AEM_11_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-multiuse-code_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Play & Learn_AEM}
    Input information AEM         ${input_title_th_AEM}    Pregen_MultiUse_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Pregen_MultiUse_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Pregen_MultiUse_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Pregen_MultiUse_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_11_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     3
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Minutes_AEM}
Offer_AEM_11_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       5
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         PGMULTI01
Offer_AEM_11_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         50
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_11_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_11_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_11_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_11_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_11.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_11 Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_MultiUse_1_True
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_MultiUse_1_True
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    PGMULTI01
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     50
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   50
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      Pregen_MultiUse_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}            Offer : Category / Class & Workshop
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         Pregen_MultiUse_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         180
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        9
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}             "All Rewards","Play & Learn"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}           T1C TH
    sleep  3s




#Offer_AEM_12 Create public offer and voucher type as pre gen multiuse code via AEM (False)
Offer_AEM_12_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_12_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_12_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Pregen_MultiUse_1_False
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_12_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  7s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_12_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_12_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-multiuse-code_AEM}
    sleep  1s
    Select list AEM           ${checkbox_Minimize Offer_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Beauty_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Charities_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    F_Prege_MultiUse_1 Title TH
    Input information AEM         ${input_title_en_AEM}    F_Prege_MultiUse_1 Title EN
    Input information AEM         ${input_short_th_AEM}    F_Prege_MultiUse_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    F_Prege_MultiUse_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Beauty Service
    sleep    1s
    Click Element Wait AEM        ${Click_Beauty Service Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Donation & CSR
    sleep    1s
    Click Element Wait AEM        ${Click_Donation & CSR Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_12_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     5
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Minutes_AEM}
Offer_AEM_12_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       100
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         PGMULTI01F
Offer_AEM_12_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_12_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_12_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_12_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_12_Step15 Verify Offer page
    Capture Page Screenshot          ${date_today}_Offer_AEM_12.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_12 Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_MultiUse_1_False
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_MultiUse_1_False
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    PGMULTI01F
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   0
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         0
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      F_Prege_MultiUse_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                  Offer : Category / Beauty Service,Offer : Category / Donation & CSR
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         F_Prege_MultiUse_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         300
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        9
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}             "All Rewards","Beauty","Charities"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}           T1C TH
    sleep  3s





#Offer_AEM_13 Create public child 1 offer and voucher type as reward of reward group 1 via AEM
Offer_AEM_13_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_13_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_13_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_child1_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_13_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_13_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_13_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Input information AEM         ${input_title_th_AEM}    Reward_child1_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_child1_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Reward_child1_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Reward_child1_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_13_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_13_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Type_AEM}
    Select list AEM         ${select_Type_Acquisition Frequency_AEM}
    Input information AEM          ${input_Max Acquisitions_AEM}       100
    Input information AEM          ${input_Time Acquisitions_AEM}            1
    Select list AEM         ${select_Unit of Time Acquisitions_AEM}
    Select list AEM         ${selected_Unit of Time Acquisitions_Months_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_13_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         50
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_13_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_13_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_13_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_13_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_13.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_13_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_child1_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_child1_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     50
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    50
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_child1_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Reward_child1_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s


#Offer_AEM_14 Create public child 2 offer and voucher type as pre gen code reward of reward group 1 via AEM
Offer_AEM_14_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_14_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_14_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_PreGen_child1_2
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_14_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_14_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_14_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    Input information AEM         ${input_title_th_AEM}     PreGen_child1_2 Title TH
    Input information AEM         ${input_title_en_AEM}     PreGen_child1_2 Title EN
    Input information AEM         ${input_short_th_AEM}     PreGen_child1_2 Short Description TH
    Input information AEM         ${input_short_en_AEM}     PreGen_child1_2 Short Description EN
    Input information AEM         ${input_Description_th_AEM}     ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}     ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}     ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}     ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_14_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     10
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Secounds_AEM}
Offer_AEM_14_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       5
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         aed70378-d861-11ea-85e3-fb74bfe96e5b
Offer_AEM_14_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         100
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_14_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_14_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_14_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_14_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_12.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_14_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_PreGen_child1_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_PreGen_child1_2
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     100
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}    100
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}           Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      PreGen_child1_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         PreGen_child1_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}           Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         10
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}         8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S





#Offer_AEM_15 Create public offer and voucher type as rewad group as rewardgroup_1 via AEM
Offer_AEM_15_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_15_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_15_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Group1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_15_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_15_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_15_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward-group_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_All Rewards_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Play & Learn_AEM}
    Input information AEM         ${input_title_th_AEM}    Reward_Group1 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_Group1 Title EN
    Input information AEM         ${input_short_th_AEM}    Reward_Group1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Reward_Group1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_15_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}       ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_15_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_Reward_child1_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_PreGen_child1_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_15_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         75
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_15_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_15_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_15_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_15_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_15.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_15_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_Group1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_Group1
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     75
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    75
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_Group1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Reward_Group1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         6
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}             "All Rewards","Play & Learn"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Textfield Value Should Be        ${field_Number of Selections_Group_SMP}      1
    Wait Until Element Contains       ${field_child1_2_offer_Group_SMP}                  ${date_today}_PreGen_child1_2
    Wait Until Element Contains       ${field_child1_1_offer_Group_SMP}                  ${date_today}_Reward_child1_1
    sleep  3s



#Offer_AEM_16 Create targeted child 1 offer and voucher type as reward of reward group with restrictions 2 via AEM
Offer_AEM_16_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_16_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_16_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_child2_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_16_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_16_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_16_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_targeted_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Input information AEM         ${input_title_th_AEM}    Reward_child2_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_child2_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Reward_child2_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Reward_child2_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Utilities & Services
    sleep    1s
    Click Element Wait AEM        ${Click_Utilities & Services Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_16_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}       ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM        ${input_Offer Weight_AEM}     1
Offer_AEM_16_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       5
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_R_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_16_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         200
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_16_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_16_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_16_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_16_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot         ${date_today}_Offer_AEM_16.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_16_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_child2_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_child2_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      1
    Textfield Value Should Be       ${field_Point_offer_SMP}     200
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    200
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}          Reward_child2_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         R_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_SMP}                     Offer : Category / Utilities & Services
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Reward_child2_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s


#Offer_AEM_17 Create targeted child 2 offer and voucher type as pre gen multiuse code of reward group with restrictions 2 via AEM

Offer_AEM_17_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_17_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_17_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_PreGenMultiUse_child2_2
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_17_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_17_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_17_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_targeted_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-multiuse-code_AEM}
    Input information AEM         ${input_title_th_AEM}     PreGenMultiUse_child2_2 Title TH
    Input information AEM         ${input_title_en_AEM}     PreGenMultiUse_child2_2 Title EN
    Input information AEM         ${input_short_th_AEM}     PreGenMultiUse_child2_2 Short Description TH
    Input information AEM         ${input_short_en_AEM}     PreGenMultiUse_child2_2 Short Description EN
    Input information AEM         ${input_Description_th_AEM}     ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}     ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}     ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}     ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Utilities & Services
    sleep    1s
    Click Element Wait AEM        ${Click_Utilities & Services Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}       Siam Commercial Bank
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_17_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     5
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Minutes_AEM}
    Input information AEM          ${input_Offer Weight_AEM}      2
Offer_AEM_17_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       1
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_B_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         PGMULTIC22
Offer_AEM_17_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         300
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}    Siam Commercial Bank
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_17_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_17_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_17_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_17_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_17.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_17_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_PreGenMultiUse_child2_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_PreGenMultiUse_child2_2
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    PGMULTIC22
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      2
    Textfield Value Should Be       ${field_Point_offer_SMP}     300
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}    300
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         Siam Commercial Bank
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}        Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}        0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             TPN
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}        PreGenMultiUse_child2_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         B_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                      Offer : Category / Utilities & Services
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}              PreGenMultiUse_child2_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         300
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}         9
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            TPN
    sleep  3s


#Offer_AEM_18 Create targeted child 3 offer and voucher type as pre gen code reward of reward group with restrictions 2 via AEM
Offer_AEM_18_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_18_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_18_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_PreGen_child2_3
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_18_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_18_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_18_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_targeted_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    Input information AEM         ${input_title_th_AEM}     PreGen_child2_3 Title TH
    Input information AEM         ${input_title_en_AEM}     PreGen_child2_3 Title EN
    Input information AEM         ${input_short_th_AEM}     PreGen_child2_3 Short Description TH
    Input information AEM         ${input_short_en_AEM}     PreGen_child2_3 Short Description EN
    Input information AEM         ${input_Description_th_AEM}     ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}     ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}     ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}     ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Utilities & Services
    sleep    1s
    Click Element Wait AEM        ${Click_Utilities & Services Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}          Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_18_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     1
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Hours_AEM}
    Input information AEM          ${input_Offer Weight_AEM}      3
Offer_AEM_18_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Type_AEM}
    Select list AEM         ${select_Type_Acquisition Frequency_AEM}
    Input information AEM          ${input_Max Acquisitions_AEM}       1
    Select list AEM         ${select_Personal Acquisitions_AEM}
    Select list AEM         ${selected_Personal Acquisitions_Yes_AEM}
    Input information AEM          ${input_Time Acquisitions_AEM}            1
    Select list AEM         ${select_Unit of Time Acquisitions_AEM}
    Select list AEM         ${selected_Unit of Time Acquisitions_Weeks_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_F_Cash_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         aed70378-d861-11ea-85e3-fb74bfe96e5b
Offer_AEM_18_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         400
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}     Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_18_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_18_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_18_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_18_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_18.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_18_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_PreGen_child2_3
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_PreGen_child2_3
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      3
    Textfield Value Should Be       ${field_Point_offer_SMP}     400
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}     400
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}            Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}          Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}              B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}          Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}        PreGen_child2_3 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}           0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}         ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}          F_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}           T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                      Offer : Category / Utilities & Services
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         PreGen_child2_3 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}       3600
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}          8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}     ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}              Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S
    sleep  3s


#Offer_AEM_19 Create targeted offer and voucher type as reward group with restrictions as reward_group_wr_2 via AEM

Offer_AEM_19_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_19_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_19_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_Group_WR_2
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_19_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_19_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_19_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_targeted_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward-group-with-restriction_AEM}
    Input information AEM         ${input_title_th_AEM}    Reward_Group_WR_2 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_Group_WR_2 Title EN
    Input information AEM         ${input_short_th_AEM}    Reward_Group_WR_2 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Reward_Group_WR_2 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Utilities & Services
    sleep    1s
    Click Element Wait AEM        ${Click_Utilities & Services Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_19_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}       ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_19_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       2
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_Reward_child2_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_PreGenMultiUse_child2_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_PreGen_child2_3
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input Associated Reward Store AEM      ${Input_Target_Reward Associated_AEM}     TARGETED_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input Associated Reward Store AEM      ${Input_Target_Reward Associated_AEM}     TARGETED_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s

Offer_AEM_19_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         200
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_19_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_19_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_19_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_19_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_19.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_19_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_Group_WR_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_Group_WR_2
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     200
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    200
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_Group_WR_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_SMP}                      Offer : Category / Utilities & Services
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}              Reward_Group_WR_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         5
    Wait Until Element Contains       ${field_description_th_offer_SMP}     ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}             "TARGETED_1","TARGETED_2"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Textfield Value Should Be        ${field_Number of Selections_Group_SMP}      1
    Wait Until Element Contains       ${field_child2_3_offer_Group_SMP}                  ${date_today}_PreGen_child2_3
    Wait Until Element Contains       ${field_child2_2_offer_Group_SMP}                  ${date_today}_PreGenMultiUse_child2_2
    Wait Until Element Contains       ${field_child2_1_offer_Group_SMP}                  ${date_today}_Reward_child2_1
    sleep  3s


#Offer_AEM_20 Create public child 1 offer and voucher type as reward of Package 3 via AEM

Offer_AEM_20_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_20_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_20_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Reward_child3_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_20_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_20_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_20_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Input information AEM         ${input_title_th_AEM}    Reward_child3_1 Title TH
    Input information AEM         ${input_title_en_AEM}    Reward_child3_1 Title EN
    Input information AEM         ${input_short_th_AEM}    Reward_child3_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Reward_child3_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_20_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_20_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_20_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_20_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_20_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_20_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_20_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_20.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_20_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_child3_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_child3_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_child3_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Reward_child3_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s


#Offer_AEM_21 Create public child 2 offer and voucher type as pre gen code reward of Package 3 via AEM

Offer_AEM_21_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_21_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_21_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_PreGen_child3_2
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_21_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_21_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_21_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    Input information AEM         ${input_title_th_AEM}     PreGen_child3_2 Title TH
    Input information AEM         ${input_title_en_AEM}     PreGen_child3_2 Title EN
    Input information AEM         ${input_short_th_AEM}     PreGen_child3_2 Short Description TH
    Input information AEM         ${input_short_en_AEM}     PreGen_child3_2 Short Description EN
    Input information AEM         ${input_Description_th_AEM}     ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}     ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}     ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}     ${Text_Term and Condition English_Offer_AEM}
    Input information AEM         ${input_partner_AEM}     Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_21_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     10
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Secounds_AEM}
Offer_AEM_21_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         aed70378-d861-11ea-85e3-fb74bfe96e5b
Offer_AEM_21_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_21_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_21_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_21_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_21_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_21.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_21_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_PreGen_child3_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_PreGen_child3_2
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}           Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}       PreGen_child3_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}        PreGen_child3_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}          Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         10
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S
    sleep  3s



#Offer_AEM_22 Create public offer and voucher type as reward group with restriction as Package 3 via AEM

Offer_AEM_22_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_22_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_22_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_Package3
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_22_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_22_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_22_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_public_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward-group-with-restriction_AEM}
    Click Element AEM         ${checkbox_package_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    Package3 Title TH
    Input information AEM         ${input_title_en_AEM}    Package3 Title EN
    Input information AEM         ${input_short_th_AEM}    Package3 Short Description TH
    Input information AEM         ${input_short_en_AEM}    Package3 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Home Electronics
    sleep    1s
    Click Element Wait AEM        ${Click_Home Electronics Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Restaurant & Cafe
    sleep    1s
    Click Element Wait AEM        ${Click_Restaurant & Cafe Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Personal Care
    sleep    1s
    Click Element Wait AEM        ${Click_Personal Care Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Kids & Maternity Wear
    sleep    1s
    Click Element Wait AEM        ${Click_Kids & Maternity Wear Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Fashion
    sleep    1s
    Click Element Wait AEM        ${Click_Fashion Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_IssueBank_AEM}     CENTRAL
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_IssueBank_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Province_AEM}     Central
    sleep    1s
    Click Element Wait AEM        ${Click_Central Tags_Province_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Channel_AEM}        POS
    sleep    1s
    Click Element Wait AEM        ${Click_POS Tags_Channel_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_22_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}       ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_22_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Personal_AEM}
    Select list AEM         ${selected_Personal_Yes_AEM}
    Input information AEM          ${Input_Total Available_AEM}       1
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_Reward_child3_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_PreGen_child3_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_22_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         0
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_22_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_22_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_22_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_22_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot         ${date_today}_Offer_AEM_22.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_22_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Package3
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Wait Until Element Contains       ${field_Offer_Type_SMP}           Package
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Package3
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Package3 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}             Offer : Category / Home Electronics,Offer : Category / Restaurant & Cafe,Offer : Category / Personal Care,Offer : Category / Kids & Maternity Wear,Offer : Category / Fashion,Offer : Issuing Bank of credit card / CENTRAL,Offer : Province / Central,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Package3 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         5
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
Offer_AEM_22_Step16 Verify Configure Package Offers for Selection
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Wait Until Element Contains        ${Configure Package_Group_SMP}        Configure Package Offers for Selection
    Wait Until Element Contains        ${Award On Issuance_Package_Group_SMP}        Award On Issuance
    Wait Until Element Contains        ${The package is issued_Group_SMP}            This means the customer is awarded the grouped offers at the time the package is issued.
    sleep  3s
    Wait Until Element Contains       ${field_child1_2_offer_Group_SMP}                  ${date_today}_PreGen_child3_2
    Wait Until Element Contains       ${field_child1_1_offer_Group_SMP}                  ${date_today}_Reward_child3_1
    sleep  3s






#Offer_AEM_23 Create tier child 1 offer and voucher type as reward of reward group 4 via AEM
Offer_AEM_23_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_23_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_23_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_T1X_Reward_child4_1
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_23_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_23_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_23_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_tier_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward_AEM}
    Select list AEM          ${select_Tier_AEM}
    Select list AEM          ${selected_Tier_T1X_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    T1X_Reward_child4_1 Title TH
    Input information AEM         ${input_title_en_AEM}    T1X_Reward_child4_1 Title EN
    Input information AEM         ${input_short_th_AEM}    T1X_Reward_child4_1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    T1X_Reward_child4_1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_23_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_23_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Select list AEM         ${select_Type_AEM}
    Select list AEM         ${select_Type_Acquisition Frequency_AEM}
    Input information AEM          ${input_Max Acquisitions_AEM}       100
    Input information AEM          ${input_Time Acquisitions_AEM}            1
    Select list AEM         ${select_Unit of Time Acquisitions_AEM}
    Select list AEM         ${selected_Unit of Time Acquisitions_Months_AEM}
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         100
Offer_AEM_23_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         50
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_23_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_23_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_23_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_23_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_23.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_23_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  3s
#    Input Email and Password SMP     ${input_email_SMP}     ${input_password_SMP}     ${email_SMP}     ${password_SMP}
#    Click Element SMP         ${btn_login_SMP}
#    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_T1X_Reward_child4_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_T1X_Reward_child4_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     50
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    50
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       T1X_Reward_child4_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_tier_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_tier_SMP}            7
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_SMP}     T1X
    Wait Until Element Contains       ${field_tags_offer_tier_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_SMP}          T1X_Reward_child4_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_tier_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_tier_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_SMP}            T1C TH
    sleep  3s

#Offer_AEM_24 Create tier child 2 offer and voucher type as pre gen code reward of reward group 4 via AEM

Offer_AEM_24_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_24_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_24_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_T1X_PreGen_child4_2
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_24_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_24_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_24_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_tier_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_pre-gen-code-reward_AEM}
    Select list AEM           ${select_Tier_AEM}
    Select list AEM           ${selected_Tier_T1X_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}     T1X_PreGen_child4_2 Title TH
    Input information AEM         ${input_title_en_AEM}     T1X_PreGen_child4_2 Title EN
    Input information AEM         ${input_short_th_AEM}     T1X_PreGen_child4_2 Short Description TH
    Input information AEM         ${input_short_en_AEM}     T1X_PreGen_child4_2 Short Description EN
    Input information AEM         ${input_Description_th_AEM}     ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}     ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}     ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}     ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}     /content/dam/the1/offers/ROBOT_TEST_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_TH_AEM}
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}     /content/dam/the1/offers/ROBOT_TEST_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File ROBOT_TEST_EN_AEM}
    sleep    1s
Offer_AEM_24_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     10
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Secounds_AEM}
Offer_AEM_24_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Click Element AEM          ${btn_Add_Restriction_AEM}
    Input information AEM          ${Input_Total Available_AEM}       5
    Select list AEM           ${select_POS_Voucher_Type_AEM}
    Select list AEM           ${selected_E_Discount_Coupon_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         aed70378-d861-11ea-85e3-fb74bfe96e5b
Offer_AEM_24_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Percent_Discount_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         100
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_Discount_Coupon_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
    Clear Element Text     ${Input_Partner Point Charging_offer_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_24_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_24_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_24_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_24_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_24.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_24_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_T1X_PreGen_child4_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_T1X_PreGen_child4_2
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     100
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}    100
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}           Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      T1X_PreGen_child4_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}           0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_Pregen_SMP}    T1X
    Wait Until Element Contains       ${field_fast_category_offer_tier_Pregen_SMP}      Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_tier_Pregen_SMP}             7
    Wait Until Element Contains       ${field_tags_offer_tier_Pregen_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_Pregen_SMP}         T1X_PreGen_child4_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_Pregen_SMP}            Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_Pregen_SMP}          10
    Wait Until Element Contains       ${field_voucher_type_offer_tier_Pregen_SMP}         8
    Wait Until Element Contains       ${field_description_th_offer_tier_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_tag_offer_tier_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_Pregen_SMP}             B2S
    sleep  3s


#Offer_AEM_25 Create tier offer and voucher type as reward group as reward group 4 via AEM

Offer_AEM_25_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/offers/uat_e2e_20200608/regression_bot
    sleep  1s
Offer_AEM_25_Step08 Select Offer Page
    Click Element Wait AEM           ${card_offer_AEM}
    Click Element Wait AEM           ${btn_next_card_offer_AEM}
Offer_AEM_25_Step09 Input Title Name > Click Create
    Input information AEM     ${input_offer_title_AEM}     ${date_today}_T1X_Reward_Group4
    Click Element AEM          ${btn_create_offer_title_AEM}
Offer_AEM_25_Step10 Click Open
    Click Element Wait AEM            ${btn_open_offer_title_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_25_Step11 Click Edit Offer > Click Configure
    sleep  5s
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_25_Step12 Input Offer Information
    Select list AEM           ${select_Issue_Method_AEM}
    Select list AEM           ${selected_Issue_Method_tier_offer_AEM}
    Select list AEM           ${select_Voucher_Type_AEM}
    Select list AEM           ${selected_Voucher_Type_reward-group_AEM}
    Select list AEM           ${select_Tier_AEM}
    Select list AEM           ${selected_Tier_T1X_AEM}
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_The 1 Exclusive_AEM}
    sleep  1s
    Input information AEM         ${input_title_th_AEM}    T1X_Reward_Group1 Title TH
    Input information AEM         ${input_title_en_AEM}    T1X_Reward_Group1 Title EN
    Input information AEM         ${input_short_th_AEM}    T1X_Reward_Group1 Short Description TH
    Input information AEM         ${input_short_en_AEM}    T1X_Reward_Group1 Short Description EN
    Input information AEM         ${input_Description_th_AEM}    ${Text_Description Thai_Offer_AEM}
    Input information AEM         ${input_Description_en_AEM}    ${Text_Description English_Offer_AEM}
    Input information AEM         ${input_term_th_AEM}    ${Text_Term and Condition Thai_Offer_AEM}
    Input information AEM         ${input_term_en_AEM}    ${Text_Term and Condition English_Offer_AEM}
    sleep    1s
    Input information AEM          ${input_Offer Tags_Category_AEM}      Class & Workshop
    sleep    1s
    Click Element Wait AEM        ${Click_Class & Workshop Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Book & Stationery
    sleep    1s
    Click Element Wait AEM        ${Click_Book & Stationery Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_Offer Tags_Category_AEM}      Toys
    sleep    1s
    Click Element Wait AEM        ${Click_Toys Tags_Category_AEM}
    sleep    1s
    Input information AEM         ${input_partner_AEM}     T1C TH
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}      /content/dam/the1/offers/ROBOT_TEST.jpg
    sleep    5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}      /content/dam/the1/offers/ROBOT_TEST.jpg
    sleep    5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_25_Step12 Input Offer Fulfillment
    Click Element AEM          ${Offer_Fulfillment_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      ${date of Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}       ${date of Issuance Period_End Date_AEM}
    Select list AEM           ${select_Can_be_Used_AEM}
    Select list AEM           ${selected_Same as issuance period_AEM}
Offer_AEM_25_Step12 Input Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_T1X_Reward_child4_1
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_T1X_PreGen_child4_2
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_25_Step12 Input Siebel Configuration
    Click Element AEM          ${Siebel_Configuration_AEM}
    Select list AEM           ${select_Product_Type_AEM}
    Select list AEM           ${selected_Product_Type_Cash_Coupon_AEM}
    Select list AEM           ${Select_Product_Subtype_AEM}
    Select list AEM          ${Selected_Product_Subtype_Product_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         75
    Select list AEM            ${Select_Fast_Category_AEM}
    Select list AEM            ${Select_Fast_Category_T1CT_AEM}
    Input information AEM         ${Input_Item_Cost_AEM}         0.125
    Input information AEM         ${Input_Item_Price_AEM}       0.125
    Input information AEM         ${Input_Point_Value_AEM}      0.125
Offer_AEM_25_Step13 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  1s
Offer_AEM_25_Step14 Click Preview > Click Submit
    sleep  1s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_25_Step14 Approve Flow
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_25_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_25.PNG
    Switch Window     title=STAGE | AEM Sites
    sleep  1s
    Close Window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_25_Step16 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  3s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    sleep  3s
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_T1X_Reward_Group4
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_T1X_Reward_Group4
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     75
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    75
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       T1X_Reward_Group1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_SMP}     T1X
    Wait Until Element Contains       ${field_fast_category_offer_tier_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_tier_SMP}           7
    Wait Until Element Contains       ${field_tags_offer_tier_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_SMP}          T1X_Reward_Group1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_SMP}          Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_tier_SMP}         6
    Wait Until Element Contains       ${field_description_th_offer_tier_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_tier_SMP}             "The 1 Exclusive"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_SMP}            T1C TH
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Textfield Value Should Be        ${field_Number of Selections_Group_SMP}      1
    Wait Until Element Contains       ${field_child1_2_offer_Group_SMP}                  ${date_today}_T1X_PreGen_child4_2
    Wait Until Element Contains       ${field_child1_1_offer_Group_SMP}                  ${date_today}_T1X_Reward_child4_1
    sleep  3s




#Offer_AEM_26 Download new offer via AEM to excel file for update offer in siebel
Offer_AEM_26_Step04 Click Folder Offer under the 1 Central and Offer_AEM_18_Step05 Select offer pic all voucher Type
    sleep  1s
    Go To           https://uatcreator.the1.co.th/sites.html/content/the1/offers
    sleep  1s
    Click Element Wait AEM       ${folder_Pic_Regression AEM Offer_AEM}
    sleep  5s
    ${present}=    Run Keyword And Return Status      Click Element Wait AEM      ${btn ... Download Offers AEM Offer_AEM}
    Run Keyword if     '${present}'=='True'     btn Download Offers
    sleep  3s
    Click Element Wait AEM       ${btn Download Offers AEM Offer_AEM}
    sleep  10s
    Capture Page Screenshot          ${date_today}_Offer_AEM_26.PNG
    sleep  3s

#Offer_AEM_27 Edit add offer category and change siebel points of public offer and voucher type as reward via AEM
Offer_AEM_27_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_reward1.html
    sleep  1s
Offer_AEM_27_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  1s
Offer_AEM_27_Step09 Edit Offer Information
    sleep  1s
    Select list AEM           ${select_offer_category_AEM}
    Select list AEM           ${selected_offer_category_Grocery_AEM}
    sleep  1s
    Click Element AEM          ${Siebel_Configuration_AEM}
    Clear Element Text                    ${input_Siebel_Points_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         11
    sleep  1s
Offer_AEM_27_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_27_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_27_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_27.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_27_Step13 Verify Offer management and Reward store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_1
    sleep  2s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  2s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    999990000000010
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     11
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    11
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_1 Short Description EN Restaurant & Cafe
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                  Offer : Category / Restaurant & Cafe,Offer : Issuing Bank of credit card / CENTRAL,Offer : Province / Central,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         รีวอร์ด_1 Short Description TH Restaurant & Cafe
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}             "All Rewards","Eat Around"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s



#Offer_AEM_28 Edit change offer category and change image of public offer and voucher type as pre gen code reward via AEM

Offer_AEM_28_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_pregen1true.html
    sleep  3s

Offer_AEM_28_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_28_Step09 Edit Offer Information
    sleep  1s
    Select list AEM           ${checkbox_Minimize Offer_AEM}
    sleep  1s
    Double Click Element AEM         ${btn_Close_category_2_AEM}
    sleep  5s
    Double Click Element AEM         ${btn_Close_category_2_AEM}
    sleep  5s
    Select list AEM           ${select_offer_category_AEM}
    sleep  2s
    Select list AEM           ${selected_offer_category_Eat Around_AEM}
    sleep  2s
    Click Element Wait AEM           ${btn_delete_Mobile_Images_TH_AEM}
    sleep  2s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}      /content/dam/the1/offers/ROBOT_TEST_IMG_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File_ROBOT_TEST_IMG_TH_AEM}
    sleep    1s
    Click Element Wait AEM           ${btn_delete_Mobile_Images_EN_AEM}
    sleep  2s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}      /content/dam/the1/offers/ROBOT_TEST_IMG_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File_ROBOT_TEST_IMG_EN_AEM}
    sleep    1s

Offer_AEM_28_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_28_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_28_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_28.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_28_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_1_True
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_1_True
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     10
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   10
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         0
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      Pregen_1 Short Description EN Home Electronics
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}                  Offer : Category / Home Electronics,Offer : Province / All
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         Pregen_1 Short Description TH Home Electronics
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Amount Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         180
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}              "All Rewards","Eat Around"
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S
    sleep  3s
#image offer
    Click Element Wait SMP            ${tab_Creative_Offer_SMP}
    sleep  3s
    Wait Until Page Contains Element          ${field_Offer Graphic_offer_SMP}
    Textfield Value Should Be                 ${field_Offer Graphic_offer_SMP}        https://uatlibrary.the1.co.th/content/dam/the1/offers/ROBOT_TEST_IMG_EN.jpg


#Offer_AEM_29 Edit change exchange rate of other offer and voucher type as trasnfer out via AEM
Offer_AEM_29_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_trasnferout1.html
    sleep  1s
Offer_AEM_29_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_29_Step09 Edit Offer Information
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  1s
    Clear Element Text Wait AEM           ${Input_Transfer Partner Rate_AEM}
    Input information AEM         ${Input_Transfer Partner Rate_AEM}         2
    sleep  1s
    Clear Element Text Wait AEM           ${Input_Transfer The1 Rate_AEM}
    Input information AEM         ${Input_Transfer The1 Rate_AEM}         4
    sleep  1s
    Clear Element Text Wait AEM          ${Input_Transfer The1 Minimum Points_AEM}
    Input information AEM         ${Input_Transfer The1 Minimum Points_AEM}           2000
    sleep  1s
    Clear Element Text Wait AEM          ${Input_Transfer Out ID_AEM}
    Input information AEM         ${Input_Transfer Out ID_AEM}        EDIT-SBL-TRN-OUT-ESO-NORMAL
Offer_AEM_29_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_29_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_29_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_29.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_29_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Trasnfer_Out_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Trasnfer_Out_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    EDIT-SBL-TRN-OUT-ESO-NORMAL
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    1
    Wait Until Element Contains       ${field_partner_name_offer_SMP}          Esso (Thailand) PCL
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             ESO
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_vat_tax_offer_SMP}          0.07
    Wait Until Element Contains       ${field_transfer_the1_minimum_points_offer_Trasnfer_SMP}    2000
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Trasnfer_SMP}   Trasnfer_Out_1 Short Description EN Travel
    Wait Until Element Contains       ${field_item_price_offer_Trasnfer_SMP}  0.125
    Wait Until Element Contains       ${field_description_en_offer_Trasnfer_SMP}  ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_transfer_partner_rate_offer_Trasnfer_SMP}   2
    Wait Until Element Contains       ${field_fast_category_offer_Trasnfer_SMP}   Partner_Redeem
    Wait Until Element Contains       ${field_issue_channel_offer_Trasnfer_SMP}   6
    Wait Until Element Contains       ${field_tag_offer_Trasnfer_SMP}         Offer : Category / Travel
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Trasnfer_SMP}   Trasnfer_Out_1 Short Description TH Travel
    Wait Until Element Contains       ${field_product_type_offer_Trasnfer_SMP}    Partner Transfer Out
    Wait Until Element Contains       ${field_countdown_timer_offer_Trasnfer_SMP}     0
    Wait Until Element Contains       ${field_voucher_type_offer_Trasnfer_SMP}    4
    Wait Until Element Contains       ${field_vat_type_offer_Trasnfer_SMP}     Format 1
    Wait Until Element Contains       ${field_transfer_the1_rate_offer_Trasnfer_SMP}   4
    Wait Until Element Contains       ${field_description_th_offer_Trasnfer_SMP}  ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Trasnfer_SMP}    "TRANSFER OUT"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Trasnfer_SMP}   ESO
    sleep  3s


#Offer_AEM_30 Edit change start date and enddate of other offer and voucher type as privilege via AEM
Offer_AEM_30_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_privileget1x1.html
    sleep  1s

Offer_AEM_30_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_30_Step09 Edit Offer Information
    Clear Element Text Wait AEM          ${input_title_th_AEM}
    Input information AEM         ${input_title_th_AEM}     แก้ไข OTHERS_PRIVILEGE_1 Title TH
    sleep  1s
    Clear Element Text Wait AEM          ${input_title_en_AEM}
    Input information AEM         ${input_title_en_AEM}    Edit OTHERS_PRIVILEGE_1 Title EN
    sleep  1s
    Clear Element Text Wait AEM          ${input_short_th_AEM}
    Input information AEM         ${input_short_th_AEM}    แก้ไข OTHERS_PRIVILEGE_1 Short Description TH
    sleep  1s
    Clear Element Text Wait AEM          ${input_short_en_AEM}
    Input information AEM         ${input_short_en_AEM}    Edit OTHERS_PRIVILEGE_1 Short Description EN
    sleep  1s
    Click Element AEM          ${Offer_Fulfillment_AEM}
    sleep  3s
    Clear Element Text Wait AEM         ${Input_Issuance Period_Start Date_AEM}
    Input information AEM        ${Input_Issuance Period_Start Date_AEM}      01-01-2021 12:00
    sleep  1s
    Clear Element Text Wait AEM         ${Input_Issuance Period_End Date_AEM}
    Input information AEM        ${Input_Issuance Period_End Date_AEM}      31-01-2031 12:00
    sleep  1s
Offer_AEM_30_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_30_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  2s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  2s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  2s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_30_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_30.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_30_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Privilege_T1X_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Privilege_T1X_1
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      01/01/2021
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}        01/31/2031
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}       01/01/2021
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}        01/31/2031
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_partner_name_offer_Tier_Privilege_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_partner_code_offer_Tier_Privilege_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Tier_Privilege_SMP}          Yes
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Tier_Privilege_SMP}         Edit OTHERS_PRIVILEGE_1 Short Description EN
    Wait Until Element Contains       ${field_description_en_offer_Tier_Privilege_SMP}       ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_targetted_tier_offer_Tier_Privilege_SMP}     T1X
    Wait Until Element Contains       ${field_issue_channel_offer_Tier_Privilege_SMP}            6
    Wait Until Element Contains       ${field_tags_offer_Tier_Privilege_SMP}        Offer : Category / Home Electronics,Offer : Category / Restaurant & Cafe,Offer : Category / Personal Care,Offer : Category / Kids & Maternity Wear
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Tier_Privilege_SMP}        แก้ไข OTHERS_PRIVILEGE_1 Short Description TH
    Wait Until Element Contains       ${field_countdown_timer_offer_Tier_Privilege_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_Tier_Privilege_SMP}         3
    Wait Until Element Contains       ${field_category_offer_Tier_Privilege_SMP}                 "The 1 Exclusive"
    Wait Until Element Contains       ${field_description_th_offer_Tier_Privilege_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Tier_Privilege_SMP}           T1C TH



#Offer_AEM_31 Edit remove associated reward store of targeted offer and voucher type as reward via AEM

Offer_AEM_31_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_targeted1.html
    sleep  1s

Offer_AEM_31_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_31_Step09 Edit Offer Information
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Double Click Element AEM           ${btn_delete_2_Associated Reward Store_AEM}
    sleep  1s
Offer_AEM_31_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_31_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_31_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_31.PNG
    sleep  3s
Offer_AEM_31_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Targeted_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Targeted_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}    66
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    66
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         No
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Targeted_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            2
    Wait Until Element Contains       ${field_tags_offer_SMP}            Offer : Category / Restaurant & Cafe
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}         Targeted_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_category_offer_SMP}               "TARGETED_1"
    Wait Until Element Contains       ${field_description_th_offer_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s
    sleep  3s


#Offer_AEM_32 Edit change associated reward store of bulk T1X offer and voucher type as reward via AEM

Offer_AEM_32_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_bulkt1x1.html
    sleep  1s

Offer_AEM_32_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_32_Step09 Edit Offer Information
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Double Click Element AEM           ${btn_delete_1_Associated Reward Store_AEM}
    sleep  1s
    Input Associated Reward Store AEM      ${Input_Bulk_Reward Associated_AEM}      T1X-Grab
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    1s
Offer_AEM_32_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_32_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_32_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_32.PNG
    sleep  3s
Offer_AEM_32_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}        ${date_today}_Bulk_T1X_1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}      ${date_today}_Bulk_T1X_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}          Bulk_T1X_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_targetted_tier_offer_tier_SMP}     T1X
    Wait Until Element Contains       ${field_fast_category_offer_tier_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_tier_SMP}            3
    Wait Until Element Contains       ${field_tags_offer_tier_SMP}                   Offer : Category / Restaurant & Cafe,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_tier_SMP}         Bulk_T1X_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_tier_SMP}          Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_tier_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_tier_SMP}         2
    Wait Until Element Contains       ${field_category_offer_tier_SMP}               "T1X-Grab"
    Wait Until Element Contains       ${field_description_th_offer_tier_SMP}      ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_tier_SMP}            T1C TH
    sleep  3s




#Offer_AEM_33 Edit change POS Discount ID and change countdownvalue of public offer and voucher type as pre gen multiuse code via AEM

Offer_AEM_33_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_pregenmultiuse1true.html
    sleep  1s

Offer_AEM_33_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  5s

Offer_AEM_33_Step09 Edit Offer Information
    Click Element AEM          ${Offer_Fulfillment_AEM}
    sleep  3s
    Clear Element Text     ${input_CountdownValue_AEM}
    Input information AEM         ${input_CountdownValue_AEM}     10
    Select list AEM           ${select_Countdown Unit_AEM}
    Select list Wait AEM           ${selected_Countdown Unit_Secounds_AEM}
    sleep  3s
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Clear Element Text     ${Input_Total Available_AEM}
    Input information AEM          ${Input_Total Available_AEM}       2
    sleep  3s
    Clear Element Text     ${Input_POS Discount ID_AEM}
    Input information AEM         ${Input_POS Discount ID_AEM}         PGMULTI01EDIT
    sleep  3s
    Click Element AEM          ${Siebel_Configuration_AEM}
    sleep    1s
    Input information AEM         ${Input_Partner Point Charging_offer_AEM}   Book to Stationery
    sleep    1s
    Press Keys    None    ARROW_DOWN
    sleep    1s
    Press Keys    None    RETURN
    sleep    3s
Offer_AEM_33_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_33_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_33_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_33.PNG
    sleep  3s
Offer_AEM_33_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Pregen_MultiUse_1_True
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Pregen_MultiUse_1_True
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    PGMULTI01EDIT
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     50
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}   50
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}      Pregen_MultiUse_1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_Pregen_SMP}            Offer : Category / Class & Workshop
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}         Pregen_MultiUse_1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}         Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         10
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        9
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_Pregen_SMP}             "All Rewards","Play & Learn"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}           B2S
    sleep  3s




#Offer_AEM_34 Edit remove Reward_child1_1 of of reward group 1 via AEM

Offer_AEM_34_Step07 Click Create > Click Page
    Go To          https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_rewardgroup1.html
    sleep  3s

Offer_AEM_34_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s

Offer_AEM_34_Step09 Edit Offer Information
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Double Click Element AEM         ${btn_delete_2_Child Reward Associated_AEM}
    sleep  3s
    Click Element AEM          ${Siebel_Configuration_AEM}
    sleep  3s
    Clear Element Text     ${input_Siebel_Points_AEM}
    Input information AEM         ${input_Siebel_Points_AEM}         2
    sleep  3s
Offer_AEM_34_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_34_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_34_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_34.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_34_Step13 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Reward_Group1
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Reward_Group1
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     2
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    2
    Wait Until Element Contains        ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Reward_Group1 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                Offer : Category / Class & Workshop,Offer : Category / Book & Stationery,Offer : Category / Toys
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Reward_Group1 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         6
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}             "All Rewards","Play & Learn"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Textfield Value Should Be        ${field_Number of Selections_Group_SMP}      1
    Wait Until Element Contains       ${field_child1_2_offer_Group_SMP}                 ${date_today}_Reward_child1_1
    sleep  3s






#Offer_AEM_35 Edit PreGenMultiUse_child2_2 child of reward group with restrictions 2 via AEM
Offer_AEM_35_Step06 Click Pic
    Go To          https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_package3.html
    sleep  3s
Offer_AEM_35_Step07 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_35_Step08 Edit Offer Information
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Double Click Element AEM         ${btn_delete_2_Child Reward Associated_AEM}
    sleep  3s
Offer_AEM_35_Step09 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_35_Step10 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_35_Step11 Click Pic
    Go To          https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_pregenchild32.html
    sleep  3s
Offer_AEM_35_Step12 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  3s
Offer_AEM_35_Step13 Edit Offer Information
    sleep  1s
    Click Element Wait AEM           ${btn_delete_Mobile_Images_TH_AEM}
    sleep  2s
    Click Element AEM     ${btn_add_Mobile_Images_TH_AEM}
    Input information AEM          ${Input_Mobile_Images_TH_AEM}      /content/dam/the1/offers/ROBOT_TEST_IMG_TH.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File_ROBOT_TEST_IMG_TH_AEM}
    sleep    1s
    Click Element Wait AEM           ${btn_delete_Mobile_Images_EN_AEM}
    sleep  2s
    Click Element AEM     ${btn_add_Mobile_Images_EN_AEM}
    Input information AEM          ${Input_Mobile_Images_EN_AEM}      /content/dam/the1/offers/ROBOT_TEST_IMG_EN.jpg
    sleep    1s
    Click Element Wait AEM        ${Click_File_ROBOT_TEST_IMG_EN_AEM}
    sleep    1s
    Click Element AEM          ${Offer_Fulfillment_AEM}
    sleep  3s
    Clear Element Text            ${input_Offer Weight_AEM}
    Input information AEM         ${input_Offer Weight_AEM}     1
    sleep  3s
Offer_AEM_35_Step14 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_35_Step15 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_35_Step15 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_Child_AEM_36.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_35_Step15 Verify Offer Management and Verify Reward Store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_PreGen_child3_2
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_PreGen_child3_2
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    aed70378-d861-11ea-85e3-fb74bfe96e5b
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      1
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_Pregen_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_Pregen_SMP}           Book to Stationery (B2S)
    Wait Until Element Contains       ${field_minimize_offer_offer_Pregen_SMP}         1
    Wait Until Element Contains       ${field_product_sub_type_offer_Pregen_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_Pregen_SMP}             B2S
    Wait Until Element Contains       ${field_guest_mode_offer_Pregen_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_Pregen_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_Pregen_SMP}       PreGen_child3_2 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_Pregen_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_Pregen_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_Pregen_SMP}         E_Discount Coupon
    Wait Until Element Contains       ${field_fast_category_offer_Pregen_SMP}          Discount Coupon
    Wait Until Element Contains       ${field_issue_channel_offer_Pregen_SMP}            1
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_Pregen_SMP}        PreGen_child3_2 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_Pregen_SMP}          Percent Discount
    Wait Until Element Contains       ${field_countdown_timer_offer_Pregen_SMP}         10
    Wait Until Element Contains       ${field_voucher_type_offer_Pregen_SMP}        8
    Wait Until Element Contains       ${field_description_th_offer_Pregen_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_tag_offer_Pregen_SMP}             Brand
    Wait Until Element Contains       ${field_partner_point_chargel_offer_Pregen_SMP}            B2S
    sleep  3s
Offer_AEM_35_Step16 Click Pic offer
    Go To          https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/regression_bot/${date_today}_package3.html
    sleep  3s
Offer_AEM_35_Step17 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  5s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  5s
Offer_AEM_35_Step18 Edit Offer Mechanics
    Click Element AEM          ${Offer_Mechanics_AEM}
    sleep  3s
    Input information AEM         ${Input_Child Reward Associated_AEM}     ${date_today}_PREGEN_CHILD3_2
    sleep  1s
    Press Keys    None    ARROW_DOWN
    sleep  1s
    Press Keys    None    RETURN
    sleep  3s
Offer_AEM_35_Step19 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_35_Step20 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  5s
Offer_AEM_35_Step21 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_35.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
Offer_AEM_35_Step22 Verify Offer management and Reward store on SMP
    Go To           ${url_SMP}
    sleep  2s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       ${date_today}_Package3
    sleep  3s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  3s
    Wait Until Element Contains       ${field_Offer_Type_SMP}           Package
    sleep  3s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Textfield Value Should Be       ${field_Title_offer_SMP}    ${date_today}_Package3
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     ${date of Issuance Period_End Date_offer_SMP}
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     ${date of Issuance Period_Start Date_offer_SMP}
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}      ${date of Issuance Period_End Date_offer_SMP}
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     1
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    0
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       Package3 Short Description EN
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_fast_category_offer_SMP}          T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}             Offer : Category / Home Electronics,Offer : Category / Restaurant & Cafe,Offer : Category / Personal Care,Offer : Category / Kids & Maternity Wear,Offer : Category / Fashion,Offer : Issuing Bank of credit card / CENTRAL,Offer : Province / Central,Offer : Available Channel / POS
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          Package3 Short Description TH
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         5
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
Offer_AEM_35_Step23 Verify Configure Package Offers for Selection
    Click Element Wait SMP            ${btn_Grouped Offers_offer_Trasnfer_SMP}
    sleep  3s
    Wait Until Element Contains        ${Configure Package_Group_SMP}        Configure Package Offers for Selection
    Wait Until Element Contains        ${Award On Issuance_Package_Group_SMP}        Award On Issuance
    Wait Until Element Contains        ${The package is issued_Group_SMP}            This means the customer is awarded the grouped offers at the time the package is issued.
    sleep  3s
    Wait Until Element Contains       ${field_child1_2_offer_Group_SMP}                  ${date_today}_PreGen_child3_2
    Wait Until Element Contains       ${field_child1_1_offer_Group_SMP}                  ${date_today}_Reward_child3_1
    sleep  3s




#Offer_AEM_36 Download old offer via AEM to excel file for update offer in siebel
Offer_AEM_36_Step04 Click Folder Offer under the 1 Central and Offer_AEM_18_Step05 Select offer pic all voucher Type
    sleep  1s
    Go To           https://uatcreator.the1.co.th/sites.html/content/the1/offers
    sleep  1s
    Click Element Wait AEM       ${folder_Pic_Regression AEM Offer_AEM}
    sleep  5s
    ${present}=    Run Keyword And Return Status      Click Element Wait AEM      ${btn ... Download Offers AEM Offer_AEM}
    Run Keyword if     '${present}'=='True'     btn Download Offers
    sleep  3s
    Click Element Wait AEM       ${btn Download Offers AEM Offer_AEM}
    sleep  10s
    Capture Page Screenshot          ${date_today}_Offer_AEM_36.PNG



#Offer_AEM_37 Edit add offer category and change siebel points of public offer and voucher type as reward via AEM
Offer_AEM_37_Step07 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/offers/uat_e2e_20200608/edit_regression_publishreward1.html
    sleep  1s
Offer_AEM_37_Step08 Click Edit Offer > Click Configure
    ${Edit_Page}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${btn_Edit_Page_Offer_AEM}
    Run Keyword if     '${Edit_Page}'=='True'     Click offer Edit page AEM
    sleep  3s
    Double Click Element AEM         ${btn_edit_offer_AEM}
    sleep  1s
Offer_AEM_37_Step09 Edit Offer Information
    sleep  1s
    Clear Element Text Wait AEM          ${input_title_th_AEM}
    Input information AEM         ${input_title_th_AEM}     แก้ไข_REGRESSION_PUBLISH_REWARD_1_${date_today}
    sleep  1s
    Clear Element Text Wait AEM          ${input_title_en_AEM}
    Input information AEM         ${input_title_en_AEM}    EEDIT_REGRESSION_PUBLISH_REWARD_1_${date_today}
    sleep  1s
    Clear Element Text Wait AEM          ${input_short_th_AEM}
    Input information AEM         ${input_short_th_AEM}    แก้ไข_PUBLISH_REWARD_1 Tag Restaurant-&-Cafe_${date_today}
    sleep  1s
    Clear Element Text Wait AEM          ${input_short_en_AEM}
    Input information AEM         ${input_short_en_AEM}    EDIT_PUBLISH_REWARD_1 Tag Restaurant-&-Cafe_${date_today}
    sleep  1s
Offer_AEM_37_Step10 Verify Offer Information
    Click Element Wait AEM           ${btn_done_create_offer_AEM}
    sleep  5s
    Double Click Element AEM           ${btn_Preview_Page_Offer_AEM}
    Select Frame    xpath=//*[@id="ContentFrame"]
    Click Element AEM     ${btn_Submit_Preview_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  5s
Offer_AEM_37_Step11 Click Preview > Click Submit
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM     ${btn_complete_Approve flow_Offer_AEM}
    sleep  5s
    Click Element Wait AEM      ${btn_complete_ok_Approve flow_Offer_AEM}
    sleep  10s
    Reload Page
    sleep  3s
Offer_AEM_37_Step12 Verify Offer page
    sleep  5s
    Capture Page Screenshot          ${date_today}_Offer_AEM_37.PNG
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
Offer_AEM_37_Step13 Verify Offer management and Reward store on SMP
    Go To           ${url_SMP}
    sleep  3s
    Click Element Wait SMP        ${module_Offers_SMP}
    sleep  2s
    Wait Until Page Contains Element     ${input_search_offer_SMP}
    Input information SMP       ${input_search_offer_SMP}       EDIT_REGRESSION_PUBLISH_REWARD_1
    sleep  2s
    Click Element Wait SMP        ${btn_search_offer_SMP}
    sleep  2s
    Click Element Wait SMP        ${btn_edit_offer_SMP}
    sleep  5s
    Wait Until Page Contains Element        ${field_Title_offer_SMP}
    Textfield Value Should Be       ${field_Title_offer_SMP}    EDIT_REGRESSION_PUBLISH_REWARD_1
    Textfield Value Should Be       ${field_POS Discount ID_offer_SMP}    100
    Textfield Value Should Be       ${field_Issuance Period_Start Date_offer_SMP}      01/01/2021
    Textfield Value Should Be       ${field_Issuance Period_End Date_offer_SMP}     12/31/2031
#Same as issuance period
    Textfield Value Should Be       ${field_Redemption_Start Date_offer_SMP}     01/01/2021
    Textfield Value Should Be       ${field_Redemption_End Date_offer_SMP}       12/31/2031
    Textfield Value Should Be       ${field_Offer Weight_offer_SMP}      0
    Textfield Value Should Be       ${field_Point_offer_SMP}     11
#Custom Data
    Wait Until Element Contains       ${field_siebel_points_offer_SMP}    11
    Wait Until Element Contains       ${field_partner_name_offer_SMP}         THE 1 CENTRAL Thailand
    Wait Until Element Contains       ${field_product_sub_type_offer_SMP}         Product
    Wait Until Element Contains       ${field_point_value_offer_SMP}         0.125
    Wait Until Element Contains       ${field_partner_code_offer_SMP}             T1C TH
    Wait Until Element Contains       ${field_guest_mode_offer_SMP}         Yes
    Wait Until Element Contains       ${field_item_cost_offer_SMP}         0.125
    Wait Until Element Contains       ${field_offer_shortdescription_en_offer_SMP}       EDIT_PUBLISH_REWARD_1 Tag Restaurant-&-Cafe_${date_today}
    Wait Until Element Contains       ${field_item_price_offer_SMP}          0.125
    Wait Until Element Contains       ${field_description_en_offer_SMP}        ${Text_Description English_Offer_AEM}
    Wait Until Element Contains       ${field_pos_voucher_type_offer_SMP}         E_Cash Coupon
    Wait Until Element Contains       ${field_fast_category_offer_SMP}              T1CT
    Wait Until Element Contains       ${field_issue_channel_offer_SMP}            1
    Wait Until Element Contains       ${field_tags_offer_SMP}                  Offer : Category / Restaurant & Cafe
    Wait Until Element Contains       ${field_offer_shortdescription_th_offer_SMP}          แก้ไข_PUBLISH_REWARD_1 Tag Restaurant-&-Cafe_${date_today}
    Wait Until Element Contains       ${field_product_type_offer_SMP}           Cash Coupon
    Wait Until Element Contains       ${field_countdown_timer_offer_SMP}         0
    Wait Until Element Contains       ${field_voucher_type_offer_SMP}         2
    Wait Until Element Contains       ${field_description_th_offer_SMP}    ${Text_Description Thai_Offer_AEM}
    Wait Until Element Contains       ${field_category_offer_SMP}               "All Rewards","Eat Around","Grocery"
    Wait Until Element Contains       ${field_partner_point_chargel_offer_SMP}            T1C TH
    sleep  3s










































































































































































































































































































































































































