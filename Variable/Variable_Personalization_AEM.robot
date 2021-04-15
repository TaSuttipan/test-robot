*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String



*** Variable ***

${icon_Personalization_AEM}                    xpath=/html/body/coral-shell/coral-shell-content/div/div/div[2]/div/div/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div[2]/coral-masonry/coral-masonry-item[8]/div
${icon_Segment Console_AEM}                    xpath=/html/body/coral-shell/coral-shell-content/div/div/div[2]/div/div/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div[2]/coral-masonry/coral-masonry-item[1]/div
${icon_Category Tags Console_AEM}              xpath=/html/body/coral-shell/coral-shell-content/div/div/div[2]/div/div/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div[2]/coral-masonry/coral-masonry-item[2]/div
${folder_Segment Console_AEM}                  xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-content/div[1]
${folder_Category Tags Console_AEM}            xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[2]/coral-columnview-item-content/div[1]
${btn_Preview_Page_AEM}                        xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${Btn_Page_Infomation_AEM}                     xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${Btn_Open_Properties_AEM}                     xpath=//*[@id="pageinfo-data"]/button[1]/coral-button-label


#category_tag_
${card_category_tag_AEM}                          xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[2]/coral-card/coral-card-asset/img
${btn_next_card_category_tag_AEM}                 xpath=/html/body/form/div/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/button/coral-button-label
${input_title_category_tag_AEM}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${tab_Category Tag_AEM}                           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]
${input_Nane_Category_Tag_category_tag_AEM}       xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_Fashion category_tag__AEM}                xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/coral-overlay/coral-buttonlist/button[5]/div/div/coral-list-item-content
${btn_close_category_tag_AEM}                     xpath=/html/body/coral-dialog[2]/div[2]/div/button/coral-icon
${btn_create_category_tag_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_open_category_tag_AEM}                      xpath=/html/body/coral-dialog[1]/div[2]/coral-dialog-footer/button[2]/coral-button-label
${icon_select_category_tag_AEM}                   xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/div/div/span/button/coral-icon
${folder_offer_category_tag_AEM}                  xpath=/html/body/coral-dialog/div[2]/coral-dialog-content/form/div[2]/div/div[2]/coral-columnview/coral-columnview-column/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-content
${folder_category_category_tag_AEM}               xpath=/html/body/coral-dialog/div[2]/coral-dialog-content/form/div[2]/div/div[2]/coral-columnview/coral-columnview-column[2]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-content
${select_beauty_category_tag_AEM}                 xpath=/html/body/coral-dialog/div[2]/coral-dialog-content/form/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[3]/coral-columnview-item-thumbnail
${Click_btn_select_category_tag_AEM}              xpath=/html/body/coral-dialog/div[2]/coral-dialog-content/form/div[1]/div/div[2]/button[2]/coral-button-label
${Click_Tag_1_Category tag_AEM}                   xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Tag Restaurant}                           xpath=//coral-list-item-content[contains(text(),'The 1 Central : Offer / Category / Restaurant & Ca')]



#edit_category_tag
${Click_Remove_category_tag_AEM}                        xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/coral-taglist/coral-tag/button/coral-icon
${Click_Remove_category_tag_1_AEM}                      xpath=/html/body/div[1]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[1]/a/coral-anchorbutton-label
${Click_Remove_category_tag_2_AEM}                      xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/coral-taglist/coral-tag[2]/button/coral-icon
${tab_edit_Category Tag_AEM}                            xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]/coral-tab-label
${edit_input_Nane_Category_Tag_category_tag_AEM}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${btn_save&close_category_tag_AEM}                      xpath=/html/body/div[1]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[2]/coral-buttongroup/button[1]/coral-button-label
${Click_Tag_Category tag_AEM}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[2]/div[1]/div[1]/coral-list-item-content[1]
${Tag_TEST TAGS_AEM}                                    xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/foundation-autocomplete/coral-taglist/coral-tag/coral-tag-label
${Click Tag Test}                                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]
${Click_Tag_Food Grocery_AEM}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]


#edit tag_AEM
${input_Title_tag_AEM}              xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${btn_Submit_tag_AEM}               xpath=/html/body/form/div/div/coral-panelstack/coral-panel/coral-panel-content/div/button/coral-button-label
${btn_OK_tag_AEM}                   xpath=/html[1]/body[1]/div[3]/div[3]/button[1]
${Tab Edit User Selection}          xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]

#segment-console
${card_segment_console_AEM}                          xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[2]/coral-card/coral-card-asset/img
${btn_next_card_segment_console_AEM}                 xpath=/html/body/form/div/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/button/coral-button-label
${input_title_segment_console_AEM}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${tab_Segment Console_AEM}                           xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-tablist/coral-tab[2]/coral-tab-label
${input_Nane_Segment Console_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${click_No.1 Offer segment_console_AEM}              xpath=//*[@id="coral-41"]
${input_Order_No.1 Offer segment_console_AEM}        xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[1]/td[7]/input
${click_No.2 Offer segment_console_AEM}              xpath=//*[@id="coral-79"]
${input_Order_No.2 Offer segment_console_AEM}        xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[2]/td[7]/input
${btn_create_segment_console_AEM}                    xpath=/html/body/form/div/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/button[2]/coral-button-label
${btn_open_segment_console_AEM}                      xpath=/html/body/coral-dialog[1]/div[2]/coral-dialog-footer/button[2]/coral-button-label
${icon_select_segment_console_AEM}                   xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div[1]/div/div/div/span/button/i








#edit segment Console_AEM
${tab_edit_Segment Console_AEM}                          xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]/coral-tab-label
${Oder_1_Segment Console_AEM}                            xpath=/html/body/div[2]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[1]/td[7]
${Oder_16_Segment Console_AEM}                           xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[16]/td[7]
${Oder_99_Segment Console_AEM}                           xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[99]/td[7]
${btn_cancel_duplicate_Segment Console_AEM}              xpath=/html/body/coral-dialog[2]/div[2]/div/button/coral-icon
${btn_cancel_enter_Segment Console_AEM}                  xpath=/html/body/coral-dialog[1]/div[2]/div/button/coral-icon
${btn_cancel_order0_Segment Console_AEM}                 xpath=/html/body/coral-dialog[3]/div[2]/div/button/coral-icon
${btn_cancel_Repeat_order_Segment Console_AEM}           xpath=/html/body/coral-dialog[5]/div[2]/div/button/coral-icon
${Repeat_order_1_Segment Console_AEM}                    xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[2]/td[7]
${click_No.1_Offer of edit_order_segment_console_AEM}              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[1]/td[7]/input
${click_No.2_Offer of edit_order_segment_console_AEM}              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[2]/td[7]/input
${click_No.3_Offer of edit_order_segment_console_AEM}              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[3]/td[7]/input
${click_No.4_Offer of edit_order_segment_console_AEM}              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[4]/td[7]/input
${btn_save&close_segment_console_AEM}                              xpath=/html/body/div[1]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[2]/coral-buttongroup/button[1]/coral-button-label
${Click_Remove_1_segment_console_AEM}                              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[1]/td[8]/coral-icon
${Click_Remove_2_segment_console_AEM}                              xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/table/div/table/tbody/tr[2]/td[8]/coral-icon
${edit_input_Nane_Segment_segment_console_AEM}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${icon_edit_select_segment_console_AEM}                            xpath=/html/body/div[2]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div[1]/div/div/div/span/button



#100 offers segment-console
${click_No.1_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-3"]
${click_No.2_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-4"]
${click_No.3_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-5"]
${click_No.4_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-6"]
${click_No.5_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-7"]
${click_No.6_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-8"]
${click_No.7_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-9"]
${click_No.8_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-10"]
${click_No.9_Offer 100_segment_console_AEM}             xpath=//*[@id="coral-11"]
${click_No.10_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-12"]
${click_No.11_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-13"]
${click_No.12_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-14"]
${click_No.13_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-15"]
${click_No.14_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-16"]
${click_No.15_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-17"]
${click_No.16_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-18"]
${click_No.17_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-19"]
${click_No.18_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-20"]
${click_No.19_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-21"]
${click_No.20_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-22"]
${click_No.21_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-23"]
${click_No.22_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-24"]
${click_No.23_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-25"]
${click_No.24_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-26"]
${click_No.25_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-27"]
${click_No.26_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-28"]
${click_No.27_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-29"]
${click_No.28_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-30"]
${click_No.29_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-31"]
${click_No.30_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-32"]
${click_No.31_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-33"]
${click_No.32_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-34"]
${click_No.33_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-35"]
${click_No.34_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-36"]
${click_No.35_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-37"]
${click_No.36_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-38"]
${click_No.37_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-39"]
${click_No.38_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-40"]
${click_No.39_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-41"]
${click_No.40_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-42"]
${click_No.41_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-43"]
${click_No.42_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-44"]
${click_No.43_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-45"]
${click_No.44_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-46"]
${click_No.45_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-47"]
${click_No.46_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-48"]
${click_No.47_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-49"]
${click_No.48_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-50"]
${click_No.49_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-51"]
${click_No.50_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-52"]
${click_No.51_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-53"]
${click_No.52_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-54"]
${click_No.53_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-55"]
${click_No.54_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-56"]
${click_No.55_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-57"]
${click_No.56_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-58"]
${click_No.57_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-59"]
${click_No.58_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-60"]
${click_No.59_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-61"]
${click_No.60_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-62"]
${click_No.61_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-63"]
${click_No.62_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-64"]
${click_No.63_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-65"]
${click_No.64_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-66"]
${click_No.65_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-67"]
${click_No.66_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-68"]
${click_No.67_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-69"]
${click_No.68_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-70"]
${click_No.69_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-71"]
${click_No.70_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-72"]
${click_No.71_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-73"]
${click_No.72_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-74"]
${click_No.73_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-75"]
${click_No.74_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-76"]
${click_No.75_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-77"]
${click_No.76_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-78"]
${click_No.77_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-79"]
${click_No.78_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-80"]
${click_No.79_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-81"]
${click_No.80_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-82"]
${click_No.81_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-83"]
${click_No.82_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-84"]
${click_No.83_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-85"]
${click_No.84_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-86"]
${click_No.85_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-87"]
${click_No.86_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-88"]
${click_No.87_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-89"]
${click_No.88_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-90"]
${click_No.89_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-91"]
${click_No.90_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-92"]
${click_No.91_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-93"]
${click_No.92_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-94"]
${click_No.93_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-95"]
${click_No.94_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-96"]
${click_No.95_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-97"]
${click_No.96_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-98"]
${click_No.97_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-99"]
${click_No.98_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-100"]
${click_No.99_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-101"]
${click_No.100_Offer 100_segment_console_AEM}            xpath=//*[@id="coral-102"]

${input_Order_No.1 Offer 100_segment_console_AEM}           xpath=//tbody/tr[1]/td[7]/input[1]
${input_Order_No.2 Offer 100_segment_console_AEM}           xpath=//tbody/tr[2]/td[7]/input[1]
${input_Order_No.3 Offer 100_segment_console_AEM}           xpath=//tbody/tr[3]/td[7]/input[1]
${input_Order_No.4 Offer 100_segment_console_AEM}           xpath=//tbody/tr[4]/td[7]/input[1]
${input_Order_No.5 Offer 100_segment_console_AEM}           xpath=//tbody/tr[5]/td[7]/input[1]
${input_Order_No.6 Offer 100_segment_console_AEM}           xpath=//tbody/tr[6]/td[7]/input[1]
${input_Order_No.7 Offer 100_segment_console_AEM}           xpath=//tbody/tr[7]/td[7]/input[1]
${input_Order_No.8 Offer 100_segment_console_AEM}           xpath=//tbody/tr[8]/td[7]/input[1]
${input_Order_No.9 Offer 100_segment_console_AEM}           xpath=//tbody/tr[9]/td[7]/input[1]
${input_Order_No.10 Offer 100_segment_console_AEM}          xpath=//tbody/tr[10]/td[7]/input[1]
${input_Order_No.11 Offer 100_segment_console_AEM}          xpath=//tbody/tr[11]/td[7]/input[1]
${input_Order_No.12 Offer 100_segment_console_AEM}          xpath=//tbody/tr[12]/td[7]/input[1]
${input_Order_No.13 Offer 100_segment_console_AEM}          xpath=//tbody/tr[13]/td[7]/input[1]
${input_Order_No.14 Offer 100_segment_console_AEM}          xpath=//tbody/tr[14]/td[7]/input[1]
${input_Order_No.15 Offer 100_segment_console_AEM}          xpath=//tbody/tr[15]/td[7]/input[1]
${input_Order_No.16 Offer 100_segment_console_AEM}          xpath=//tbody/tr[16]/td[7]/input[1]
${input_Order_No.17 Offer 100_segment_console_AEM}          xpath=//tbody/tr[17]/td[7]/input[1]
${input_Order_No.18 Offer 100_segment_console_AEM}          xpath=//tbody/tr[18]/td[7]/input[1]
${input_Order_No.19 Offer 100_segment_console_AEM}          xpath=//tbody/tr[19]/td[7]/input[1]
${input_Order_No.20 Offer 100_segment_console_AEM}          xpath=//tbody/tr[20]/td[7]/input[1]
${input_Order_No.21 Offer 100_segment_console_AEM}          xpath=//tbody/tr[21]/td[7]/input[1]
${input_Order_No.22 Offer 100_segment_console_AEM}          xpath=//tbody/tr[22]/td[7]/input[1]
${input_Order_No.23 Offer 100_segment_console_AEM}          xpath=//tbody/tr[23]/td[7]/input[1]
${input_Order_No.24 Offer 100_segment_console_AEM}          xpath=//tbody/tr[24]/td[7]/input[1]
${input_Order_No.25 Offer 100_segment_console_AEM}          xpath=//tbody/tr[25]/td[7]/input[1]
${input_Order_No.26 Offer 100_segment_console_AEM}          xpath=//tbody/tr[26]/td[7]/input[1]
${input_Order_No.27 Offer 100_segment_console_AEM}          xpath=//tbody/tr[27]/td[7]/input[1]
${input_Order_No.28 Offer 100_segment_console_AEM}          xpath=//tbody/tr[28]/td[7]/input[1]
${input_Order_No.29 Offer 100_segment_console_AEM}          xpath=//tbody/tr[29]/td[7]/input[1]
${input_Order_No.30 Offer 100_segment_console_AEM}          xpath=//tbody/tr[30]/td[7]/input[1]
${input_Order_No.31 Offer 100_segment_console_AEM}          xpath=//tbody/tr[31]/td[7]/input[1]
${input_Order_No.32 Offer 100_segment_console_AEM}          xpath=//tbody/tr[32]/td[7]/input[1]
${input_Order_No.33 Offer 100_segment_console_AEM}          xpath=//tbody/tr[33]/td[7]/input[1]
${input_Order_No.34 Offer 100_segment_console_AEM}          xpath=//tbody/tr[34]/td[7]/input[1]
${input_Order_No.35 Offer 100_segment_console_AEM}          xpath=//tbody/tr[35]/td[7]/input[1]
${input_Order_No.36 Offer 100_segment_console_AEM}          xpath=//tbody/tr[36]/td[7]/input[1]
${input_Order_No.37 Offer 100_segment_console_AEM}          xpath=//tbody/tr[37]/td[7]/input[1]
${input_Order_No.38 Offer 100_segment_console_AEM}          xpath=//tbody/tr[38]/td[7]/input[1]
${input_Order_No.39 Offer 100_segment_console_AEM}          xpath=//tbody/tr[39]/td[7]/input[1]
${input_Order_No.40 Offer 100_segment_console_AEM}          xpath=//tbody/tr[40]/td[7]/input[1]
${input_Order_No.41 Offer 100_segment_console_AEM}          xpath=//tbody/tr[41]/td[7]/input[1]
${input_Order_No.42 Offer 100_segment_console_AEM}          xpath=//tbody/tr[42]/td[7]/input[1]
${input_Order_No.43 Offer 100_segment_console_AEM}          xpath=//tbody/tr[43]/td[7]/input[1]
${input_Order_No.44 Offer 100_segment_console_AEM}          xpath=//tbody/tr[44]/td[7]/input[1]
${input_Order_No.45 Offer 100_segment_console_AEM}          xpath=//tbody/tr[45]/td[7]/input[1]
${input_Order_No.46 Offer 100_segment_console_AEM}          xpath=//tbody/tr[46]/td[7]/input[1]
${input_Order_No.47 Offer 100_segment_console_AEM}          xpath=//tbody/tr[47]/td[7]/input[1]
${input_Order_No.48 Offer 100_segment_console_AEM}          xpath=//tbody/tr[48]/td[7]/input[1]
${input_Order_No.49 Offer 100_segment_console_AEM}          xpath=//tbody/tr[49]/td[7]/input[1]
${input_Order_No.50 Offer 100_segment_console_AEM}          xpath=//tbody/tr[50]/td[7]/input[1]
${input_Order_No.51 Offer 100_segment_console_AEM}          xpath=//tbody/tr[51]/td[7]/input[1]
${input_Order_No.52 Offer 100_segment_console_AEM}          xpath=//tbody/tr[52]/td[7]/input[1]
${input_Order_No.53 Offer 100_segment_console_AEM}          xpath=//tbody/tr[53]/td[7]/input[1]
${input_Order_No.54 Offer 100_segment_console_AEM}          xpath=//tbody/tr[54]/td[7]/input[1]
${input_Order_No.55 Offer 100_segment_console_AEM}          xpath=//tbody/tr[55]/td[7]/input[1]
${input_Order_No.56 Offer 100_segment_console_AEM}          xpath=//tbody/tr[56]/td[7]/input[1]
${input_Order_No.57 Offer 100_segment_console_AEM}          xpath=//tbody/tr[57]/td[7]/input[1]
${input_Order_No.58 Offer 100_segment_console_AEM}          xpath=//tbody/tr[58]/td[7]/input[1]
${input_Order_No.59 Offer 100_segment_console_AEM}          xpath=//tbody/tr[59]/td[7]/input[1]
${input_Order_No.60 Offer 100_segment_console_AEM}          xpath=//tbody/tr[60]/td[7]/input[1]
${input_Order_No.61 Offer 100_segment_console_AEM}          xpath=//tbody/tr[61]/td[7]/input[1]
${input_Order_No.62 Offer 100_segment_console_AEM}          xpath=//tbody/tr[62]/td[7]/input[1]
${input_Order_No.63 Offer 100_segment_console_AEM}          xpath=//tbody/tr[63]/td[7]/input[1]
${input_Order_No.64 Offer 100_segment_console_AEM}          xpath=//tbody/tr[64]/td[7]/input[1]
${input_Order_No.65 Offer 100_segment_console_AEM}          xpath=//tbody/tr[65]/td[7]/input[1]
${input_Order_No.66 Offer 100_segment_console_AEM}          xpath=//tbody/tr[66]/td[7]/input[1]
${input_Order_No.67 Offer 100_segment_console_AEM}          xpath=//tbody/tr[67]/td[7]/input[1]
${input_Order_No.68 Offer 100_segment_console_AEM}          xpath=//tbody/tr[68]/td[7]/input[1]
${input_Order_No.69 Offer 100_segment_console_AEM}          xpath=//tbody/tr[69]/td[7]/input[1]
${input_Order_No.70 Offer 100_segment_console_AEM}          xpath=//tbody/tr[70]/td[7]/input[1]
${input_Order_No.71 Offer 100_segment_console_AEM}          xpath=//tbody/tr[71]/td[7]/input[1]
${input_Order_No.72 Offer 100_segment_console_AEM}          xpath=//tbody/tr[72]/td[7]/input[1]
${input_Order_No.73 Offer 100_segment_console_AEM}          xpath=//tbody/tr[73]/td[7]/input[1]
${input_Order_No.74 Offer 100_segment_console_AEM}          xpath=//tbody/tr[74]/td[7]/input[1]
${input_Order_No.75 Offer 100_segment_console_AEM}          xpath=//tbody/tr[75]/td[7]/input[1]
${input_Order_No.76 Offer 100_segment_console_AEM}          xpath=//tbody/tr[76]/td[7]/input[1]
${input_Order_No.77 Offer 100_segment_console_AEM}          xpath=//tbody/tr[77]/td[7]/input[1]
${input_Order_No.78 Offer 100_segment_console_AEM}          xpath=//tbody/tr[78]/td[7]/input[1]
${input_Order_No.79 Offer 100_segment_console_AEM}          xpath=//tbody/tr[79]/td[7]/input[1]
${input_Order_No.80 Offer 100_segment_console_AEM}          xpath=//tbody/tr[80]/td[7]/input[1]
${input_Order_No.81 Offer 100_segment_console_AEM}          xpath=//tbody/tr[81]/td[7]/input[1]
${input_Order_No.82 Offer 100_segment_console_AEM}          xpath=//tbody/tr[82]/td[7]/input[1]
${input_Order_No.83 Offer 100_segment_console_AEM}          xpath=//tbody/tr[83]/td[7]/input[1]
${input_Order_No.84 Offer 100_segment_console_AEM}          xpath=//tbody/tr[84]/td[7]/input[1]
${input_Order_No.85 Offer 100_segment_console_AEM}          xpath=//tbody/tr[85]/td[7]/input[1]
${input_Order_No.86 Offer 100_segment_console_AEM}          xpath=//tbody/tr[86]/td[7]/input[1]
${input_Order_No.87 Offer 100_segment_console_AEM}          xpath=//tbody/tr[87]/td[7]/input[1]
${input_Order_No.88 Offer 100_segment_console_AEM}          xpath=//tbody/tr[88]/td[7]/input[1]
${input_Order_No.89 Offer 100_segment_console_AEM}          xpath=//tbody/tr[89]/td[7]/input[1]
${input_Order_No.90 Offer 100_segment_console_AEM}          xpath=//tbody/tr[90]/td[7]/input[1]
${input_Order_No.91 Offer 100_segment_console_AEM}          xpath=//tbody/tr[91]/td[7]/input[1]
${input_Order_No.92 Offer 100_segment_console_AEM}          xpath=//tbody/tr[92]/td[7]/input[1]
${input_Order_No.93 Offer 100_segment_console_AEM}          xpath=//tbody/tr[93]/td[7]/input[1]
${input_Order_No.94 Offer 100_segment_console_AEM}          xpath=//tbody/tr[94]/td[7]/input[1]
${input_Order_No.95 Offer 100_segment_console_AEM}          xpath=//tbody/tr[95]/td[7]/input[1]
${input_Order_No.96 Offer 100_segment_console_AEM}          xpath=//tbody/tr[96]/td[7]/input[1]
${input_Order_No.97 Offer 100_segment_console_AEM}          xpath=//tbody/tr[97]/td[7]/input[1]
${input_Order_No.98 Offer 100_segment_console_AEM}          xpath=//tbody/tr[98]/td[7]/input[1]
${input_Order_No.99 Offer 100_segment_console_AEM}          xpath=//tbody/tr[99]/td[7]/input[1]
${input_Order_No.100 Offer 100_segment_console_AEM}          xpath=//tbody/tr[100]/td[7]/input[1]























































































































































































































































































































































































































































































































































































































































































































































































