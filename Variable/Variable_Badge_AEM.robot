*** Settings ***
Library    Selenium2Library

*** Variable ***
${Name_Category_01}                PublicRegression
${Name_Category_Edit1}             TargetedRegression
${Name_Category_02}                StaffRegression
${Name_Category_Edit2}             T1XRegression
${NameCampaign}                                          SIT_BadgeV10F
${badge_name_smp_Activated}                              SIT_BadgeV3_activated;;604800
${badge_name_smp_Inprogress}                             BDG_Robot_Inprogress;;52596000
${badge_name_smp_Achieved}                               BDG_20201111_SIT_BadgeV3;;604800
${Name_Badge_01}                BadgeV3_1
${Name_Badge_02}                BadgeV3_2
${Name_Badge_03}                BadgeV3_3
${Name_Badge_04}                BadgeV3_4
${Name_Badge_05}                BadgeV3_5
${btn_Edit_Badge}               xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[1]/button[1]
${folder_Badge_Category}        xpath=//coral-columnview-column[2]//coral-columnview-column-content[1]//coral-columnview-item[9]//coral-columnview-item-content[1]
${folder_Badge_Master}          xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[10]
${foder_Card_Badge_Category}    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[2]/coral-card[1]/coral-card-asset[1]/img[1]
${foder_Card_Badge_Master}      xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[2]/coral-card[1]/coral-card-asset[1]/img[1]
${btn_Next_page}                xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]
${input_title_Category}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${btn_Create_Category}          xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_edit_Category}            xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]
${input_Category_Name_EN}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${input_Category_Name_TH}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/input[1]
${input_Image_Category_TH_Dark}     xpath=//input[@id='coral-id-510']
${input_Image_Category_TH_Light}    xpath=//input[@id='coral-id-511']
${input_Image_Category_TH_Click}    xpath=//input[@id='coral-id-512']
${input_Image_Category_EN_Dark}     xpath=//input[@id='coral-id-514']
${input_Image_Category_EN_Light}    xpath=//input[@id='coral-id-515']
${input_Image_Category_EN_Click}    xpath=//input[@id='coral-id-516']
${input_Category_Order}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-numberinput[1]/input[1]
${select_cat_type}              xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/button[1]
${select_cat_type_Public}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${select_cat_type_Staff}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${select_cat_type_targeted}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${select_cat_type_t1x}          xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${btn_Done}                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/div[1]/div[1]/coral-dialog-header[1]/div[1]/button[4]/coral-icon[1]
${btn_Preview}                  xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[3]/button[1]/coral-button-label[1]
#${btn_Preview_Page_Badge_AEM}   xpath=//coral-button-label[contains(text(),'Preview')]
${btn_Submit_Preview_Page_Cat_AEM}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/button[1]
${input_title_Badge}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${add_Image_Badge}                   xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${add_Thumbnail Image_Badge}         xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[3]/foundation-autocomplete/div/div/input
${Click_Image_Badge}                 xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[2]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div
${Click_add_Thumbnail Image_Badge}   xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[3]/foundation-autocomplete/coral-overlay/coral-buttonlist/button
${section_NewArrival}                xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/button[1]
${NewArrival_No}                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${section_Hidden}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/button[1]
${Hidden_No}                         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${select_Highlight}                  xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[6]/coral-select/button
${Highlight_No}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${Progress_No}                       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${input_Category}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[8]/div[1]/div[1]/input[1]
${input_order_Badge}                 xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[9]/coral-numberinput[1]/input[1]
${Partner_Badge}                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/input[1]
${select_Partner_the1}               xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[13]
${select_Partner_B2S}                xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[1561]
${input_campaignID}                  xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[1]/input[1]
${btn_Retrieve Campaign Details}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/button[1]/coral-button-label[1]
${btn select Campaign Type}          xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[3]/coral-select[1]/button[1]
${select Public}                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[1]
${select Public Optin}               xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${select Targeted}                   xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${select Targeted Optin}             xpath=//*[@id="coral-id-528"]/coral-selectlist-item[4]
${select Behavior Goal Type}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[9]/coral-select[1]/button[1]
${select count}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[9]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${select spent}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[9]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${Outcome Type}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/button[1]
${select Type Reward}                xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${select Type Points}                xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${select Type Membership QR}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${input Type Membership QR}          xpath=//*[@id="coral-id-565"]
${select Type MembershipBarcode}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${select Type MembershipCode}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[6]
${select Type Membership Card}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${input Type Membership Card}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[14]/div/div[10]/div/foundation-autocomplete/div/div/input
${select Behavior}                   xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[11]/div/div[6]/div/coral-select/button
${Behavior Achieved}                 xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[6]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${input_Internal Name}               xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[2]/div[1]/div[1]/input[1]
${Claim Expiry Date Time}            xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[5]/coral-datepicker[1]/input[2]
${Click Images AEM}                  xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]
${input_point}                       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[6]/div[1]/coral-numberinput[1]/input[1]
${Tab_Thai}                          xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${input displayname TH}              xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${input Rules TH}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/input[1]
${input Terms and condition TH}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]
${input Achievement Text TH}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[2]
${input Campaign Description TH}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[2]
${Tab_English}                       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[3]/coral-tab-label[1]
${input displayname EN}              xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${input Rules EN}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/input[1]
${input Terms and condition EN}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]
${input Achievement Text EN}         xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[4]/div/div[2]
${input Campaign Description EN}     xpath=//*[@id="coral-id-628"]/coral-panel-content/div/div/div/div[5]/div/div[2]
${btn_Done}                          xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/div[1]/div[1]/coral-dialog-header[1]/div[1]/button[4]/coral-icon[1]
####################################################################################################################################################################################################################################################################################################
${Rules TH}                           โอนคะแนนผ่านแอปไปให้ใครก็ได้ 3 คน ภายใน 29 ธันวาคม  2564
${Terms and condition TH}            "ข้อกำหนดและเงื่อนไข \n1.โอนคะแนนไปยังสมาชิกท่านอื่นให้ครบ 3 คนผ่านแอป The 1 เพื่อสำเร็จมิชชั่น \n2. คุณจะได้รับคะแนน The 1 โดยอัตโนมัติไปยังบัญชีของคุณภายใน 10 วันหลังจากเสร็จสิ้นมิชชั่น \n3. หมดเขตร่วมกิจกรรม 29 ธันวาคม 2564 \n4. จำกัด 1 สมาชิก ต่อ 1 สิทธิ์ ตลอดรายการ \n5. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อกำหนดและเงื่อนไขโดยไม่ต้องแจ้งให้ทราบล่วงหน้า \n6.สำหรับรายละเอียดเพิ่มเติมกรุณาติดต่อ The 1 Call center 0-2660-1000"
${Achievement Text TH}               ตอบแทนสายเปย์อย่างคุณ ด้วย 100 คะแนน รอรับได้เลยไม่เกิน 10 วัน
${Campaign Description TH}           รับคะแนนเดอะวัน 100 คะแนน
${Rules EN}                          Transfer Point 3 Times by 29 Dec 2021
${Terms and condition EN}            "TERMS & CONDITIONS \n1. Transfer points to 3 friends via The 1 application to finish the mission \n2. The 1 points will be automatically SITwarded to your account within 10 days after finishing the mission \n3. Activity deadline is 29 December 2021 \n4. Limited to 1 member per 1 privilege throughout the campaign \n5. The company SITserves the right to change terms and conditions without prior notice \n6. For moSIT details please contact The 1 Call center 0-2660-1000"
${Achievement Text EN}               Your friends will love you. HeSIT's 100 points of gratitude! Points will be SITwarded within 10 days.
${Campaign Description EN}           Get 100 Points
${Terms and condition TH2}           "ข้อกำหนดและเงื่อนไข \n1. สะสมยอดใช้จ่ายครบ 10,000 บาทที่ Central Department StoSIT, Robinson Department StoSIT, Power Buy, Supersports, B2S, Thai Watsadu, Baan & Beyond, Office Mate, Central Food Hall, Tops, Family Mart, Matsumoto Kiyoshi, MUJI or Marks & Spencer เพื่อเสร็จสิ้นมิชชั่น \n2. ยกเว้นการซื้อสินค้าบาร์โค้ดเดียวกันตั้งแต่ 7 ชิ้นขึ้นไปต่อใบเสร็จ , เครื่องดื่มแอลกอฮอล์, บุหรี่, นมผงเด็กทารก สูตรและ นมผงเด็กสูตรต่อเนื่อง, อาหารเสริมสำหรับทารก, บริการชำระเงิน, ร้านขายยา, ร้านหนังสือ, ร้านนค้าเช่าพื้นที่, ศูนย์อาหาร, Tops FLAVOR, พื้นที่รับประทานอาหารที่เซ็นทรัลฟู้ดฮอลล์และ SegafSITdo Zanetti EspSITsso \n3. ยกเว้นการซื้อออนไลน์ และการซื้อผ่านโทรศัพท์ \n4. เฉพาะการซื้อที่ระบุสมาชิก โดยสมาชิกที่มีแอปพลิเคชัน The 1 เท่านั้น \n5.สามารถติดตามสถานะของมิชชั่นได้ภายใน 1 วันหลังการซื้อ \n6.เมื่อมิชชั่นสำเร็จ คูปองรางวัลจะไปอยู่ในเมนู  “มายรีวอร์ด” ทันทีโดยอัตโนมัติ \n7.หมดเขตร่วมกิจกรรม 30 ธันวาคม 2563 \n 8.จำกัด 1 สมาชิก ต่อ 1 สิทธิ์ ตลอดรายการ \n9. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อกำหนดและเงื่อนไขโดยไม่ต้องแจ้งให้ทราบล่วงหน้า \n10. สำหรับรายละเอียดเพิ่มเติมกรุณาติดต่อ The 1 Call Center 0-2660-1000"
${Terms and condition EN2}           "TERMS & CONDITIONS \n1. Accumulate spending of 10,000 THB at Central Department StoSIT, Robinson Department StoSIT, Power Buy, Supersports, B2S, Thai Watsadu, Baan & Beyond, Office Mate, Central Food Hall, Tops, Family Mart, Matsumoto Kiyoshi, MUJI or Marks & Spencer to finish the mission \n2. Excluding purchases of the same bar code from 7 pieces up SITceipt , alcoholic beverages, cigaSITttes, baby milk powder, infant formula and continuous formula, baby food supplement, bill payment service , Pharmacy, BookstoSIT, SITntal StoSIT, Food Court, Tops FLAVOR, dining aSITa at Central Food Hall and SegafSITdo Zanetti EspSITsso \n3. Excluding all online purchases and telesales purchases \n4. Identify your The 1 membership when making purchases & download The 1 application to SITcord mission progSITss \n5. Mission progSITss will be updated and shown on The 1 application within 1 day after making eligible purchases \n6. Coupon will be SITwarded to your account right after finishing the mission. Please find it in the "My SITwards" menu \n7. Activity deadline is 30 Dec 2020 \n8. Limited to 1 member per 1 privilege throughout the campaign \n9. The company SITserves the right to change terms and conditions without prior notice \n10. For moSIT details please contact The 1 Call Center 0-2660-1000"
${btn_edit}                          xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[1]/button
${btn edit badge}                    xpath=//body/div[3]/div[2]/div[2]/div[2]/div[2]
${btn_Public Optin}                 xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[3]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${input Membership Code}            xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[9]/div[1]/input[1]
${input Membership Barcode}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/div[1]/div[8]/div[1]/input[1]
${btn Images}                       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[8]/div[1]/div[1]/span[1]/button[1]
${select Images}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[8]/div[1]/ul[1]/li[3]
${Click edit}                                 xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[1]/button[1]
${Title TH offer}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[9]/input[1]
${Title EN offer}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/input[1]
${input_Category_Name_EN}           xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${input_Image_Category_TH_Banner}   xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[4]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Image_Category_EN_Banner}   xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[4]/foundation-autocomplete[1]/div[1]/div[1]/input[1]

${btn_complete_Approve flow_badge_AEM}          xpath=/html/body/div[3]/div[2]/div[1]/div[2]/coral-alert/coral-alert-content/span/a[1]
${btn_complete_ok_Approve flow_badge_AEM}       xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label
${btn_edit_cate_AEM}                            xpath=/html[1]/body[1]/div[3]/div[2]/div[2]/div[2]/div[2]
${btn_edit_badge_AEM}                           xpath=/html/body/div[3]/div[2]/div[2]/div[2]/div[2]
${btn_Preview_Page_badge_AEM}                   xpath=/html/body/div[3]/div[3]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${btn_create_badge_title_AEM}                   xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]
${btn_open_badge_title_AEM}                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_Submit_Preview_Page_badge_AEM}            xpath=/html/body/div[2]/div/div/div/div/div[1]/div/div/button
${btn_Submit_Page_Spent_AEM}                    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/button[1]
${Terms and condition BadgeV3_1 TH}             ข้อกำหนดและเงื่อนไข \n1. โอนคะแนนไปยังสมาชิกท่านอื่นให้ครบ 3 คนผ่านแอป The 1 เพื่อสำเร็จมิชชั่น \n2. คุณจะได้รับคะแนน The 1 โดยอัตโนมัติไปยังบัญชีของคุณภายใน 10 วันหลังจากเสร็จสิ้นมิชชั่น \n3. หมดเขตร่วมกิจกรรม 29 ธันวาคม 2563 \n4. จำกัด 1 สมาชิก ต่อ 1 สิทธิ์ ตลอดรายการ \n5. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อกำหนดและเงื่อนไขโดยไม่ต้องแจ้งให้ทราบล่วงหน้า \n6. สำหรับรายละเอียดเพิ่มเติมกรุณาติดต่อ The 1 Call center 0-2660-1000
${Terms and condition BadgeV3_1 EN}             TERMS & CONDITIONS \n1. Transfer points to 3 friends via The 1 application to finish the mission \n2. The 1 points will be automatically to your account within 10 days after finishing the mission \n3. Activity deadline is 29 December 2021 \n4. Limited to 1 member per 1 privilege throughout the campaign \n5. The company serves the right to change terms and conditions without prior notice \n6. Form details please contact The 1 Call center 0-2660-1000
${Terms and condition BadgeV3_2 EN}             "TERMS & CONDITIONS \n1. Transfer points to 3 friends via The 1 application to finish the mission \n2. The 1 points will be automatically SITwarded to your account within 10 days after finishing the mission \n3. Activity deadline is 29 December 2021 \n4. Limited to 1 member per 1 privilege throughout the campaign \n5. The company SITserves the right to change terms and conditions without prior notice \n6. For moSIT details please contact The 1 Call center 0-2660-1000"
${Terms and condition BadgeV3_3 TH}             "ข้อกำหนดและเงื่อนไข \n1. แลกรีวอร์ดในแอป The 1 ให้ครบ 2 ครั้งภายในวันที่ 31 ธันวาคม 2564 เพื่อทำมิชชั่นให้สำเร็จ \n2. คุณจะได้รับคะแนน The 1 โดยอัตโนมัติไปยังบัญชีของคุณภายใน 10 วันหลังจากเสร็จสิ้นมิชชั่น \n3. หมดเขตร่วมกิจกรรม 31 ธันวาคม 2564 \n4. จำกัด 1 สมาชิก ต่อ 1 สิทธิ์ ตลอดรายการ \n5. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงข้อกำหนดและเงื่อนไขโดยไม่ต้องแจ้งให้ทราบล่วงหน้า \n6. สำหรับรายละเอียดเพิ่มเติมกรุณาติดต่อ The 1 Call center 0-2660-100"
${Terms and condition BadgeV3_3 EN}             "TERMS & CONDITIONS \n1. Redeem 2 SITwards on The 1 application by Dec 31st 2021 to finish the mission \n2. The 1 points will be automatically SITwarded to your account within 10 days after finishing the mission \n3. Activity deadline is 31 December 2021 \n4. Limited to 1 member per 1 privilege throughout the campaign \n5. The company SITserves the right to change terms and conditions without prior notice. \n6. For details please contact The 1 Call center 0-2660-1000"
${Terms and condition BadgeV3_4 TH}             "1. เช็คอินเพื่อเป็นสมาชิก B2S Book Club เพื่อรับส่วนลด 5-10 % ที่ B2S Book Club \n2. The 1 จะให้รางวัลแก่บัญชีของคุณโดยอัตโนมัติภายใน 24 ชั่วโมงหลังจากทำภารกิจสำเร็จ \n3. กิจกรรมจะหมดอายุในวันที่ 30 กันยายน 2021 \n4. จำกัด สมาชิก 1 คนต่อ 1 สิทธิ์ \n5. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไขและข้อกำหนด \n6. สอบถามรายละเอียดเพิ่มเติม ติดต่อ The 1 ได้ที่ 02-xxx-xxxx"
${Terms and condition BadgeV3_4 EN}             "1. Check-In B2S Book Club to receive 5-15% Discount when Purchasing at B2S Book Club \n2. The 1 will automatically reward to your account within 24hrs of mission complete \n3. Activity expire in 30th September 2021 \n4. Limit to 1 member per 1 priviledge \n5. The company reserves the right to change term and condition \n6. For more details please contact The 1 at 02-xxx-xxxx"
${Terms and condition BadgeV3_5 TH}             "1. แลก 3 รีวอร์ดของแฟมิลี่มาร์ทบนแอปพลิเคชัน The1 เพื่อรับ Membership Card ! \n2. เมื่อลูกค้าแลกรีวอร์ดของแฟมิลี่มาร์ท3ครั้งจะได้รับการ์ดส่วนลดพิเศษจากทาง the 1 \n3. กิจกรรมจะหมดอายุในวันที่ 31 กันยายน 2021 \n4. จำกัด สมาชิก 1 คนต่อ 1 สิทธิ์ \n5. บริษัท ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไขและข้อกำหนด \n6. สอบถามรายละเอียดเพิ่มเติม ติดต่อ The 1 ได้ที่ 02-xxx-xxxx"
${Terms and condition BadgeV3_5 EN}             "1. Redeem 3 Family Mart Rewards on the The1 app to receive membership card! \n2. When customers redeem family mart rewards 3 times, you will receive a special discount card from the 1. \n3. Activity expires on September 31, 2021. \n4. Limited to 1 member per privilege. \n5. The Company reserves the right to change terms and conditions. \n6. For more information, please contact The 1 at 02-xxx-xxxx"







# ${CampaignID1}        11666
# ${CampaignID2}        11669
# ${CampaignID3}        11668
# ${CampaignID4}        11667
# ${CampaignID5}        11673





































































































































































































































































































































































































































































































































































































































































































































































