*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variable ***
${TestResult_Partner_API}     ${EXECDIR}${/}PARTNER_API.json
${icon_Partner_AEM}                   xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[3]/div[1]/coral-icon[1]
${folder_Partner_AEM}                 xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[2]/coral-columnview-item-content[1]/div[1]
${card_Partner_AEM}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[2]/coral-card[1]/coral-card-asset[1]/img[1]
${btn_next_card_Partner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${input_title_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]

${tab_Partner_Detail_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
${input_Partner Code *_Partner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/input[1]
${input_Partner Name - TH *_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[2]/input[1]
${input_Partner Name - EN *_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[3]/input[1]
${label_Partner Banner image_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/label[1]

${btn_Add_Partner Banner image_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/button[1]/coral-button-label[1]
${btn_Add2_Partner Banner image_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/button[1]/coral-button-label[1]
${btn_close_Partner Banner image5max_Partner_AEM}           xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/div[1]/button[1]/coral-icon[1]
${input_Partner Banner image_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_Partner Banner image_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]/div[1]/div[1]/coral-list-item-content[1]

${input_Partner Logo image_Partner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_Partner Logo image_Partner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]/div[1]/div[1]/coral-list-item-content[1]

${input_Partner Feature image *_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_Partner Feature image *_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]/div[1]/div[1]/coral-list-item-content[1]

${input_Header Title - TH_Partner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/input[1]
${input_Header Title - EN_Partner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[8]/input[1]
${input_Partner Description - TH_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[9]/textarea[1]
${input_Partner Description - EN_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/textarea[1]

${input_Partner Category_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[11]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${click_Partner Category_Partner_AEM}           xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[11]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content

${select_Include Membership Mission *_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[12]/coral-select[1]/button[1]/span[1]
${selected_Yes_Include Membership Mission *_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[12]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]

${input_Membership Mission Title - TH_Partner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/input[1]

${input_Membership Mission Title - EN_Partner_AEM}          xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/input[1]

${select_Include Related Mission *_Partner_AEM}             xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/coral-select[1]/button[1]/span[1]
${selected_Yes_Include Related Mission *_Partner_AEM}       xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]

${input_Related Mission Title - TH_Partner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[17]/input[1]
${input_Related Mission Title - EN_Partner_AEM}         xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/input[1]

${select_Include Offer *_Partner_AEM}                  xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[18]/coral-select[1]/button[1]/span[1]
${selected_Yes_Include Offer *_Partner_AEM}            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[18]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]

${input_Offer Title - TH_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[20]/input[1]
${input_Offer Title - EN_Partner_AEM}           xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[19]/input[1]

${btn_create_Partner_AEM}                                   xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]/coral-button-label[1]
${btn_open_Partner_AEM}                                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_open2_Partner_AEM}                                     xpath=/html/body/coral-dialog[2]/div[2]/coral-dialog-footer/button[2]/coral-button-label

${btn_Page_Infomation_Partner_AEM}                          xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn_Open_Properties_Partner_AEM}                          xpath=//*[@id="pageinfo-data"]/button[1]/coral-button-label

${tab_Partner Set Pagination_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[3]/coral-tab-label[1]
${checklist_Paginate_Partner_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[1]/input[1]
${input_Paginate Size_Partner_AEM}                    xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-numberinput[1]/input[1]


#Edit information
${btn_save_Partner_AEM}                                     xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]/coral-button-label[1]
${btn_Publish Page_Partner_AEM}                             xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn_Preview_Page_Partner_AEM}                             xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${link_Publish API_Partner_AEM}                             xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/a[1]
${btn_Confirm_Publish_Partner_AEM}                                    xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]/coral-button-label[1]
${btn_Unpublish Page_Partner_AEM}                                     xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[5]
${btn_Confirm_unpublish_Partner_AEM}                                  xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label
${tab_edit_tab_Partner_AEM}                                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]

${edit_input_Partner Code *_Partner_AEM}                              xpath=//*[@id="coral-id-10"]
${edit_input_Partner Name - TH *_Partner_AEM}                         xpath=//*[@id="coral-id-11"]
${edit_input_Partner Name - EN *_Partner_AEM}                         xpath=//*[@id="coral-id-12"]

${edit_btn_add_Partner Banner image_Partner_AEM}                        xpath=//html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/button[1]/coral-button-label[1]
${edit_label_Partner Banner image_Partner_AEM}                        xpath=//*[@id="label_bc6af148-69f9-43a9-8e30-0b10ca4fe3f9"]
${edit_input_Partner Banner image_Partner_AEM}                        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${edit_Click_Partner Banner image_Partner_AEM}                        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[4]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]
${edit_input_Partner Logo image_Partner_AEM}                          xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${edit_Click_Partner Logo image_Partner_AEM}                          xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]/div[1]/div[1]/coral-list-item-content[1]/mark[1]
${edit_input_Partner Feature image *_Partner_AEM}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${edit_Click_Partner Feature image *_Partner_AEM}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]
${edit_input_Header Title - TH_Partner_AEM}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/input[1]
${edit_input_Header Title - EN_Partner_AEM}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[8]/input[1]
${edit_input_Partner Description - TH_Partner_AEM}                    xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[9]/textarea[1]
${edit_input_Partner Description - EN_Partner_AEM}                    xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[10]/textarea[1]
${edit_input_Partner Category_Partner_AEM}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[11]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${click_edit_Partner Category_Partner_AEM}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[11]/foundation-autocomplete[1]/coral-overlay[1]/coral-buttonlist[1]/button[1]/div[1]/div[1]/coral-list-item-content[1]

${edit_select_Include Membership Mission *_Partner_AEM}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[12]/coral-select[1]/button[1]
${edit_selected_Yes_Include Membership Mission *_Partner_AEM}         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[12]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]

${edit_input_Membership Mission Title - TH_Partner_AEM}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/input[1]
${edit_input_Membership Mission Title - EN_Partner_AEM}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/input[1]

${edit_select_Include Related Mission *_Partner_AEM}                  xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/coral-select[1]/button[1]
${edit_selected_Yes_Include Related Mission *_Partner_AEM}            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[15]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]

${edit_input_Related Mission Title - TH_Partner_AEM}                  xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/input[1]
${edit_input_Related Mission Title - EN_Partner_AEM}                  xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[17]/input[1]

${edit_select_Include Offer *_Partner_AEM}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[18]/coral-select[1]/button[1]/span[1]
${edit_selected_Yes_Include Offer *_Partner_AEM}                      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[18]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${edit_input_Offer Title - TH_Partner_AEM}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[19]/input[1]
${edit_input_Offer Title - EN_Partner_AEM}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[20]/input[1]

${edit_tab_Partner Set Pagination_AEM}                                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[3]/coral-tab-label[1]
${edit_checklist_Paginate_Partner_AEM}                                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[1]/input[1]
${edit_input_Paginate Size_Partner_AEM}                               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-numberinput[1]/input[1]

${text_Partner Description - TH}          มันเกิดขึ้นหลายล้านครั้งในแต่ละสัปดาห์ - ลูกค้าได้รับเครื่องดื่มจากบาริสต้าสตาร์บัคส์ แต่การโต้ตอบแต่ละครั้งนั้นไม่เหมือนใคร
${text_Partner Description - EN}          It happens millions of times each week – a customer receives a drink from a Starbucks barista – but each interaction is unique.


${text_Free Text - TH_Partner_AEM}       เวลาเปิด \n วันศุกร์ 10AM–10PM \n วันเสาร์ 10AM–10PM \n วันอาทิตย์ 10AM–10PM \n วันจันทร์ 10AM–10PM \n วันอังคาร 10AM–10PM \n วันพุธ 10AM–10PM \n วันพฤหัสบดี 10AM–10PM
${text_Free Text - EN_Partner_AEM}       Open \n Friday 10AM–10PM \n Saturday 10AM–10PM \n Sunday 10AM–10PM \n Monday 10AM–10PM \n Tuesday 10AM–10PM \n Wednesday 10AM–10PM \n Thursday 10AM–10PM