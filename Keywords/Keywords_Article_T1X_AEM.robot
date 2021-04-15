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
Resource    ../Variable/Variable_Article_AEM.robot
Resource    ../Keywords/Keywords.robot
#Suite Teardown     Close Browse


*** Keywords ***
Check if Questionnaire Article The1Exclusive AEM
# Check if Questionnaire1
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
# Offer_AEM_01_Step02 Click The1 Central
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  1s
# Check if Questionnaire2
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
# Offer_AEM_01_Step03 and Offer_AEM_01_Step04 Click Folder Offer under the 1 Central
    Click Element Wait AEM         ${icon_Offer_AEM}
    sleep  1s
# Check if Questionnaire3
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire


#EN Article

Article_The1Exclusive_AEM_01 Step05 Click English Create
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en
    sleep  3s
Article_The1Exclusive_AEM_01 Step07 Select Category Listing Page
    Click Element AEM                   ${Card Category Listing Page}
    Click Element AEM                   ${btn Next}
    sleep  2s
Article_The1Exclusive_AEM_01 Step08 Input value in Category Listing
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT1_T1X_Privileges
    Input information AEM              ${input Category Listing Name}                    ${date_today}_${Category Listing Name}
    Input information AEM              ${input Category Listing Description}             Privileges for T1X
    Click Element AEM                  ${btn Category Details}
    sleep  2s
    Input information AEM              ${input header title}             T1X Privileges
    Input information AEM              ${input Short Description}        Privileges
    Input information AEM              ${input Description}              Privileges for T1X
    Input information AEM              ${input Header List Text}         Privileges
    Input information AEM              ${input order Category Listing}   1
    Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                  ${btn add benner}
    sleep  1s
    Input information AEM              ${input benner Image}             /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                  ${btn create}
    sleep  3s
Article_The1Exclusive_AEM_01 Step11 Click Open and verify Category listing
    Click Element                      ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  3s
    Click Element AEM                 ${btn Publish Page}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_01 Step12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_01.PNG
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_01_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s





Article_The1Exclusive_AEM_02 Step05 Click English Create
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}

    sleep  3s
Article_The1Exclusive_AEM_02 Step07 Select Category API Page
    Click Element          ${Card Category Page}
    Click Element AEM      ${btn Next}
    sleep  2s
Article_The1Exclusive_AEM_02 Step08 Input value in Category Listing
    Input information AEM              ${input Category Listing title}                   ${Category title}
    Click Element AEM                  ${btn Category Details}
    sleep  1s
    Input information AEM              ${input header title}            T1X Shopping
    Input information AEM              ${input Short Description}       Shopping Privileges
    Input information AEM              ${input Description}             Privileges for T1X
    Input information AEM              ${input Header List Text}         Valid 1 July - 31 Dec 2021
    Input information AEM              ${input order Category Listing}   1
    Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element                      ${Check box Paginate}
    Click Element AEM                  ${btn create}
    sleep  2s
    Click Element                      ${btn open Success}
Article_The1Exclusive_AEM_02 Step11 Click Open and verify Category listing
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_02 Step 12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_02.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_02_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s


Article_The1Exclusive_AEM_03 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_03 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_03 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT Central Department Store
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_03 Step11 Select tab Articles and input value

    Click Element AEM                  ${Check box Display on Highlight}
    Input information AEM              ${input Publish Date}                             June 23, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/1.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            1
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element                      ${input File Attachment}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/1.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                 ${Check box Article Campaign}
    sleep    1s
    Click Element AEM                 ${Check btn Reward Store}
    sleep  1s
    Click Element                     ${Select All Reward Store}
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Click Action Show Membership Card}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Show My Membership Card

Article_The1Exclusive_AEM_03 Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_03 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_03.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_03_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s


Article_The1Exclusive_AEM_04 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_04 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_04 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT SIWILAI Online Store
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_04 Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box T1X Article}
    # Click Element AEM                 ${Check box Display on Highlight}
    Input information AEM              ${input Publish Date}                             June 22, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/2.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            2
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/2.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Select Click Action Code}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Show discount code
    Input information AEM             ${input Contact Text}                                Show discount code

Article_The1Exclusive_AEM_04 Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_04 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_04.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_04_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s


Article_The1Exclusive_AEM_05 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_05 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_05 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT Central Restaurant Group
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_05 Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box T1X Article}
    Input information AEM              ${input Publish Date}                             June 21, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/3.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            3
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/3.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Select Click Action Redirect URL}
    Input information AEM             ${input Button Text}                                 Go to My Reward
    Input information AEM             ${input Contact Text}                                https://uat.the1.co.th/my-rewards

Article_The1Exclusive_AEM_05 Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_05 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_05.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_05_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_06 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_06 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_06 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT Personal Assistant
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_06 Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box T1X Article}
    Input information AEM              ${input Publish Date}                             June 20, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/4.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            4
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/4.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Select Click Action Call}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Call My Personal Assistant
    Input information AEM             ${input Contact Text}                                026601011

Article_The1Exclusive_AEM_06 Step12 Click Create

    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_06 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_06_API.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_06_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_07 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_07 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_07 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT Centara Hotels & Resorts
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_07 Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box T1X Article}
    Input information AEM              ${input Publish Date}                             June 20, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/5.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            5
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/5.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Select Click Action Redirect URL}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Book Now at Centara
    Input information AEM             ${input Contact Text}                                https://www.centarahotelsresorts.com/partner/the1exclusive

Article_The1Exclusive_AEM_07 Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_07 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_07.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_07_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_08 Step05 Click English
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_08 Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_08 Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles2}_SIT Agoda
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_08 Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box T1X Article}
    Input information AEM              ${input Publish Date}                             June 20, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/6.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            6
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/6.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Select Click Action Email}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Go to send Email
    Input information AEM             ${input Contact Text}                                the1_Exclusive@central.co.th

Article_The1Exclusive_AEM_08 Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_08 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_08.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_08_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_09 Step08 Edit value in Category Listing
    Go to               https://uatcreator.the1.co.th/editor.html/content/the1/api/th/en/${date_today}_${Category Listing Name}.html
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    sleep  2s
    Input information AEM              ${Edit title}                          ${date_today}_${Category Listing Name} Edit

Article_The1Exclusive_AEM_09 Step09 Edit value in Category Details
    Click Element AEM                  ${Category Details_edit}
    sleep  2s
    Input information AEM              ${Edit Header Title}                   T1X_Privileges Edit
    sleep  2s
    Input information AEM              ${Edit order category}                           2
    sleep  1s
    Click Element AEM                  ${Edit Feature Image Category}
    sleep    1s
    Press Keys                         ${Edit Feature Image Category}         CTRL+a+BACKSPACE
    Press Keys                         ${Edit Feature Image Category}         DELETE
    sleep    1s
    Input information AEM              ${Edit Feature Image Category}         /content/dam/article-t1x/Baan & Beyond.jpg
    sleep    1s
    Click Element AEM                  ${Edit Add banner}
    sleep  1s
    Click Element AEM                  ${Edit banner Image}
    sleep  1s
    Input information AEM              ${Edit banner Image}                   /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Click Element AEM                  ${Edit Add banner}
    sleep  1s
    Click Element AEM                  ${Edit banner Image2}
    sleep  1s
    Input information AEM              ${Edit banner Image2}                  /content/dam/article-t1x/ABC Cooking School.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Click Element AEM                  ${Edit Check box Paginate}
    sleep  1s
    Click Element AEM                  ${Edit Save&Close}
    sleep    1s
Article_The1Exclusive_AEM_09 Step11 Click Open and verify Category listing
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  3s
    Click Element AEM                 ${btn Publish Page}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_09 Step12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_09.PNG
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_09_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s




Article_The1Exclusive_AEM_10 Step08 Edit value in Category Listing
    Go to              https://uatcreator.the1.co.th/editor.html/content/the1/api/th/en/${date_today}_${Category Listing Name}/${Category title}.html
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    sleep  4s
    Input information AEM               ${Edit title}                          ${Category title} Edit
Article_The1Exclusive_AEM_10 Step09 Edit value in Category Details
    Click Element AEM                  ${Category Details_edit}
    sleep  1s
    Input information AEM              ${Edit header title}                    T1X Shopping Edit
    sleep  3s
    Click Element AEM                  ${Edit Add banner}
    sleep  1s
    Click Element AEM                  ${Edit banner Image}
    sleep  1s
    Input information AEM              ${Edit banner Image}                 /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Click Element AEM                  ${Edit Add banner}
    sleep  1s
    Click Element AEM                  ${Edit banner Image2}
    sleep  1s
    Input information AEM              ${Edit banner Image2}                /content/dam/article-t1x/ABC Cooking School.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Click Element AEM                  ${Edit Save&Close}
    sleep    1s
Article_The1Exclusive_AEM_10 Step11 Click Open and verify Category listing
    sleep    1s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_10 Step12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_10.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_10_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s








Article_The1Exclusive_AEM_11 Step10 Edit value in Basic tab
    Go to               https://uatcreator.the1.co.th/editor.html/content/the1/api/th/en/20210331_T1X_Privileges/sit_t1x_shopping/20210331_sit-central-department-store.html
    sleep  1s
    Click Element AEM                   ${btn Preview}
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    Input information AEM               ${Edit title}                              ${date_today}_SIT Central Department Store Edit
    sleep  2s
    Click Element AEM                   ${Category Details_edit}
Article_The1Exclusive_AEM_11 Step11 Edit tab Articles details and input value
    Click Element AEM                  ${Edit check box T1X Article}
    sleep  2s
    Input information AEM              ${Edit Header Title}                             SIT Central Department Store Edit
    # Click Element AEM                  ${Check box Display on Highlight}
    Input information AEM              ${Edit Publish Date}                             June 22, 2021
    sleep  2s
    Input information AEM              ${Edit File Attachment}                          /content/dam/aem-images/test/en/2.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    # Click Element AEM                 ${Check box Article Campaign}
    Click Element AEM                   ${Edit Select Reward Store}
    sleep    1s
    Press Keys                     ${Edit Select Reward Store}    CTRL+a+BACKSPACE
    Press Keys                     ${Edit Select Reward Store}    DELETE
    sleep    1s
    Click Element AEM                 ${Click Action Edit}
    Click Element AEM                 ${Select Click Action Call}
    Input information AEM             ${input Button Text Edit}                                 Call My Personal Assistant
    Input information AEM             ${Edit Contact Text}                                      026601011
    Click Element AEM                  ${Edit Save&Close}
    sleep    1s
Article_The1Exclusive_AEM_11 Step12 Click Create
    sleep    2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_11 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_11.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_11_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s


Article_The1Exclusive_AEM_12 Step10 Edit value in Basic tab
    Go to               https://uatcreator.the1.co.th/editor.html/content/the1/api/th/en/20210331_T1X_Privileges/sit_t1x_shopping/20210331_sit-central-department-store.html
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    Input information AEM               ${Edit title}                              SIT Central Department Store

Article_The1Exclusive_AEM_12 Step11 Edit tab Articles details and input value
    Click Element AEM                  ${Edit Article Details2}
    sleep  2s
    # Click Element AEM                  ${Edit check box T1X Article}
    # sleep  2s
    Input information AEM              ${Edit Header Title}                         SIT Central Department Store
    sleep  2s
    Click Element AEM                  ${Edit Add benner Articles}
    sleep  1s
    Click Element AEM                  ${Edit benner Image Article}
    sleep  1s
    Input information AEM              ${Edit benner Image Article}                 /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  2s
    Input information AEM             ${input Terms & Condition}                               Terms & Condition EN
    sleep  2s
    Input information AEM             ${input Additional Section Header}                         Header Edit
    sleep  2s
    Input information AEM             ${input Additional Section Free Text}                      Free Text
    sleep  2s
    Input information AEM              ${Edit URL}                                                www.google.com
    sleep  2s
    Click Element AEM                 ${Edit Check btn Reward Store}
    sleep  1s
    Click Element                     ${Edit All Reward}
    sleep  1s
    Click Element AEM                 ${Click Action Edit}
    sleep  2s
    Click Element AEM                 ${Click Action Show Membership Card Edit}
    sleep  2s
    Input information AEM             ${input Button Text Edit}                                 Show My Membership Card
    sleep    1s
    Press Keys                        ${Edit Contact Text}    CTRL+a+BACKSPACE
    Press Keys                        ${Edit Contact Text}    DELETE
    sleep    1s
    Click Element AEM                  ${Edit Save&Close}
    sleep    1s
Article_The1Exclusive_AEM_12 Step12 Click Create
    sleep    2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_12 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_12.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_12_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s

















#TH Article

Article_The1Exclusive_AEM_01 TH Step05 Click Thai Create
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th
    sleep  3s
Article_The1Exclusive_AEM_01 TH Step07 Select Category Listing Page
    Click Element AEM                   ${Card Category Listing Page}
    Click Element AEM                   ${btn Next}
    sleep  2s
Article_The1Exclusive_AEM_01 TH Step08 Input value in Category Listing
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Category Listing Name}
    Input information AEM              ${input Category Listing Name}                    ${date_today}_${Category Listing Name}
    Input information AEM              ${input Category Listing Description}             Privileges for T1X
    Click Element AEM                  ${btn Category Details}
    sleep  2s
    Input information AEM              ${input header title}             T1X Privileges
    Input information AEM              ${input Short Description}        Privileges
    Input information AEM              ${input Description}              Privileges for T1X
    Input information AEM              ${input Header List Text}         Privileges
    Input information AEM              ${input order Category Listing}   1
    Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                  ${btn add benner}
    sleep  1s
    Input information AEM              ${input benner Image}             /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                  ${btn create}
    sleep  3s
Article_The1Exclusive_AEM_01 TH Step11 Click Open and verify Category listing
    Click Element                      ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  3s
    Click Element AEM                 ${btn Publish Page}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_01 TH Step12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_01.PNG
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_TH_01_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_02 TH Step05 Click Thai Create
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/${date_today}_T1X_Privileges
    sleep  3s
Article_The1Exclusive_AEM_02 TH Step07 Select Category API Page
    Click Element          ${Card Category Page}
    Click Element AEM      ${btn Next}
    sleep  2s
Article_The1Exclusive_AEM_02 TH Step08 Input value in Category Listing
    Input information AEM              ${input Category Listing title}                   ${Category title}
    Click Element AEM                  ${btn Category Details}
    sleep  1s
    Input information AEM              ${input header title}            T1X Shopping
    Input information AEM              ${input Short Description}       Shopping Privileges
    Input information AEM              ${input Description}             Privileges for T1X
    Input information AEM              ${input Header List Text}         Valid 1 July - 31 Dec 2021
    Input information AEM              ${input order Category Listing}   1
    Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element                      ${Check box Paginate}
    Click Element AEM                  ${btn create}
    sleep  2s
    Click Element                      ${btn open Success}
Article_The1Exclusive_AEM_02 TH Step11 Click Open and verify Category listing
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  1s
    Reload Page
    sleep  1s
Article_The1Exclusive_AEM_02 TH Step12 Click Preview and verify Category listing
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_TH_02.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_TH_02_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_The1Exclusive_AEM_03 TH Step05 Click Thai
    Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/${date_today}_${Category Listing Name}/${Category title}
    sleep  2s
    Click Element                      ${Card Article API}
Article_The1Exclusive_AEM_03 TH Step09 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_The1Exclusive_AEM_03 TH Step10 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_SIT Central Department Store
    Click Element AEM                  ${btn Category Details}
Article_The1Exclusive_AEM_03 TH Step11 Select tab Articles and input value
    Click Element AEM                  ${Check box Display on Highlight}
    Input information AEM              ${input Publish Date}                             June 23, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/th/1.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${input Featured Image Alt}                       the 1
    Input information AEM              ${input Author}                                   Admin
    Input information AEM              ${input Order Article}                            1
    Click Element AEM                  ${btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Heroscope}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${btn offer Tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Restaurant & Cafe}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element                      ${input File Attachment}
    sleep  1s
    Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/th/1.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Click Element AEM                 ${Check box Article Campaign}
    sleep    1s
    Click Element AEM                 ${Check btn Reward Store}
    sleep  1s
    Click Element                     ${Select All Reward Store}
    sleep  1s
    Click Element                     ${Select Click Action}
    sleep  1s
    Click Element                     ${Click Action Show Membership Card}
    sleep  1s
    Input information AEM             ${input Button Text}                                 Show My Membership Card

Article_The1Exclusive_AEM_03 TH Step12 Click Create
    Click Element AEM                 ${btn Create Article}
    sleep  2s
    Click Element                     ${btn open Success}
    sleep  5s
    Switch Window     title=STAGE | AEM Sites
    Close Window
    sleep  2s
    Switch Window     title=STAGE | AEM Editor
    sleep  2s
    Click Element AEM                 ${btn Preview}
    sleep  1s
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                 ${btn Publish Page}
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
    Run Keyword if     '${present}'=='True'     Publish Article AEM
    sleep  3s
    Reload Page
    sleep  2s
Article_The1Exclusive_AEM_03 TH Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_TH_03.PNG
    sleep  1s
    Click Element AEM                 ${btn Preview}
    sleep  2s
    Select Frame    xpath=//iframe[@id='ContentFrame']

    ${url_json}       Get Text       ${link_Publish API_Article_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API_Personalization     ${url_json}
    ${resp}=    Get Request      Get API_Personalization    uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Article_AEM}
    sleep  1s
    Switch Window   New
    sleep  2s
    Capture Page Screenshot          ${date_today}_AEM_Article_T1X_TH_03_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s




# Edit Category Listing Page "SIT1_T1X_Privileges"-1

#     sleep  1s
#     Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  2s
#     Click Element AEM                   ${Btn_Open_Properties}
#     sleep  2s
#     Input information AEM              ${Edit title}                          ${date_today}_T1X_Privileges Edit
#     Input information AEM              xpath=//*[@id="coral-id-7"]            Privileges for T1X Edit
#     Click Element AEM                  ${Edit Article Details}
#     sleep  1s
#     Input information AEM              ${Edit Header Title}                   T1X_Privileges Edit
#     Input information AEM              ${Edit order}        2
#     Click Element AEM                  ${Edit Add benner}
#     sleep  1s
#     Input information AEM              ${Edit benner Image}             /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
#     sleep  1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep  1s
#     Click Element AEM                  ${Edit Save&Close}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Go to                   https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_12.PNG
#     Reload page
#     sleep  2s



# Edit
#     Click Element AEM                  ${Btn_Open_Properties}
#     sleep  2s
#     Input information AEM              ${Edit title}                          SIT1_T1X_Privileges Edit
#     Input information AEM              xpath=//*[@id="coral-id-7"]            Privileges for T1X Edit
#     Click Element AEM                  ${Edit Article Details}
#     sleep  1s
#     Input information AEM              ${Edit Header Title}                   T1X_Privileges Edit
#     Input information AEM              ${Edit order}          2
#     Click Element AEM                  ${Edit Add benner}
#     sleep  1s
#     Input information AEM              ${Edit benner Image2}             /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
#     sleep  1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep  1s
#     Click Element AEM                  ${Edit Save&Close}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Reload page
#     sleep  2s
#     Go to                   https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_2.PNG



# Properties Article_The1Exclusive_AEM_14 Step12
#     sleep  1s
#     Click Element AEM                 ${btn Preview}
#     sleep  1s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    Get 5% discount on participating normal price items at every Central Department Store.\nPresent The 1 Exclusive card or The 1 App or registered phone number before payment.
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. Please present The 1 Exclusive card or State registered phone number or ID card number or The 1 Number\n2. 5% discount only valid for participating regularly-priced items at every Central store.\n3. Not valid for purchases at the Fine Jewellery Department, Beauty Galerie, Central Food Hall, Tops Market, Tops Superstore, Power Buy, Supersports, B2S, MUJI, purchases of gift exchange items, gift vouchers or Marks & Spencer food items\n4. The company reserves the right to change these terms without prior notice.
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              Non-participating items
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           BAO BA/ BAO PR/ MARNI MA/ MARNI PR/ PLEATSPL/ PLEATSPR\nTOM ME/ TOM WO\nCosmetics & Perfumes Department\nDENIM LI\nRIMOWA RI\nGARMINGA\nDIAPERCH/ MAMY PO/ HUGGIEHU/ MERRIEME\nMARNI MA\nBREITLBR/ BREITLBPR/ BREITLSE/ FRANCKPR/ FRANCKSE/ GARMINGA/ ROLEX RO/ ROLEX SE
#     sleep  2s
#     Click Element                     ${click btn Select Action}
#     sleep   1s
#     Click Element                     ${Select Click Action Call}
#     sleep   1s
#     Input Text                        ${input Button Text Edit}                            Call My Personal Assistant
#     Input information AEM             ${Click Content Text}          026601011
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_14.PNG
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Reload page
#     sleep  2s
# Properties Article_The1Exclusive_AEM_15 Step12
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                     ${click btn Select Action}
#     sleep   1s
#     Click Element                     ${Click Action Show Membership Card Edit}
#     sleep   1s
#     Input Text                        ${input Button Text Edit}                            Show My Membership Card
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_15.PNG
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame               xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}        Get 5% discount on participating normal price items at every Central Department Store.\\nPresent The 1 Exclusive card or registered phone number before payment.
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  2s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-1.model.json
#     sleep  1s


# Article_The1Exclusive_AEM_05 Create Articles page "SIT SIWILAI Online Store" Step09
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles2}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT SIWILAI Online Store
#     Click Element                      ${Check box T1X Article}
#     Input information AEM              ${input Short Description Article}                Get 5% Discount
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
#     #Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 22, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/2.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            2
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/2.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Click Element                     ${Select Click Action}
#     sleep  1s
#     Click Element                     ${Select Click Action Code}
#     Input information AEM             ${input Button Text}                                 Show discount code
#     Input information AEM             ${input Contact Text}                                [Show Free text pop up code - THE1EX5]
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1Exclusive_AEM_05 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    "Get 5% Discount on regular price items at SIWILAI Online Store: http://siwilaibkk.com/online-store/Please apply The 1 Exclusive discount code before checkout (Click the button below to find the exclusive discount code)"
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. This privilege is reserved for The1 Exclusive members only.\n2. This privilege is valid at SIWILAI online store\n3. The discount is valid for the participating items, excluding Thaimade, Siwilai Exclusive, music & consignment brands.\n4. Enter the discount code at SIWILAI online store.\n5. The discount is valid 1 July 2020 – 31 December 2020.\n6. The discount cannot be used with any other discounts or promotions.\n7. The discount cannot be exchanged for cash.\n8. Terms & conditions are subject to change without notice.\n9. For more information, please call 0 2160 5809.
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}        Get 5% Discount on regular price items at SIWILAI Store, Level 5, Central Embassy and the LINE Official Account @siwilaibkk.\\nPresent The 1 Exclusive card or registered phone number before payment.
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  2s
#     Go to                           https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-2.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_5.PNG



# Article_The1Exclusive_AEM_06 Create Articles Page "SIT Central Restaurant Group" Step09
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles3}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Central Restaurant Group
#     Click Element                      ${Check box T1X Article}
#     Input information AEM              ${input Short Description Article}                Get 10% Discount
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
#     #Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/3.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            3
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/3.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Click Element                     ${Select Click Action}
#     sleep  1s
#     Click Element                     ${Select Click Action Redirect URL}
#     Input information AEM             ${input Button Text}                                 Go to My Reward
#     Input information AEM             ${input Contact Text}                                https://uat.the1.co.th/my-rewards
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1Exclusive_AEM_06 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    "10% Discount for nomal price menu at CRG Restaurants 4 rights per month.Please find your discount codes in ""My Reward"""
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. Please present e-coupon before ordering.\n2. Only for The1 Exclusive member redeeming e-coupon via The 1 App \n3. Limit 4 rights per month \n4. Limit to 1 right per receipt\n5. Each coupon has its validity and conditions applied. Please make sure your coupon is still valid and meets the requirement.\n6. This coupon is used for 10% discount at Mister Donut, Auntie Anne's, Pepper Lunch, Chabuton, Cold Stone Creamery, Thai Terrace, Yoshinoya, Ootoya, Tenya, Katsuya, Aroi Dee, Suki House, and Kowlune \n7. Apply with normal price menu only \n8. Cannot use with Home Delivery, Premium items, other coupons and promotions \n9. It is illegal to sell and copy these e-coupons The coupons may not be used if shown from a screen capture\n10. The company reserves the right to change information and price without prior notice
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              Participating restaurants
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           Mister Donut\nAuntie Anne's\nPepper Lunch\nChabuton\nCold Stone Creamery\nThai Terrace\nYoshinoya\nOotoya\nTenya\nKatsuya\nAroi Dee\nSuki House\nKowlune
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               10% Discount for nomal price menu at CRG Restaurants 4 rights per month. Please see your coupons in My Reward.
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-3.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_6.PNG



# Article_The1Exclusive_AEM_07 Create Articles Page "SIT Personal Assistant" Step09
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles4}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Personal Assistant
#     Click Element                      ${Check box T1X Article}
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
#     Input information AEM              ${input Publish Date}                             June 20, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/4.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            4
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/4.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Click Element                     ${Select Click Action}
#     sleep  1s
#     Click Element                     ${Select Click Action Call}
#     Input information AEM             ${input Button Text}                                 Call My Personal Assistant
#     Input information AEM             ${input Contact Text}                                026601011
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1Exclusive_AEM_07 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    "Ensure your convenience with Central Group with dedicated The 1 Exclusive contact center at your service\nPersonal Assistant provides services and arranges personal requests as follows: \n- Respond to inquiries, reservation request, provide recommendation and promotion information related to Central Group’s products \n- Restaurant reservations in Central Group’s premises such as Central Department Stores, Central Embassy, Central Plaza, Central Festival, Robinson Department Stores and Robinson Lifestyle Centers \n- Beauty salon/ spa reservations in Central Group premises such as Central Department Stores, Central Embassy, Central Plaza, Central Festival, Robinson Department Stores and Robinson Lifestyle Centers\n- Coordinates product transfers between Central Group stores"
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      "1. The 1 Exclusive Personal Assistant will only be responsible for the cost of information searching. \n2. The 1 Exclusive Member is responsible for the cost in purchasing goods or paying service. This includes deposit money, transfer fees, cancellation fees, delivery/ shipping costs including insurance cost, costs incurred in transferring funds to fulfill a request, and other costs. \n3. The 1 Exclusive Assistance will not be responsible for requests or inquiries related to goods or services outside of Central Group, nor goods or services for any commercial purpose, and prohibited under national law or which contravene the universally accepted moral or ethical standards for the country. \n4. The company reserves the right to change terms and conditions without prior notice"
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               Get 5% Discount on participating normal price items at every Supersports and FIT Store (Except Supersports Outlet and Supersports Factory Store)\n\nPresent The 1 Exclusive card or registered phone number before payment.\n\nSpecial privileges for you\n\n- Prioritised Personal shopping assistant (via Chat & Shop)\n\n- Early bird/Free tickets to sport events\n\n- Pre-order new products
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-4.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_7.PNG



# Article_The1Exclusive_AEM_08 Create Articles Page "SIT Centara Hotels & Resorts" Step09
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles5}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Centara Hotels & Resorts
#     Click Element                      ${Check box T1X Article}
#     Input information AEM              ${input Short Description Article}                Get discount 20% plus extra C1 point
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 20 Dec 2021
#     #Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 20, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/5.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            5
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/5.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Click Element                     ${Select Click Action}
#     sleep  1s
#     Click Element                     ${Select Click Action Redirect URL}
#     Input information AEM             ${input Button Text}                                 Book Now at Centara
#     Input information AEM             ${input Contact Text}                                https://www.centarahotelsresorts.com/partner/the1exclusive/
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1Exclusive_AEM_08 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    Get discount 20% on accomodation plus extra 500 CentaraThe1 Bonus points for every 1,000 spend (maximum 5,000 CentaraThe1 Bonus points per account throughout the campaign) by booking through exclusive website
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. This offer is valid for The 1 Exclusive only and book through exclusive website only.\n2. Earn 500 CentaraThe1 Bonus point for every 1,000 spend (maximum 5,000 CentaraThe1 Bonus point per account throughout the campaign)\n3. CentaraThe 1 Bonus point will be credited to your Centara The 1 by the 15th of the month following the booking date\n4. CentaraThe 1 Bonus point will be valid for 1 year\n5. This offer cannot be used in conjunction with any other promotions\n6. Book and stay until 20 December 2020\n7. Reservation is subject to room availability\n8. Rates are exclusive of service charge and prevailing government tax.\n9. All reservations must be guaranteed with a credit card number that is valid throughout the entire stay.\n10. Terms and conditions as a designated by the company\n11. For more information or for further assistance with your booking you may contact our reservation centre at reservations@chr.co.th or +66(0) 2101 1234 1 or via our live chat.
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               Get discount 20% on accomodation plus extra 500 CentaraThe1 Bonus point for every 1,000 spend (maximum 5,000 CentaraThe1 Bonus point per account throughout the campaign)
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-5.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_8.PNG




# Article_The1Exclusive_AEM_09 Create Articles Page "SIT Agoda" Step09
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles6}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Agoda
#     Click Element                      ${Check box T1X Article}
#     Input information AEM              ${input Short Description Article}                Get 7% on-top discount
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
#     Input information AEM              ${input Publish Date}                             June 20, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/6.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            6
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/6.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Click Element                     ${Select Click Action}
#     sleep  1s
#     Click Element                     ${Select Click Action Email}
#     Input information AEM             ${input Button Text}                                 Go to send Email
#     Input information AEM             ${input Contact Text}                                the1_Exclusive@central.co.th
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1Exclusive_AEM_09 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    Discount 7% off on top of worldwide hotels\nHow to get your discount\n1. Find your discount codes in "My Reward" \n2. Go to www.agoda.com/the1exclusive\n3. Apply
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. The 1 Exclusive members enjoy 7% off on top for hotel booking. \n2. Booking participating rooms via www.agoda.com/the1exclusive only to receive the discount.\n3. This promotion can be used with hotel reservations in participating destinations. Only hotels designated by the hotel will have the symbol "PROMOTION ELIGIBLE / promotion" when making a reservation and payment via the website (advance payment only) where the discount hotel will display discount message in the last step of the reservation after entering the promotional code.\n4. The discount cannot be exchanged, transferrable for cash or apply with other promotional programs.\n5. The promotion applies for eligible The 1 Exclusive members only.\n6. The discount is applied only to the room rates; excluded local taxes, service charges and any additional expenses.\n7. This additional discount cannot be changed / exchanged / exchanged for cash or other products.\n8. The promotional code can not be reissued and replaced.\n9. The 1 and Agoda reserve the right to change the conditions without prior notice.\n10. The use of the promotional code in accordance with the terms and conditions of The 1 and Agoda. In the event of a dispute, the decision of Agoda is considered as a final.\n11. Additional details at www.agoda.com/info/agoda_faq.html
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              Go to Agoda website
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           www.agoda.com/the1exclusive
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               Discount 7% off on top of worldwide hotels\nHow to get your discount\n1. Find your discount code in "My Reward"\n2. Go to https://www.agoda.com/the1exclusive\n3. Apply the discount code when checkout
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/T1X_Privileges/sit_t1x_shopping/${date_today}_test-6.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_9.PNG



# Article_The1_AEM_010 Create Articles Page "TEST_ARTICLE_1" in folder English
#     Go to                  https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/articles
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_TEST_ARTICLE_111
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     TEST_ARTICLE_11
#     Input information AEM              ${input Short Description Article}                TEST_ARTICLE_11
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2020
#     Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2020
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            1
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1.5s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Check box Article Campaign}
#     Input information AEM             ${input Button Text}                                 Test Show My Membership Card
#     #Input information AEM             ${input Contact Text}
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_The1_AEM_010 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    test article Description Article
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      test article Terms & Condition
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              test article Additional Section Header
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           test Additional Section Free Text
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               Discount 7% off on top of worldwide hotels\nHow to get your discount\n1. Find your discount code in "My Reward"\n2. Go to https://www.agoda.com/the1exclusive\n3. Apply the discount code when checkout
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/en/articles/${date_today}_test_article111.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_10.PNG


# ###############################################################################################################################


# Article_AEM_01 Create Category Listing Page "SIT1_T1X_Privileges" in Thai
#     Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th
#     sleep  2s
#     Click Element AEM                   ${Card Category Listing Page}
#     Click Element AEM                   ${btn Next}
#     sleep  1s
#     Input information AEM              ${input Category Listing title}                   ${date_today}_SIT1_T1X_Privileges
#     Input information AEM              ${input Category Listing Name}                    ${Category Listing Name}
#     Input information AEM              ${input Category Listing Description}             Privileges for T1X
#     Click Element AEM                  ${btn Category Details}
#     sleep  1s
#     Input information AEM              ${input header title}            T1X Privileges
#     Input information AEM              ${input Short Description}       Privileges
#     Input information AEM              ${input Description}             Privileges for T1X
#     Input information AEM              ${input Header List Text}         Privileges
#     Input information AEM              ${input order Category Listing}   1
#     Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                  ${btn add benner}
#     sleep  1s
#     Input information AEM              ${input benner Image}             /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     #Click Element                      ${Check box Paginate}
#     Click Element AEM                  ${btn create}
#     sleep  1s
#     Click Element                      ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     Reload Page
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Go to               https://uatlibrary.the1.co.th/content/the1/api/th/th/T1X_Privileges.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_11.PNG

# Article_AEM_02 Create Category page "SIT_T1X_Shopping" in Thai
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/${Category Listing Name}
#     sleep  2s
#     Click Element          ${Card Category Page}
#     Click Element AEM      ${btn Next}
#     sleep  1s
#     Input information AEM              ${input Category Listing title}                   ${Category title}
#     Click Element AEM                  ${btn Category Details}
#     sleep  1s
#     Input information AEM              ${input header title}            T1X Shopping
#     Input information AEM              ${input Short Description}       อิสระกับทุกการช้อปปิ้งในสไตล์คุณ
#     Input information AEM              ${input Description}             Privileges for T1X
#     Input information AEM              ${input Header List Text}         Valid 1 July - 31 Dec 2020
#     Input information AEM              ${input order Category Listing}   1
#     Input information AEM              ${input Featured Image}           /content/dam/t1x-asset/W-T1X-Landing-Privilege-Shopping.png
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element                      ${Check box Paginate}
#     Click Element AEM                  ${btn create}
#     sleep  1s
#     Click Element                      ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Go to                   https://uatlibrary.the1.co.th/content/the1/api/th/th/T1X_Privileges/sit_t1x_shopping.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_12.PNG


# Article_AEM_04 Create Articles page "SIT Central Department Store" Step09 in Thai
#     Go to                https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/${Category Listing Name}/${Category title}
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title ArticlesTH1}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Central Department Store TH
#     Input information AEM              ${input Short Description Article}                รับส่วนลด 5%
#     Input information AEM              ${input Header List Text Article}                 ระยะเวลาใช้สิทธิ์ 1 ก.ค. - 31 ธ.ค. 2564
#     Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            1
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1.5s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/thn/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Check box Article Campaign}
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Input information AEM             ${input Button Text}                                 แสดงบัตรสมาชิกเพื่อรับสิทธิ์
#     #Input information AEM             ${input Contact Text}
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
# Properties Article_AEM_04 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    รับส่วนลด 5% สำหรับสินค้าราคาปกติ ที่ห้างสรรพสินค้าเซ็นทรัลทุกสาขา\nโปรดแสดงบัตรสมาชิก The 1 Exclusive หรือ The 1 App หรือแจ้งเบอร์โทรศัพท์ที่ลงทะเบียนก่อนชำระเงิน
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. กรุณาแสดงบัตร The 1 Exclusive หรือแจ้งหมายเลขโทรศัพท์ หรือหมายเลขบัตรประชาชน หรือหมายเลขบัตร The 1 ก่อนการชำระเงิน\n2. ส่วนลด 5% สำหรับสินค้าราคาปกติที่เซ็นทรัลทุกสาขา\n3. ยกเว้น แผนก Fine Jewelry, แผนกเครื่องสำอาง, เซ็นทรัลออนไลน์, เซ็นทรัลฟู้ดฮอลล์, ท็อปส์มาร์เก็ต, ท็อปส์ซูเปอร์สโตร์,\nเพาเวอร์บาย, ซูเปอร์สปอร์ต, บีทูเอส, มูจิ, สินค้าแลกซื้อ, การซื้อบัตรของขวัญ, การซื้อบัตรของขวัญอิเล็กทรอนิกส์,\nการชำระด้วยบัตรของขวัญที่มีเงื่อนไข และ อาหารของมาร์คแอนด์สเปนเซอร์ และสินค้าที่งดร่วมรายการ\n4. บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไขโดยมิต้องแจ้งให้ทราบล่วงหน้า
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              สินค้าที่งดร่วมรายการ
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           BAO BA/ BAO PR/ MARNI MA/ MARNI PR/ PLEATSPL/ PLEATSPR\nTOM ME/ TOM WO\nCosmetics & Perfumes Department\nDENIM LI\nRIMOWA RI\nGARMINGA\nDIAPERCH/ MAMY PO/ HUGGIEHU/ MERRIEME\nMARNI MA\nBREITLBR/ BREITLBPR/ BREITLSE/ FRANCKPR/ FRANCKSE/ GARMINGA/ ROLEX RO/ ROLEX SE
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Reload Page
#     sleep  2s
#     Click Element AEM                 ${btn Preview}
#     sleep  3s
#     Go to                   https://uatlibrary.the1.co.th/content/the1/api/th/th/T1X_Privileges/sit_t1x_shopping/${date_today}_-1.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_4.PNG



# Article_The1_AEM_011 Create Articles Page "TEST_ARTICLE_1" in Thai
#     Go to                           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/articles
#     sleep   2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_เทส_ARTICLE_1
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     เทส_ARTICLE_1
#     Input information AEM              ${input Short Description Article}                เทส_ARTICLE_1
#     Input information AEM              ${input Header List Text Article}                 ระยะเวลาใช้สิทธิ์ 1 ก.ค. - 31 ธ.ค. 2563
#     Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2020
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/th/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            1
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  1s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/th/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Check box Article Campaign}
#     Input information AEM             ${input Button Text}                                 เทสแสดงบัตรสมาชิกเพื่อรับสิทธิ์
#     #Input information AEM             ${input Contact Text}
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  5s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
# Properties Article_The1_AEM_011 Step12
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep   2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    เทส article Description Article
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      เทส article Terms & Condition
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              เทส article Additional Section Header
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           เทส Additional Section Free Text
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  2s
#     Click Element AEM                ${btn New Component Text}
#     sleep  2s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                       xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               รับส่วนลด 5% สำหรับสินค้าราคาปกติ ที่ห้างสรรพสินค้าเซ็นทรัลทุกสาขา โปรดแสดงบัตรสมาชิก The 1 Exclusive หรือแจ้งเบอร์โทรศัพท์ที่ลงทะเบียนก่อนชำระเงิน
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  3s
#     Go to                   https://uatlibrary.the1.co.th/content/the1/api/th/th/articles/${date_today}_article1.model.json
#     sleep  1s
#     Capture Page Screenshot          Article_AEM_11.PNG


# Article_t1x_check_display app EN
#     Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/test_t1x_privilege/shopping
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles1}
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Central Department Store
#     Input information AEM              ${input Short Description Article}                Get 5% Discount
#     Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
#     Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/en/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            1
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     sleep  1s
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  2s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/en/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Check box Article Campaign}
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Input information AEM             ${input Button Text}                                 Show My Membership Card
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  4s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  2s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     Reload page
#     sleep  2s
# Properties Article-1
#     Click Element AEM                 ${btn Preview}
#     sleep  1s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    Get 5% discount on participating normal price items at every Central Department Store.\nPresent The 1 Exclusive card or The 1 App or registered phone number before payment.
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. Please present The 1 Exclusive card or State registered phone number or ID card number or The 1 Number\n2. 5% discount only valid for participating regularly-priced items at every Central store.\n3. Not valid for purchases at the Fine Jewellery Department, Beauty Galerie, Central Food Hall, Tops Market, Tops Superstore, Power Buy, Supersports, B2S, MUJI, purchases of gift exchange items, gift vouchers or Marks & Spencer food items\n4. The company reserves the right to change these terms without prior notice.
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              Non-participating items
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           BAO BA/ BAO PR/ MARNI MA/ MARNI PR/ PLEATSPL/ PLEATSPR\nTOM ME/ TOM WO\nCosmetics & Perfumes Department\nDENIM LI\nRIMOWA RI\nGARMINGA\nDIAPERCH/ MAMY PO/ HUGGIEHU/ MERRIEME\nMARNI MA\nBREITLBR/ BREITLBPR/ BREITLSE/ FRANCKPR/ FRANCKSE/ GARMINGA/ ROLEX RO/ ROLEX SE
#     sleep  2s
#     Click Element                     ${click btn Select Action}
#     sleep   1s
#     Click Element                     ${Select Click Action Call}
#     sleep   1s
#     Input Text                        ${input Button Text Edit}                            Call My Personal Assistant
#     Input information AEM             ${Click Content Text}          026601011
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  3s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  2s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                        xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}        Get 5% discount on participating normal price items at every Central Department Store.\\nPresent The 1 Exclusive card or registered phone number before payment.
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  2s

# Article_t1x_check_display app TH
#     Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/test_t1x_privilege/shopping
#     sleep  2s
#     Click Element                      ${Card Article API}
#     Click Element AEM                  ${btn Next}
#     Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles1}_TH
#     Click Element AEM                  ${btn Category Details}
#     Input information AEM              ${input header title Article}                     SIT Central Department Store TH
#     Input information AEM              ${input Short Description Article}                รับส่วนลด 5 %
#     Input information AEM              ${input Header List Text Article}                 ระยะเวลาใช้สิทธิ์ 1 ก.ค. - 31 ธ.ค. 2564
#     Click Element AEM                  ${Check box Display on Highlight}
#     Input information AEM              ${input Publish Date}                             June 21, 2021
#     Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/th/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Input information AEM              ${input Featured Image Alt}                       the 1
#     Input information AEM              ${input Author}                                   Admin
#     Input information AEM              ${input Order Article}                            1
#     Click Element AEM                  ${btn Article Tag}
#     sleep  1s
#     Click Element                      ${Tag Shopping}
#     sleep  1s
#     Click Element                      ${btn Select}
#     Click Element AEM                  ${btn offer Tag}
#     sleep  2s
#     Click Element                      ${Tag The 1 Central}
#     Click Element                      ${btn Select}
#     Input information AEM              ${input File Attachment}                            /content/dam/aem-images/test/th/1.jpg
#     sleep    1s
#     Press Keys    None    ARROW_DOWN
#     Press Keys    None    RETURN
#     sleep    1s
#     Click Element AEM                 ${Check box Article Campaign}
#     Click Element AEM                 ${Select Reward Store}
#     sleep  1s
#     Click Element                     ${Select Reward Store The 1 Exclusive}
#     Input information AEM             ${input Button Text}                                 แสดงบัตรสมาชิกเพื่อรับสิทธิ์
#     Click Element AEM                 ${btn Create Article}
#     sleep  2s
#     Click Element                     ${btn open Success}
#     sleep  4s
#     Switch Window     title=STAGE | AEM Sites
#     Close Window
#     sleep  2s
#     Switch Window     title=STAGE | AEM Editor
#     sleep  3s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  2s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     Reload page
#     sleep  2s
# Properties Article-2
#     Click Element AEM                 ${btn Preview}
#     sleep  1s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  1s
#     Click Element                      ${btn open properties}
#     sleep  2s
#     Click Element                      ${btn Article Details}
#     sleep  1s
#     Click Element                      ${input Description Article}
#     Input Text                         ${input Description Article}                    1. กรุณาแสดงบัตร The 1 Exclusive หรือแจ้งหมายเลขโทรศัพท์ หรือหมายเลขบัตรประชาชน หรือหมายเลขบัตร The 1 ก่อนการชำระเงิน\n2. ส่วนลด 5% สำหรับสินค้าราคาปกติที่เซ็นทรัลทุกสาขา\n3. ยกเว้น แผนก Fine Jewelry, แผนกเครื่องสำอาง, เซ็นทรัลออนไลน์, เซ็นทรัลฟู้ดฮอลล์, ท็อปส์มาร์เก็ต, ท็อปส์ซูเปอร์สโตร์,เพาเวอร์บาย, ซูเปอร์สปอร์ต, บีทูเอส, มูจิ, สินค้าแลกซื้อ, การซื้อบัตรของขวัญ, การซื้อบัตรของขวัญอิเล็กทรอนิกส์,การชำระด้วยบัตรของขวัญที่มีเงื่อนไข และ อาหารของมาร์คแอนด์สเปนเซอร์ และสินค้าที่งดร่วมรายการ\n4. บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไขโดยมิต้องแจ้งให้ทราบล่วงหน้า
#     Click Element                      ${input Terms & Condition}
#     Input Text                         ${input Terms & Condition}                      1. กรุณาแสดงบัตร The 1 Exclusive หรือแจ้งหมายเลขโทรศัพท์ หรือหมายเลขบัตรประชาชน หรือหมายเลขบัตร The 1 ก่อนการชำระเงิน\n2. ส่วนลด 5% สำหรับสินค้าราคาปกติที่เซ็นทรัลทุกสาขา\n3. ยกเว้น แผนก Fine Jewelry, แผนกเครื่องสำอาง, เซ็นทรัลออนไลน์, เซ็นทรัลฟู้ดฮอลล์, ท็อปส์มาร์เก็ต, ท็อปส์ซูเปอร์สโตร์,เพาเวอร์บาย, ซูเปอร์สปอร์ต, บีทูเอส, มูจิ, สินค้าแลกซื้อ, การซื้อบัตรของขวัญ, การซื้อบัตรของขวัญอิเล็กทรอนิกส์,การชำระด้วยบัตรของขวัญที่มีเงื่อนไข และ อาหารของมาร์คแอนด์สเปนเซอร์ และสินค้าที่งดร่วมรายการ\n4. บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไขโดยมิต้องแจ้งให้ทราบล่วงหน้า
#     Click Element                      ${input Additional Section Header}
#     Input Text                         ${input Additional Section Header}              สินค้าที่งดร่วมรายการ
#     Click Element                      ${input Additional Section Free Text}
#     Input Text                         ${input Additional Section Free Text}           BAO BA/ BAO PR/ MARNI MA/ MARNI PR/ PLEATSPL/ PLEATSPR\nTOM ME/ TOM WO\nCosmetics & Perfumes Department\nDENIM LI\nRIMOWA RI\nGARMINGA\nDIAPERCH/ MAMY PO/ HUGGIEHU/ MERRIEME\nMARNI MA\nBREITLBR/ BREITLBPR/ BREITLSE/ FRANCKPR/ FRANCKSE/ GARMINGA/ ROLEX RO/ ROLEX SE
#     sleep  2s
#     Click Element                     ${click btn Select Action}
#     sleep   1s
#     Click Element                     ${Select Click Action Call}
#     sleep   1s
#     Input Text                        ${input Button Text Edit}                            โทรหาผู้ช่วยส่วนตัวของฉัน
#     Input information AEM             ${Click Content Text}          026601011
#     sleep  1s
#     Click Element AEM                  ${Save&Close}
#     sleep  2s
#     Click Element AEM                 ${btn edit}
#     sleep  4s
#     Click Element AEM                 ${btn drag components here}
#     Click Element AEM                 ${btn editabletoolbar}
#     sleep  1s
#     Click Element AEM                ${Insert New Component Text}
#     sleep  1s
#     Click Element AEM                ${btn New Component Text}
#     sleep  1s
#     Click Element AEM                 ${btn editabletoolbar text}
#     sleep  1s
#     Select Frame                        xpath=//iframe[@id='ContentFrame']
#     Input Text                        ${input New Component Text}               รับส่วนลด 5% สำหรับสินค้าราคาปกติ ที่ห้างสรรพสินค้าเซ็นทรัลทุกสาขา โปรดแสดงบัตรสมาชิก The 1 Exclusive หรือแจ้งเบอร์โทรศัพท์ที่ลงทะเบียนก่อนชำระเงิน
#     sleep  2s
#     Unselect Frame
#     Click Element AEM                 ${btn Preview}
#     sleep  2s
#     Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
#     sleep  3s
#     Click Element AEM                 ${btn Publish Page}
#     sleep  3s
#     ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Click_Publish_Article}
#     Run Keyword if     '${present}'=='True'     Publish button AEM
#     sleep  3s
#     Reload page
#     sleep  2s