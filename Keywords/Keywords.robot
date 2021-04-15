*** Settings ***
Library    SeleniumLibrary




*** Keywords ***

Get Date and DateTime
    ${date_today}    Get Current Date
    ${date_today}   Convert Date       ${date_today}       result_format=%Y%m%d%H%M
    Set Global Variable    ${date_today}
Get Date of AEM
#date of Issuance Period_Start Date_AEM}
    ${date of Issuance Period_Start Date_AEM}         Get Current Date
    ${date of Issuance Period_Start Date_AEM}       Convert Date    ${date of Issuance Period_Start Date_AEM}    result_format=%d-%m-%Y %H:%M
    Set Global Variable     ${date of Issuance Period_Start Date_AEM}
#date of Issuance Period_End Date_AEM
    ${date of Issuance Period_End Date_AEM}    DateTime.Add Time To Date    ${date of Issuance Period_Start Date_AEM}    6 hours     date_format=%d-%m-%Y %H:%M    result_format=%d-%m-%Y %H:%M
    Set Global Variable    ${date of Issuance Period_End Date_AEM}
#date of Issuance Period+30_End Date_AEM
   ${date of Issuance Period+3hr_End Date_AEM}     DateTime.Add Time To Date      ${date of Issuance Period_Start Date_AEM}   3 hour    date_format=%d-%m-%Y %H:%M   result_format=%d-%m-%Y %H:%M
    Set Global Variable     ${date of Issuance Period+3hr_End Date_AEM}


#date of Issuance Period+20_End Date_AEM
    ${date of Issuance Period+20hr_End Date_AEM}     DateTime.Add Time To Date      ${date of Issuance Period_Start Date_AEM}   20 hour    date_format=%d-%m-%Y %H:%M   result_format=%d-%m-%Y %H:%M
    Set Global Variable     ${date of Issuance Period+20hr_End Date_AEM}


Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}



Get Date of SMP
#date of Issuance Period_Start Date_offer_SMP
    ${date of Issuance Period_Start Date_offer_SMP}    Get Current Date  UTC
    ${date of Issuance Period_Start Date_offer_SMP}    Convert Date     ${date of Issuance Period_Start Date_offer_SMP}      result_format=%m/%d/%Y
    Set Global Variable    ${date of Issuance Period_Start Date_offer_SMP}
#date of Issuance Period_End Date_offer_SMP
    ${date of Issuance Period_End Date_offer_SMP}   DateTime.Add Time To Date     ${date of Issuance Period_Start Date_offer_SMP}      6 hours    date_format=%m/%d/%Y       result_format=%m/%d/%Y
    Set Global Variable    ${date of Issuance Period_End Date_offer_SMP}
#date of Issuance Period+1hr_End Date_offer_SMP
   ${date of Issuance Period+3hr_End Date_offer_SMP}     DateTime.Add Time To Date      ${date of Issuance Period_Start Date_offer_SMP}   3 hour    date_format=%m/%d/%Y   result_format=%m/%d/%Y
    Set Global Variable      ${date of Issuance Period+3hr_End Date_offer_SMP}

Get Date and Time Today of SMP
    ${date_todaystart}    Get Current Date  UTC
    ${date_todaystart}   Convert Date       ${date_todaystart}       result_format=%m/%d/%Y 9:00am
    Set Global Variable    ${date_todaystart}
    ${date_todayEnd}    Get Current Date  UTC
    ${date_todayEnd}   Convert Date       ${date_todayEnd}       result_format=%m/%d/%Y 11:59pm
    Set Global Variable    ${date_todayEnd}



Login AEM with test-approver account
    Maximize Browser Window
    Go To           ${url_AEM}
    Click Element AEM          ${btn_sign_in_locally_AEM}
    Input Username and Password      ${input_user_AEM}      ${input_pass_AEM}      ${username_AEM}      ${password_AEM}
    Click Element AEM          ${btn_sign_in_AEM}
    sleep  5s


Login SMP with auttapol.w@vasup.co.th account
    sleep  3s
    Input Email and Password SMP     ${input_email_SMP}     ${input_password_SMP}     ${email_SMP}     ${password_SMP}
    Click Element SMP         ${btn_login_SMP}
    sleep  3s


Login SMP
    sleep  5s
    Go To           ${url_SMP}
    sleep  1s
    ${Login_SMP}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${input_email_SMP}
    Run Keyword if     '${Login_SMP}'=='True'     Login SMP with auttapol.w@vasup.co.th account
    sleep  3s



GetCurTimestamp
    ${tmpcurrDateEpoch} =    Get Current Date    result_format=epoch    exclude_millis=True
    ${Data} =    Convert To Integer    ${tmpcurrDateEpoch}
    [Return]    ${Data}

Input Username and Password
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Wait Until Element is visible   ${xpath_user}
     Wait Until Element is visible   ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}

Click Button Wait AEM
     [Arguments]       ${btn}
     Wait Until Page Contains Element   ${btn}
     Click Button   ${btn}

Click Element AEM
     [Arguments]       ${btn}
     Element Should Be Visible    ${btn}
     Click Element        ${btn}

Click Element Wait AEM
     [Arguments]   ${btn}
     Wait Until Page Contains Element   ${btn}
     Click element   ${btn}

Double Click Element AEM
   [Arguments]   ${btn}
   Wait Until Page Contains Element   ${btn}
   Double Click element   ${btn}

Click Button AEM
   [Arguments]   ${btn}
   Element Should Not Be Visible   ${btn}
   Click Button   ${btn}

Select list AEM
   [Arguments]   ${btn}
   Wait until element is visible   ${btn}
   Click element   ${btn}

Select list Wait AEM
   [Arguments]   ${btn}
   Wait Until Page Contains Element  ${btn}
   Click element   ${btn}

Input information AEM
     [Arguments]      ${xpath_text}        ${textname}
     Wait Until Page Contains Element   ${xpath_text}
     Input Text       ${xpath_text}       ${textname}

Input Associated Reward Store AEM
    [Arguments]      ${xpath_text}        ${textname}
    Wait until element is visible   ${xpath_text}
    Input Text       ${xpath_text}       ${textname}


Input Email and Password SMP
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Wait Until Page Contains Element   ${xpath_user}
     Wait Until Page Contains Element   ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}

Click Element SMP
     [Arguments]       ${btn}
     Element Should Be Visible    ${btn}
     Click Element        ${btn}

Click Element Wait SMP
     [Arguments]   ${btn}
     sleep  1s
     Wait Until Page Contains Element   ${btn}
     Click element   ${btn}

Double Click Element SMP
   [Arguments]   ${btn}
   Wait Until Page Contains Element   ${btn}
   Double Click element   ${btn}

Click Button SMP
   [Arguments]   ${btn}
   Element Should Not Be Visible   ${btn}
   Click Button   ${btn}

Select list SMP
   [Arguments]   ${btn}
   Wait until element is visible   ${btn}
   Click element   ${btn}

Select list Wait SMP
   [Arguments]   ${btn}
   Wait Until Page Contains Element  ${btn}
   Click element   ${btn}


Input information SMP
     [Arguments]      ${xpath_text}        ${textname}
     Wait Until Page Contains Element   ${xpath_text}
     Input Text       ${xpath_text}       ${textname}

Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})



Questionnaire
     sleep  3s
     Wait Until Page Contains Element   ${Popup_iframe_Adobe}
     Select Frame  ${Popup_iframe_Adobe}
     sleep  1s
     Wait Until Page Contains Element     xpath=/html[1]/body[1]/form[1]/div[1]/div[2]/fieldset[1]/div[3]/div[3]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[21]/div[1]/ins[1]
     sleep  1s
     Click element     xpath=/html[1]/body[1]/form[1]/div[1]/div[2]/fieldset[1]/div[3]/div[3]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[21]/div[1]/ins[1]
     sleep  1s
     Wait Until Page Contains Element    xpath=/html[1]/body[1]/form[1]/div[1]/div[2]/fieldset[1]/div[4]/table[1]/tbody[1]/tr[1]/td[1]/button[2]
     sleep  1s
     Click element     xpath=/html[1]/body[1]/form[1]/div[1]/div[2]/fieldset[1]/div[4]/table[1]/tbody[1]/tr[1]/td[1]/button[2]
     sleep  1s
     Unselect Frame
     sleep  1s
     Wait Until Page Contains Element    xpath=//*[@id="omg_close"]
     sleep  1s
     Click element     xpath=//*[@id="omg_close"]
     sleep  3s



btn Download Offers
    # Click Element Wait AEM       ${btn ... Download Offers AEM Offer_AEM}
    sleep  3s

Publish button AEM
    Click Element Wait AEM           ${Btn_Publish_Campaign_AEM}
    sleep  3s

Publish Article AEM
    Click Element Wait AEM           ${Click_Publish_Article}
    sleep  3s

Publish Link Banner AEM
    Click Element Wait AEM           ${Click_Publish_Link_Banner_AEM}
    sleep  3s

Publish Offer Banner AEM
    Click Element Wait AEM           ${Click_Publish_Offer_Banner_AEM}
    sleep  3s

Publish2 button AEM
    Click Element Wait AEM           ${Btn_Publish_Campaign_AEM}
    sleep  3s

Publish Button AEM Location
    Click Element Wait AEM           ${btn_Publish_Locations_AEM}
    sleep  3s

Publish Button AEM Branch
    Click Element Wait AEM           ${btn_Confirm_Publish_Branch_AEM}
    sleep  3s

Publish Button AEM Partner
    Click Element Wait AEM           ${btn_Confirm_Publish_Partner_AEM}
    sleep  3s

Clear Element Text Wait AEM
     [Arguments]   ${text}
     Wait Until Page Contains Element   ${text}
     Clear Element Text   ${text}

Click offer Edit page AEM
    Click Element AEM          ${btn_Edit_Page_Offer_AEM}
    sleep  1s
    Reload Page
    sleep  3s

Click_Fashion category_tag
    sleep  1s
    Click Element Wait AEM          ${Click_Fashion category_tag__AEM}
    sleep  1s

btn_close
    Click Element Wait AEM          ${btn_close_category_tag_AEM}
    sleep  1s


#Excel
Pseudo Nested Loop
    [Arguments]    ${_i}
    ${_ylist}    Create List
    FOR    ${_y}    IN RANGE    1    ${maxColumn}
        ${_val}   Read Excel Cell    row_num=${_i}    col_num=${_y}
        Append To List    ${_ylist}    ${_val}
    END
    [Return]    ${_ylist}


