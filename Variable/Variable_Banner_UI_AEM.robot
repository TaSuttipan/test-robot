*** Settings ***
Library    SeleniumLibrary


*** Variable ***
${Link URL EN}     https://uat.the1.co.th/rewards/faf07439-1105-4de8-a9ed-627b458111e0Edit
${Link URL TH}     https://uat.the1.co.th/rewards/faf07439-1105-4de8-a9ed-627b458111e0แก้ไข
${TestResult_Banner_API}       ${EXECDIR}${/}Banner_API.json


#CardCarousel List API Page
${Card create system}                                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[1]/coral-card[1]/coral-card-asset[1]/img[1]
${input title carousel}                                xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${btn_create_Carousel List API Page}                   xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]
${icon_Banner_AEM_Prod}                                xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-menu[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[10]/div[1]
${Click_Publish_Carousel_Banner_AEM}                   xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]
${btn_Open_Properties_Banner_AEM}                      xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/coral-actionbar-item[3]/coral-popover[1]/div[3]/coral-popover-content[1]/div[1]/button[1]
${btn_Unpublish Page_Banner_AEM}                       xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/coral-actionbar-item[3]/coral-popover[1]/div[3]/coral-popover-content[1]/div[1]/button[5]
${btn_Confirm_unpublish_Banner_AEM}                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]



#AT_Banner_Listing_Page
${icon_Partner_AEM}                    xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[3]/div[1]/coral-icon[1]
${icon_Banner_AEM}                     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[10]/div[1]/coral-icon[1]
${folder_Banner_AEM}                   xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[2]/coral-columnview-column-content/coral-columnview-item[14]/coral-columnview-item-content/div[1]
${card_AT_Banner_List_AEM}             xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[2]/coral-card/coral-card-asset/img
${btn_next_card_AT_Banner_AEM}         xpath=/html/body/form/div/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/button/coral-button-label
${input_title_AT_Banner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${tab_AT Banner Setting_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${input_Number of Banner_Banner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-numberinput[1]/input[1]
${btn_create_AT Banner List_Banner_AEM}        xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_open_AT_Banner_AEM}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_TH_Preview_AT_Banner_AEM}
${btn_EN_Preview_AT_Banner_AEM}                 xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/button[2]
${btn_Page_Infomation_Banner_AEM}               xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn_Publish Page_Banner_AEM}                  xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn_Preview_Page_Banner_AEM}                  xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${link_Publish API_Banner_AEM}                  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/a[1]


${btn_Open_Properties_Banner_AEM}                          xpath=//*[@id="pageinfo-data"]/button[1]/coral-button-label
${btn_save_Partner_AEM}                                     xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]/coral-button-label[1]
${btn_Preview_Page_Partner_AEM}                  xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${link_Publish API_Partner_AEM}                  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/a[1]
${btn_Confirm_Publish_Partner_AEM}                                    xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${btn_Unpublish Page_Partner_AEM}                                     xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[5]
${btn_Confirm_unpublish_Partner_AEM}                                  xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label
${tab_edit_tab_Partner_AEM}                                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${btn_save&close_listing_AEM}                        xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]


${link_Publish API_Banner_AEM}           xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]



#Offer_Banner_Page
${card_AT_Offer_Banner_Page_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[2]/coral-card[1]/coral-card-asset[1]/img[1]
${btn_next_card_Offer_Banner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${input_title_Offer_Banner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${tab_Offer Setting_AEM}                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${selected_Search_Root Offer ID_Offer_Banner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-radio[2]/input[1]
${input_Title_Name_Offer_Banner_AEM}                        xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${input_Root Offer ID_Offer_Banner_AEM}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/input[1]
${btn_create_Offer_Banner_AEM}                              xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
#${btn_Save&close_Offer_Banner_AEM}                          xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_open_AT_Offer_Banner_AEM}                             xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_Page_Infomation_Offer_Banner_AEM}                     xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn_Publish Page_Offer_Banner_AEM}                        xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn_Preview_Page_Offer_Banner_AEM}                        xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${btn_Preview_Offer_Banner_AEM}                             xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${Click_Publish_Offer_Banner_AEM}                           xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${input_StartDate}                               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[7]/coral-datepicker[1]/input[2]
${input_EndDate}                                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[8]/coral-datepicker[1]/input[2]
${Banner_image_en}                               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Banner_image_th}                               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input title en}                                xpath=//input[@id='coral-id-12']
${input title th}                                xpath=//input[@id='coral-id-13']
${input short description en}                    xpath=//textarea[@id='coral-id-14']
${input short description th}                    xpath=//textarea[@id='coral-id-15']
${input link URL en}                             xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[2]/div/div[9]/input
${input link URL th}                             xpath=//*[@id="coral-id-37"]
${Tab_offer_setting_aem}                         xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]
${Edit input input_StartDate}                    xpath=//input[@id='coral-id-24']
${Edit input input_EndDate}                      xpath=//input[@id='coral-id-34']
${btn_Save&close_Offer_Banner_AEM}               xpath=//*[@id="shell-propertiespage-doneactivator"]
${Input offer Banner Image - EN}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Input offer Banner Image - TH}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Input Title offer banner EN}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[3]/input[1]
${Input Title offer banner TH}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[4]/input[1]
${Input Short Description - EN}                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[5]/textarea[1]
${Input Short Description - TH}                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[6]/textarea[1]
${input Start Date offer Banner}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[7]/coral-datepicker[1]/input[2]
${input End Date offer Banner}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[8]/coral-datepicker[1]/input[2]
${input URL offer banner EN}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[9]/input[1]
${input URL offer banner TH}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/div[10]/input[1]












#Link_Banner_Page
${card_AT_Link_Banner_Page_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[3]/coral-card[1]/coral-card-asset[1]/img[1]
${btn_next_card_Link_Banner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${input_title_Link_Banner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${tab_Link Details_AEM}                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]



${input_Banner Image - EN *_Link_Banner_AEM}        xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Banner Image - TH *_Link_Banner_AEM}        xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Title - EN *_Link_Banner_AEM}               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[3]/input[1]
${input_Title - TH *_Link_Banner_AEM}               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/input[1]
${input_Short Description - EN_Link_Banner_AEM}     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/textarea[1]
${input_Short Description - TH_Link_Banner_AEM}     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/textarea[1]
${input_Partner_Link_Banner_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/input[1]
${input_Start Date *_Link_Banner_AEM}               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[8]/coral-datepicker[1]/input[2]
${input_End Date *_Link_Banner_AEM}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[9]/coral-datepicker[1]/input[2]
${input_Link Type *_Link_Banner_AEM}                xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/input[1]
${select_Link Type *_Link_Banner_AEM}               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/span[1]/button[1]/i[1]
${selected_Link URL *_Link_Banner_AEM}              xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[1]
${selected_Article *_Link_Banner_AEM}               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[2]
${selected_Badge *_Link_Banner_AEM}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[3]
${selected_Reward Store *_Link_Banner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/ul[1]/li[4]
${input_URL - EN *_Link_Banner_AEM}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[2]/input[1]
${input_URL - TH *_Link_Banner_AEM}                 xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[3]/input[1]
${btn_create_Link_Banner_AEM}                       xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_open_AT_Link_Banner_AEM}                      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_Preview_Link_Banner_AEM}                      xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${btn_Page_Infomation_Link_Banner_AEM}              xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn_Publish Page_Link_Banner_AEM}                 xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn_Preview_Page_Link_Banner_AEM}                 xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${Click_Publish_Link_Banner_AEM}                             xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${btn_reset}                                        xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/div[1]/button[1]
${btn_Save&close_Link_Banner_AEM}                   xpath=//*[@id="shell-propertiespage-doneactivator"]
${tabedit_Link Details_AEM}                         xpath=//coral-tab[@id='coral-id-4']
${Edit Banner Image - EN}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit Banner Image - TH}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${EditTitle - EN}                                   xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[3]/input[1]
${EditTitle - TH}                                   xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/input[1]
${EditShort Description - EN}                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/textarea[1]
${EditShort Description - TH}                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/textarea[1]
${Edit_Partner Link_Banner_AEM}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/input[1]
${Edit Startdate Link_Banner_AEM}                                   xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[8]/coral-datepicker[1]/input[2]
${Edit Enddate Link_Banner_AEM}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[9]/coral-datepicker[1]/input[2]
${Edit Link Type Link_Banner_AEM}                    xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/input[1]
${Edit URL EN Link_Banner_AEM}                                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[2]/input[1]
${Edit URL TH Link_Banner_AEM}                                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/div[1]/div[3]/input[1]
${Edit input_Title Link_Banner_AEM}                 xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${Edit input_Title List_Banner_AEM}                 xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${Edit Number of Banner}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-numberinput[1]/input[1]
${tab_edit_AT Banner Setting}                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]