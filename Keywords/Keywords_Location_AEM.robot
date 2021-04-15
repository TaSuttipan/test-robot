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
Resource    ../Variable/Variable_Location_AEM.robot
Resource    ../Variable/Variable_Login_SMP.robot
Resource    ../Variable/Variable_Offer_SMP.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Keywords/Keywords_Location_AEM.robot



*** Keywords ***
Check if Questionnaire Location AEM
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM           ${icon_The1_Central_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM          ${icon_Locations_AEM}
    sleep  3s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${Popup_iframe_Adobe}
    Run Keyword if     '${present}'=='True'     Questionnaire
    Click Element Wait AEM         ${folder_Locations_Locations_AEM}
    sleep  3s

#AEM_Location_01 Create Location Page 'Regression Central World' for check create location page
AEM_Location_01_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/locations
    sleep  2s
AEM_Location_01_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Locations_AEM}
    Click Element Wait AEM           ${btn_next_card_Locations_AEM}
AEM_Location_01_Step05 Input value in Basic tab
    Input information AEM        ${input_title_Locations_AEM}         ${date_today}_Regression Central World
    sleep  1s
AEM_Location_01_Step06 Input Location Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Locations_AEM}
    sleep  3s
    Input information AEM         ${input_Location Name - TH *_Locations_AEM}     เซ็นทรัลเวิลด์
    Input information AEM         ${input_Location Name - EN *_Locations_AEM}     Regression Central World
    Input information AEM         ${input_Feature Image_Locations_AEM}                       /content/dam/the1/aem-images/Centrap_World.png
    sleep  1s
    Click Element Wait AEM        ${click_Feature Image_Locations_AEM}
    sleep  1s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  1s
    Input information AEM         ${Add_Banner 1_Image_Locations_AEM}                                      /content/dam/the1/aem-images/Banner_Centrap_World.png
    sleep  1s
    Click Element Wait AEM        ${click_Banner _Image_Locations_AEM}
    sleep  1s
    Input information AEM         ${input_Header Title - TH_Locations_AEM}             เซ็นทรัลเวิลด์
    Input information AEM         ${input_Header Title - EN_Locations_AEM}             Regression Central World
    Input information AEM         ${input_Location Description - TH_Locations_AEM}     ${text_Location Description - TH}
    Input information AEM         ${input_Location Description - EN_Locations_AEM}     ${text_Location Description - EN}
    Input information AEM         ${input_Location Address - TH_Locations_AEM}         999/9 ถนนพระราม 1, แขวงปทุมวัน, เขตปทุมวัน, กรุงเทพมหานคร,10330
    Input information AEM         ${input_Location Address - EN_Locations_AEM}         999/9 Rama I Rd, Pathum Wan, Pathum Wan District, Bangkok 10330
    Input information AEM         ${input_District - TH_Locations_AEM}                 ปทุมวัน
    Input information AEM         ${input_District - EN_Locations_AEM}                 Pathum Wan
    Input information AEM         ${input_Sub District - TH_Locations_AEM}             ปทุมวัน
    Input information AEM         ${input_Sub District - EN_Locations_AEM}             Pathum Wan
    Input information AEM         ${input_City - EN_Locations_AEM}                     Bangkok
    sleep  1s
    Click Element Wait AEM        ${click_City - EN_Locations_AEM}
    sleep  1s
    Input information AEM         ${input_Postal Code_Locations_AEM}                   10330
    Input information AEM         ${input_Longitude_Locations_AEM}                     13.746786
    sleep  1s
    Input information AEM         ${input_Latitude_Locations_AEM}                      89.539333
    Input information AEM         ${input_Contact Number_Locations_AEM}                02 640 7000
    Input information AEM         ${input_URL - TH_Locations_AEM}                      https://www.centralworld.co.th/
    Input information AEM         ${input_URL - EN_Locations_AEM}                      https://www.centralworld.co.th/
    sleep  3s
AEM_Location_01_Step07 Click Create
    Click Element Wait AEM        ${btn_create_Locations_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_open_Locations_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Location_01_Step08 Click Open and verify Location
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Location_01_Step09 Click Page Information > Publish Page on Location page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
    Input information AEM         ${input_Free Text - TH_Locations_AEM}                   ${text_Free Text - TH_Locations_AEM}
    Input information AEM         ${input_Free Text - EN_Locations_AEM}                   ${text_Free Text - EN_Locations_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_save_Locations_AEM}
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Locations_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_Publish_Locations_AEM}
    Run Keyword if     '${present}'=='True'     Publish Button AEM Location
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Locations_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_01.PNG
    sleep  1s
AEM_Location_01_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Locations_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Locations_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_API_01.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




#AEM_Location_02 Create Location Page 'Location Test' not input all information on condition field for check create location page
AEM_Location_02_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/locations
    sleep  1s
AEM_Location_02_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Locations_AEM}
    Click Element Wait AEM           ${btn_next_card_Locations_AEM}
AEM_Location_02_Step05 Input value in Basic tab
    Input information AEM        ${input_title_Locations_AEM}         ${date_today}_Location Test
    sleep  1s
AEM_Location_02_Step06 Input Location Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Locations_AEM}
    sleep  3s
    Input information AEM         ${input_Location Name - TH *_Locations_AEM}     Location Test
    Input information AEM         ${input_Location Name - EN *_Locations_AEM}     Location Test
    sleep  3s
AEM_Location_02_Step07 Click Create
    Click Element Wait AEM        ${btn_create_Locations_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_open_Locations_AEM}
    sleep  5s
    Switch Window     title=STAGE | AEM Editor
AEM_Location_02_Step08 Click Open and verify Location
    sleep  3s
    Switch Window     title=STAGE | AEM Sites
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  5s
AEM_Location_02_Step09 Click Page Information > Publish Page on Location page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_save_Locations_AEM}
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Locations_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_Publish_Locations_AEM}
    Run Keyword if     '${present}'=='True'     Publish Button AEM Location
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Locations_AEM}
    sleep  3s
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_02.PNG
    sleep  1s
AEM_Location_02_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Locations_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Locations_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_API_02.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s



#AEM_Location_03 Create Location Page 'Location Test 1' for check not input mandatory field Not input Location Name for check can't create location page
AEM_Location_03_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/locations
    sleep  1s
AEM_Location_03_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Locations_AEM}
    Click Element Wait AEM           ${btn_next_card_Locations_AEM}
AEM_Location_03_Step05 Input value in Basic tab
    sleep  1s
AEM_Location_03_Step06 Input Location Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM           ${tab_Locations_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_03.PNG





#AEM_Location_04 Create Location Page 'Location Test 2' for check logic add image 6 images for check can't create location page
AEM_Location_04_Step03 Click Create > Click Page
    Go To           https://uatcreator.the1.co.th/mnt/overlay/wcm/core/content/sites/createpagewizard.html/content/the1/locations
    sleep  1s
AEM_Location_04_Step04 Select Location API Page
    Click Element Wait AEM           ${card_Locations_AEM}
    Click Element Wait AEM           ${btn_next_card_Locations_AEM}
AEM_Location_04_Step05 Input value in Basic tab
    Input information AEM        ${input_title_Locations_AEM}         ${date_today}_Location Test 2
    sleep  1s
AEM_Location_04_Step06 Input Location Details (refer Information by Data Test)
    sleep  3s
    Click Element Wait AEM        ${tab_Locations_AEM}
    sleep  3s
    Input information AEM         ${input_Location Name - TH *_Locations_AEM}     ทดสอบโลเคชั่น 2
    Input information AEM         ${input_Location Name - EN *_Locations_AEM}     Location Test 2
    sleep  3s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM        ${btn_Add_Locations_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_04.PNG
    sleep  3s
    Click Element Wait AEM         ${btn_X mark Image 5}
    sleep  1s


#AEM_Location_05 Central World of Location for check logic edit Location ID for check can't create location page
AEM_Location_05_Step04 Click Pic of Location "Name XXXXX"
    sleep  1s
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/locations/central-world.html
    sleep  3s
AEM_Location_05_Step05 Click Properties menu
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
AEM_Location_05_Step06 Edit value in Basic tab
    Capture Page Screenshot          ${date_today}_AEM_Location_05.PNG



#AEM_Location_06 Central World of Location edit information,add text "edit" all text field and edit Location city,change city to Songkla for check edit location page
AEM_Location_06_Step09 Click Page Information > Unpublish Page
    sleep  3s
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/locations/${date_today}_regression-central-world.html
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Locations_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Locations_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
AEM_Location_06_Step09 Click Edit Information
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
    Input information AEM         ${edit_input_Location Name - TH *_Locations_AEM}     แก้ไข เซ็นทรัลเวิลด์
    Input information AEM         ${edit_input_Location Name - EN *_Locations_AEM}     edit Regression Central World
    sleep  1s
    Input information AEM         ${edit_input_Header Title - TH_Locations_AEM}             แก้ไข เซ็นทรัลเวิลด์
    Input information AEM         ${edit_input_Header Title - EN_Locations_AEM}             edit Regression Central World
    Input information AEM         ${edit_input_Location Description - TH_Locations_AEM}     แก้ไข ${text_Location Description - TH}
    Input information AEM         ${edit_input_Location Description - EN_Locations_AEM}     edit ${text_Location Description - EN}
    Input information AEM         ${edit_input_Location Address - TH_Locations_AEM}         แก้ไข 999/9 ถนนพระราม 1, แขวงปทุมวัน, เขตปทุมวัน, กรุงเทพมหานคร,10330
    Input information AEM         ${edit_input_Location Address - EN_Locations_AEM}         edit 999/9 Rama I Rd, Pathum Wan, Pathum Wan District, Bangkok 10330
    Input information AEM         ${edit_input_District - TH_Locations_AEM}                 แก้ไข ปทุมวัน
    Input information AEM         ${edit_input_District - EN_Locations_AEM}                 edit Pathum Wa
    Input information AEM         ${edit_input_Sub District - TH_Locations_AEM}             แก้ไข ปทุมวัน
    Input information AEM         ${edit_input_Sub District - EN_Locations_AEM}             edit Pathum Wa
    Input information AEM         ${edit_input_City - EN_Locations_AEM}                     Songkhla
    sleep  1s
    Click Element Wait AEM        ${edit_click_City - EN_Locations_AEM}
    sleep  1s
    Input information AEM         ${edit_input_Postal Code_Locations_AEM}                   edit 10330
    Input information AEM         ${edit_input_Longitude_Locations_AEM}                     14.746786
    Input information AEM         ${edit_input_Latitude_Locations_AEM}                      88.539333
    Input information AEM         ${edit_input_Contact Number_Locations_AEM}                edit 02 640 7000
    Input information AEM         ${edit_input_URL - TH_Locations_AEM}                      แก้ไข https://www.centralworld.co.th/
    Input information AEM         ${edit_input_URL - EN_Locations_AEM}                      edit https://www.centralworld.co.th/
    sleep  3s
    Input information AEM         ${input_Free Text - TH_Locations_AEM}                   แก้ไข ${text_Free Text - TH_Locations_AEM}
    Input information AEM         ${input_Free Text - EN_Locations_AEM}                   edit ${text_Free Text - EN_Locations_AEM}
    sleep  3s
    Click Element Wait AEM        ${btn_save_Locations_AEM}
    sleep  3s
AEM_Location_06_Step09 Publish Page on Location page
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Locations_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_Publish_Locations_AEM}
    Run Keyword if     '${present}'=='True'     Publish Button AEM Location
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Locations_AEM}
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_06.PNG
    sleep  1s
AEM_Location_06_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Locations_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Locations_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot          ${date_today}_AEM_Location_06_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s



#AEM_Location_07 Central World of Location edit feature image,change image for check edit location page
AEM_Location_07_Step09 Click Page Information > Unpublish Page
    sleep  3s
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/locations/${date_today}_regression-central-world.html
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Locations_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Locations_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
AEM_Location_07_Step09 Edit Information
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
    Press Keys     ${edit_input_Feature Image_Locations_AEM}      CTRL+a+BACKSPACE
    Press Keys     ${edit_input_Feature Image_Locations_AEM}      DELETE
    sleep  1s
    Input information AEM         ${edit_input_Feature Image_Locations_AEM}                       /content/dam/the1/aem-images/test/en/1.jpg
    sleep  1s
    Click Element Wait AEM        ${edit_click_Feature Image_Locations_AEM}
    sleep  3s
    Click Element Wait AEM              ${btn_save_Locations_AEM}
AEM_Location_07_Step09 Publish Page on Location page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Locations_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_Publish_Locations_AEM}
    Run Keyword if     '${present}'=='True'     Publish Button AEM Location
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Locations_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Location_07.PNG
    sleep  1s
AEM_Location_07_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Locations_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Locations_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Location_07_API.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s


#AEM_Location_08 Central World of Location edit Banner image,add and move image for check edit location page
AEM_Location_08_Step09 Click Page Information > Unpublish Page
    sleep  3s
    Go To           https://uatcreator.the1.co.th/editor.html/content/the1/locations/${date_today}_regression-central-world.html
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM              ${btn_Unpublish Page_Locations_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_Confirm_unpublish_Locations_AEM}
    sleep  5s
    Reload Page
    sleep  5s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM     ${btn_Open_Properties_Locations_AEM}
    sleep  3s
AEM_Location_08_Step09 Edit Information
    Click Element Wait AEM           ${tab_edit_tab_Locations_AEM}
    sleep  3s
    Click Element Wait AEM     ${Remove_Banner 1_Image_Locations_AEM}
    sleep  1s
    Click Element Wait AEM     ${btn_edit_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM     ${btn_edit_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM     ${btn_edit_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM     ${btn_edit_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM     ${btn_edit_Add_Locations_AEM}
    sleep  1s
    Click Element Wait AEM              ${btn_X mark Image 5}
    sleep  3s
    Input information AEM         ${edit_Add_Banner 1_Image_Locations_AEM}                       /content/dam/the1/aem-images/test/th/1.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM         ${edit_Add_Banner 2_Image_Locations_AEM}                       /content/dam/the1/aem-images/test/th/2.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM         ${edit_Add_Banner 3_Image_Locations_AEM}                       /content/dam/the1/aem-images/test/th/3.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM         ${edit_Add_Banner 4_Image_Locations_AEM}                       /content/dam/the1/aem-images/test/th/4.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  1s
    Input information AEM         ${edit_Add_Banner 5_Image_Locations_AEM}                       /content/dam/the1/aem-images/test/th/5.jpg
    sleep  1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    RETURN
    sleep  3s
    Click Element Wait AEM        ${btn_edit_save_Locations_AEM}
    sleep  3s
AEM_Location_08_Step09 Publish Page on Location page
    sleep  3s
    Wait Until Page Contains Element    ${btn_Page_Infomation_Locations_AEM}
    Click Element At Coordinates        ${btn_Page_Infomation_Locations_AEM}     15   20
    sleep  1s
    Click Element Wait AEM           ${btn_Publish Page_Locations_AEM}
    sleep  1s
    ${present}=    Run Keyword And Return Status    Wait Until Page Contains Element      ${btn_Publish_Locations_AEM}
    Run Keyword if     '${present}'=='True'     Publish Button AEM Location
    sleep  1s
    Click Element Wait AEM                             ${btn_Preview_Page_Locations_AEM}
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Location_08.PNG
    sleep  1s
AEM_Location_08_Step10 Click Preview and verify Publish API on Location page
    Select Frame    xpath=//iframe[@id='ContentFrame']

#Get API by Postman
    ${url_json}       Get Text       ${link_Publish API_Locations_AEM}
    Set Global Variable           ${url_json}
    Append To File      ${TestResult_Location_API}     ${url_json}\n
    ${header} =    Create Dictionary       Content-Type=application/json      type=json
    Create Session     Get API     ${url_json}
    ${resp}=    Get Request      Get API   uri=     headers=${header}
    Append To File      ${TestResult_Location_API}        ${resp.text}\n

    Click Element Wait AEM           ${link_Publish API_Locations_AEM}
    sleep  1s
    Switch Window   New
    sleep  3s
    Capture Page Screenshot           ${date_today}_AEM_Location_08.PNG
    sleep  3s
    Close window
    sleep  3s
    Switch Window     title=STAGE | AEM Editor
    sleep  3s
    Reload Page
    sleep  5s




