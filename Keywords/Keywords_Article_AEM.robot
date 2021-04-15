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
Resource    ../Variable/Variable_Article_AEM.robot
Resource    ../Keywords/Keywords.robot


*** Keywords ***

Check if Questionnaire Article AEM
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



Article_AEM_1 Step05 Click English
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/articles
    sleep  2s
    Click Element                     ${Card Article API}
Article_AEM_1 Step08 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_AEM_1 Step09 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles1}_AEM_1
    Click Element AEM                  ${btn Article Details}
Article_AEM_1 Step10 Select tab Articles and input value
    # Input information AEM              ${input header title Article}                     TEST_ARTICLE_1
    # Input information AEM              ${input Short Description Article}                Get 5% Discount
    # Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
    # Click Element AEM                  ${Check box Display on Highlight}
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

Article_AEM_1 Step11 Click Create
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
Article_AEM_1 Step12 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_Article_AEM_1.PNG
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
    Capture Page Screenshot          ${date_today}_Article_AEM_1_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_AEM_2 Step05 Click English
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/en/articles
    sleep  2s
    Click Element                     ${Card Article API}
Article_AEM_2 Step08 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_AEM_2 Step09 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles2}_AEM_2
    Click Element AEM                  ${btn Article Details}
Article_AEM_2 Step10 Select tab Articles and input value
    # Input information AEM              ${input header title Article}                     TEST_ARTICLE_2
    # Input information AEM              ${input Short Description Article}                Get 5% Discount
    # Input information AEM              ${input Header List Text Article}                 Valid 1 July - 31 Dec 2021
    Input information AEM              ${input Publish Date}                             June 21, 2021
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
    Click Element AEM                  ${Select Click Action}
    sleep  2s
    Click Element AEM                  ${Select Click Action Email}
    sleep  2s
    Input information AEM              ${input Button Text}                                        Go to send Emai
    Input information AEM              ${input Contact Text}                                       the1_Exclusive@central.co.th

Article_AEM_2 Step11 Click Create
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
Article_AEM_2 Step12 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_Article_AEM_2.PNG
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
    Capture Page Screenshot          ${date_today}_Article_AEM_2_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s






Article_AEM_3 Step05 Click Thai
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/articles
    sleep  2s
    Click Element                     ${Card Article API}
Article_AEM_3 Step08 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_AEM_3 Step09 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles1}_AEM_1
    Click Element AEM                  ${btn Article Details}
Article_AEM_3 Step10 Select tab Articles and input value
    Input information AEM              ${input Publish Date}                             June 22, 2021
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

Article_AEM_3 Step11 Click Create
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
Article_AEM_3 Step12 Click Preview and verify Articles page
    Capture Page Screenshot             ${date_today}_Article_AEM_3.PNG
    sleep  1s
    Click Element AEM                   ${btn Preview}
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
    Capture Page Screenshot          ${date_today}_Article_AEM_TH_3_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s




Article_AEM_4 Step05 Click Thai
    Go to               https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/api/th/th/articles
    sleep  2s
    Click Element                     ${Card Article API}
Article_AEM_4 Step08 Select Articles API Page > Click Next
    Click Element AEM                  ${btn Next}
Article_AEM_4 Step09 Input value in Basic tab
    Input information AEM              ${input Category Listing title}                   ${date_today}_${Title Articles2}_AEM_2
    Click Element AEM                  ${btn Article Details}
Article_AEM_4 Step10 Select tab Articles and input value
    Input information AEM              ${input Publish Date}                             June 21, 2021
    Input information AEM              ${input Featured Image Article}                   /content/dam/aem-images/test/th/2.jpg
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
    Click Element AEM                  ${Select Click Action}
    sleep  2s
    Click Element AEM                  ${Select Click Action Email}
    sleep  2s
    Input information AEM              ${input Button Text}                                        Go to send Emai
    Input information AEM              ${input Contact Text}                                       the1_Exclusive@central.co.th

Article_AEM_4 Step11 Click Create
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
    Reload page
    Click Element At Coordinates       ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                  ${btn open properties}
    sleep  1s
    Click Element AEM                   ${Edit Article Details2}
    sleep  2s
    Input information AEM              ${input Button Text Edit}                                        ไปที่อีเมล์
    sleep  1s
    Click Element AEM                   ${Edit Save&Close}
    sleep  3s
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
Article_AEM_4 Step12 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_Article_AEM_4.PNG
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
    Capture Page Screenshot          ${date_today}_Article_AEM_4_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



Article_AEM_5 Step09 Edit value in Basic tab
    Go to             https://uatcreator.the1.co.th/editor.html/content/the1/api/th/en/articles/${date_today}_test-1aem1.html
    sleep  2s
    sleep  2s
    Click Element AEM                   ${btn Preview}
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    Input information AEM               ${Edit title}                                    ${date_today}_${Title Articles1}_AEM_1 Edit

Article_AEM_5 Step10 Edit Articles tab
    Click Element AEM                  ${Edit Article Details2}
    sleep  2s

Article_AEM_5 Step11 Select tab Articles and input value
    sleep  2s
    Input information AEM              ${Edit Publish Date}                               June 21, 2021
    sleep    1s
    Click Element AEM                  ${Edit Featured Image Article}
    sleep    1s
    Click Element AEM                 ${Edit Featured Image Article}
    sleep    1s
    Press Keys                     ${Edit Featured Image Article}    CTRL+a+BACKSPACE
    Press Keys                     ${Edit Featured Image Article}    DELETE
    sleep    4s
    Input information AEM              ${Edit Featured Image Article}                             /content/dam/aem-images/test/en/2.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${Edit order}                                      2
    sleep    1s
    Click Element AEM                  ${Edit btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Top 10}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${Edit btn offer tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Beauty Service}
    sleep  1s
    Click Element                      ${Edit btn Select}
    sleep    1s
    Click Element AEM                  ${Edit Save&Close2}
    # Reload page
    sleep  3s
    Click Element AEM                  ${btn edit}
    sleep  2s
    Click Element AEM                 ${btn drag components here}
    sleep  3s
    Click Element AEM                 ${btn editabletoolbar}
    sleep  1s
    Click Element AEM                ${Insert New Component Text}
    sleep  1s
    Click Element AEM                ${btn New Component Text}
    sleep  1s
    Click Element AEM                 ${btn editabletoolbar text}
    sleep  1s
    Select Frame                     xpath=//iframe[@id='ContentFrame']
    Input Text                        ${input New Component Text}        Get 5% discount on participating normal price items at every Central Department Store.\\nPresent The 1 Exclusive card or registered phone number before payment.
    sleep  2s
    Unselect Frame
Article_AEM_5 Step12 Click Create
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
Article_AEM_5 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_Article_AEM_5.PNG
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
    Capture Page Screenshot          ${date_today}_Article_AEM_5_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s




Article_AEM_6 Step09 Edit value in Basic tab
    Go to             https://uatcreator.the1.co.th/editor.html/content/the1/api/th/th/articles/${date_today}_test-1aem1.html
    sleep  2s
    sleep  2s
    Click Element AEM                   ${btn Preview}
    sleep  1s
    Click Element At Coordinates        ${Btn_Page_Infomation_article_AEM}     15   20
    sleep  2s
    Click Element AEM                   ${Btn_Open_Properties}
    Input information AEM               ${Edit title}                                    ${date_today}_${Title Articles1}_AEM_1 แก้ไข

Article_AEM_6 Step10 Edit Articles tab
    Click Element AEM                  ${Edit Article Details2}
    sleep  2s

Article_AEM_6 Step11 Select tab Articles and input value
    sleep  2s
    Input information AEM              ${Edit Publish Date}                               June 21, 2021
    sleep    1s
    Click Element AEM                  ${Edit Featured Image Article}
    sleep    1s
    Click Element AEM                 ${Edit Featured Image Article}
    sleep    1s
    Press Keys                     ${Edit Featured Image Article}    CTRL+a+BACKSPACE
    Press Keys                     ${Edit Featured Image Article}    DELETE
    sleep    4s
    Input information AEM              ${Edit Featured Image Article}                             /content/dam/aem-images/test/th/2.jpg
    sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep    1s
    Input information AEM              ${Edit order}                                      2
    sleep    1s
    Click Element AEM                  ${Edit btn Article Tag}
    sleep  1s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Article}
    sleep  1s
    Click Element                      ${Tag Top 10}
    sleep  1s
    Click Element                      ${btn Select}
    sleep  1s
    Click Element AEM                  ${Edit btn offer tag}
    sleep  2s
    Click Element                      ${Tag The 1 Central}
    sleep  1s
    Click Element                      ${Tag Offer}
    sleep  1s
    Click Element                      ${Tag Category}
    sleep  1s
    Click Element                      ${Tag Beauty Service}
    sleep  1s
    Click Element                      ${Edit btn Select}
    sleep    1s
    Click Element AEM                  ${Edit Save&Close2}
    sleep    1s
    sleep    3s
    Click Element AEM                  ${btn edit}
    sleep  2s
    Click Element AEM                 ${btn drag components here}
    sleep  3s
    Click Element AEM                 ${btn editabletoolbar}
    sleep  1s
    Click Element AEM                ${Insert New Component Text}
    sleep  1s
    Click Element AEM                ${btn New Component Text}
    sleep  1s
    Click Element AEM                 ${btn editabletoolbar text}
    sleep  1s
    Select Frame                     xpath=//iframe[@id='ContentFrame']
    Input Text                        ${input New Component Text}        เทคนิคการเลือกชุดว่ายน้ำเด็กให้เหมาะสมกับวัย สวมสบาย ไร้อุปสรรคต่อการเรียนรู้\n“ว่ายน้ำ” กีฬาประเภทหนึ่งที่เด็ก ๆ ส่วนใหญ่ชื่นชอบ คุณพ่อคุณแม่บางท่านซื้อชุดว่ายน้ำให้ลูกน้อยหัดเรียนว่ายน้ำตั้งแต่เล็ก ๆ เพื่อฝึกพัฒนาการของลูกน้อยให้เติบโตแข็งแรงในทุก ๆ ส่วนของร่างกาย แต่รู้หรือไม่ว่าเด็กสามารถเริ่มเรียนว่ายน้ำได้ตั้งแต่อายุ 4 เดือน หรือมากน้อยกว่านั้นขึ้นอยู่กับความแข็งแรงของกระดูกคอ โดยมหาวิทยาลัยในประเทศออสเตรเลียได้วิจัยประเด็นดังกล่าวและมีผลสรุปว่า เด็กที่เรียนว่ายน้ำตั้งแต่เล็ก ๆ จะมีพัฒนาการที่ยั่งยืนกว่าเด็กที่ไม่มีโอกาสได้เรียน วันนี้เราจึงมาบอกเล่าถึงประโยชน์ของการเรียนว่ายน้ำของลูกน้อยตั้งแต่แบเบาะไปจนถึงวัยที่เริ่มเดินได้ และจะมาแนะนำเทคนิคการเลือกชุดว่ายน้ำเด็กที่คุณพ่อคุณแม่ควรรู้ ชุดแบบไหนอย่างไรที่จะทำให้ลูกน้อยมีพัฒนาการที่ดีและว่ายน้ำเป็นได้เร็วขึ้น
    sleep  2s
    Unselect Frame

Article_AEM_6 Step12 Click Create
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
Article_AEM_6 Step13 Click Preview and verify Articles page
    Capture Page Screenshot          ${date_today}_Article_AEM_6.PNG
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
    Capture Page Screenshot          ${date_today}_Article_AEM_6_API.PNG
    sleep  2s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  1s
    Reload Page
    sleep  3s



