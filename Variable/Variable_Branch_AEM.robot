*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variable ***
${TestResult_Branch_API}     ${EXECDIR}${/}BRANCH_API.json
${icon_Partner_Branchs_AEM}                   xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[3]/div[1]/coral-icon[1]
${folder_Partner Adobe_Branchs_AEM}           xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-content/div[1]
${card_Branchs_AEM}                           xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[2]/coral-card/coral-card-asset/img
${btn_next_card_Branchs_AEM}                  xpath=/html/body/form/div/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/button/coral-button-label
${input_title_Branchs_AEM}                    xpath=//*[@id="coral-id-19"]

${tab_Branchs_AEM}                            xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-tablist/coral-tab[2]/coral-tab-label
${input_Branch ID *_Branchs_AEM}                   xpath=//*[@id="coral-id-22"]
${input_Branch Name - TH *_Branchs_AEM}                   xpath=//*[@id="coral-id-23"]
${input_Branch Name - EN *_Branchs_AEM}                   xpath=//*[@id="coral-id-24"]
${input_Branch Address - TH_Branchs_AEM}                   xpath=//*[@id="coral-id-25"]
${input_Branch Address - EN_Branchs_AEM}                   xpath=//*[@id="coral-id-26"]
${input_District - TH_Branchs_AEM}                   xpath=//*[@id="coral-id-27"]
${input_District - EN_Branchs_AEM}                   xpath=//*[@id="coral-id-28"]
${input_Sub District - TH_Branchs_AEM}                   xpath=//*[@id="coral-id-29"]
${input_Sub District - EN_Branchs_AEM}                   xpath=//*[@id="coral-id-30"]
${input_City - EN_Branchs_AEM}                   xpath=//*[@id="coral-80"]
${click_City - EN_Branchs_AEM}                   xpath=//*[@id="coral-3"]
${input_Postal Code_Branchs_AEM}                   xpath=//*[@id="coral-id-34"]
${input_Longitude_Branchs_AEM}                   xpath=//*[@id="coral-id-35"]
${input_Latitude_Branchs_AEM}                   xpath=//*[@id="coral-id-36"]
${input_Location - EN_Branchs_AEM}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${click_Location - EN_Branchs_AEM}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]
${input_Contact Number_Branchs_AEM}                   xpath=//*[@id="coral-id-39"]
${input_URL - TH_Branchs_AEM}                   xpath=//*[@id="coral-id-40"]
${input_URL - EN_Branchs_AEM}                   xpath=//*[@id="coral-id-41"]


${btn_create_Branch_AEM}                                   xpath=/html/body/form/div/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/button[2]/coral-button-label
${btn_open_Branch_AEM}                                     xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label
${btn_Page_Infomation_Branch_AEM}                          xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn_Open_Properties_Branch_AEM}                          xpath=//*[@id="pageinfo-data"]/button[1]/coral-button-label



#Edit information
${btn_save_Branch_AEM}                                     xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]/coral-button-label[1]
${btn_Publish Page_Branch_AEM}                             xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn_Preview_Page_Branch_AEM}                             xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${link_Publish API_Branch_AEM}                             xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/a[1]
${tab_edit_tab_Branch_AEM}                                 xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${input_Free Text - TH_Branch_AEM}                         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/p[1]
${input_Free Text - EN_Branch_AEM}                         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/p[1]
${btn_Confirm_Publish_Branch_AEM}                                   xpath=/html/body/form/div/div/coral-panelstack/coral-panel/coral-panel-content/div/button/coral-button-label
${btn_Unpublish Page_Branch_AEM}                                     xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[5]
${btn_Confirm_unpublish_Branch_AEM}                                  xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label


${edit_tab_Branchs_AEM}                                xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]/coral-tab-label
${edit_input_Branch Address - TH_Branchs_AEM}          xpath=//*[@id="coral-id-11"]
${edit_input_Branch Address - EN_Branchs_AEM}          xpath=//*[@id="coral-id-12"]
${edit_input_District - TH_Branchs_AEM}                xpath=//*[@id="coral-id-13"]
${edit_input_District - EN_Branchs_AEM}                xpath=//*[@id="coral-id-14"]
${edit_input_Sub District - TH_Branchs_AEM}            xpath=//*[@id="coral-id-15"]
${edit_input_Sub District - EN_Branchs_AEM}            xpath=//*[@id="coral-id-16"]
${edit_input_City - EN_Branchs_AEM}                    xpath=//*[@id="coral-80"]
${edit_click_City - EN_Branchs_AEM}                    xpath=//*[@id="coral-3"]
${edit_input_Postal Code_Branchs_AEM}                  xpath=//*[@id="coral-id-20"]
${edit_input_Longitude_Branchs_AEM}                    xpath=//*[@id="coral-id-21"]
${edit_input_Latitude_Branchs_AEM}                     xpath=//*[@id="coral-id-22"]
${edit_input_Location - EN_Branchs_AEM}                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${edit_click_Location - EN_Branchs_AEM}                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]
${edit_input_Contact Number_Branchs_AEM}               xpath=//*[@id="coral-id-25"]
${edit_input_URL - TH_Branchs_AEM}                     xpath=//*[@id="coral-id-26"]
${edit_input_URL - EN_Branchs_AEM}                     xpath=//*[@id="coral-id-27"]





${text_Branch Description - TH}          Central @ Central World ห้างสรรพสินค้าเซ็นทรัลสาขาใหญ่ที่สุดในประเทศและภูมิภาคเอเชียตะวันออกเฉียงใต้ เปิดให้บริการเมื่อปี พ.ศ. 2532 ตั้งอยู่บนถนนราชดำริตัดกับแยกราชประสงค์ ไม่เพียงแต่พื้นที่ขนาดใหญ่เท่านั้น เซ็นทรัลเวิลด์ยังเป็น Lifestyle Experience ที่พร้อมจะมอบประสบการณ์ใหม่ๆ สำหรับการใช้ชีวิตของนักช้อป ตอบโจทย์ทั้งคนไทยและนักท่องเที่ยวที่แวะเวียนมาด้วยร้านค้าแบรนด์ดังระดับสากล ร้านอาหาร และเครื่องดื่มแบบครบครันที่สุด แก้ไข
${text_Branch Description - EN}          Central @ Central World, the largest shopping mall in the country and Southeast Asia Opened for service in 1989, located on Ratchadamri Road and Ratchaprasong Intersection. Not only a large area Central World is also a Lifestyle Experience that is ready to deliver new experiences. For the life of a shopper Meet the needs of both Thais and tourists who frequented by international famous brand shops and food and beverage outlets Edit
${text_Free Text - TH_Branch_AEM}       เวลาเปิด \n วันศุกร์ 10AM–10PM \n วันเสาร์ 10AM–10PM \n วันอาทิตย์ 10AM–10PM \n วันจันทร์ 10AM–10PM \n วันอังคาร 10AM–10PM \n วันพุธ 10AM–10PM \n วันพฤหัสบดี 10AM–10PM
${text_Free Text - EN_Branch_AEM}       Open \n Friday 10AM–10PM \n Saturday 10AM–10PM \n Sunday 10AM–10PM \n Monday 10AM–10PM \n Tuesday 10AM–10PM \n Wednesday 10AM–10PM \n Thursday 10AM–10PM