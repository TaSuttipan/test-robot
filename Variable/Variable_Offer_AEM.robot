*** Settings ***
Documentation
Library    DateTime
Library    Selenium2Library
Library    BuiltIn
Library    String



*** Variable ***
#Date_Offer information AEM
# ${date of title_AEM}      ${date_today_BOT}_BOT
# ${date of Issuance Period_Start Date_AEM}       20201031
# ${date of Issuance Period_End Date_AEM}       20201031
# Date_Offer information SMP
# ${date of Issuance Period_Start Date_offer_SMP}      10/30/2020
# ${date of Issuance Period_End Date_offer_SMP}     10/30/2020
${Download Offer_AEM}      C:\\Users\\USER\\Downloads\\offers.xls
${Popup_Adobe}    xpath=//*[@id="nps_questionText"]/div
${Popup_iframe_Adobe}    xpath=//*[@id="omg_survey"]/iframe
#Navigation
${icon_The1_Central_AEM}        xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[1]/div[1]/coral-icon[1]
${icon_Offer_AEM}               xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[2]/coral-masonry[1]/coral-masonry-item[1]/div[1]/coral-icon[1]
${folder_Offer_AEM}             xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[3]/coral-columnview-item-content[1]
${folder_Pic_Regression AEM Offer_AEM}         xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-thumbnail
${folder_Pic_Regression BOT AEM Offer_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-thumbnail[1]/img[1]
${btn ... Download Offers AEM Offer_AEM}       xpath=//body/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/button[1]/coral-icon[1]
${btn Download Offers AEM Offer_AEM}           xpath=//coral-button-label[contains(text(),'Download Offers')]
${btn Download Offers AEM Offer_AEM2}           xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/coral-popover[1]/div[3]/coral-popover-content[1]/ul[1]/li[5]/coral-actionbar-item[1]/button[1]/coral-button-label[1]
${folder_Pic_Reward Store AEM Reward Store_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[4]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-thumbnail
${btn Select All AEM Reward Store_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div[1]/betty-titlebar/betty-titlebar-secondary/button[1]/coral-button-label
${btn Delete AEM Reward Store_AEM}       xpath=/html/body/div[1]/div/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[12]/button/coral-button-label
${folder_Regression AEM Offer_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-content/div[1]
${btn Delete Reward Store_AEM}       xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label
${btn Properties Reward Store_AEM}       xpath=/html/body/div[1]/div/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/button/coral-button-label
${btn Save Reward Store_AEM}       xpath=/html/body/div[1]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[2]/coral-buttongroup/button[1]/coral-button-label
${folder_Issue_Method_public_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[15]
${folder_Issue_Method_targeted_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[16]/coral-columnview-item-content[1]
${folder_Issue_Method_bulk_offer_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[17]
${folder_Issue_Method_claim_promo_code_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[18]
${folder_Issue_Method_campaign_offer_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[19]/coral-columnview-item-content[1]
${folder_Issue_Method_others_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[20]
${folder_Issue_Method_tier_offer_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[21]
${folder_Issue_Method_the1missionoffer_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[22]
${folder_Voucher_Type_claim-promo-code_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[1]
${folder_Voucher_Type_reward_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[2]/coral-columnview-item-content[1]
${folder_Voucher_Type_privilege_AEM}        xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[3]
${folder_Voucher_Type_transfer-out_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[4]
${folder_Voucher_Type_reward-group-with-restriction_AEM}        xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[5]/coral-columnview-item-content[1]
${folder_Voucher_Type_reward-group_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[6]
${folder_Voucher_Type_custom-cash-coupon_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[7]
${folder_Voucher_Type_pre-gen-code-reward_AEM}      xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[8]/coral-columnview-item-content[1]
${folder_Voucher_Type_pre-gen-multiuse-code_AEM}        xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[9]
${btn_create_AEM}       xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/betty-titlebar[1]/betty-titlebar-secondary[1]/button[3]
${btn_page_AEM}     xpath=/html[1]/body[1]/coral-shell[1]/coral-shell-content[1]/div[1]/div[1]/betty-titlebar[1]/betty-titlebar-secondary[1]/coral-popover[1]/div[3]/coral-popover-content[1]/coral-anchorlist[1]/a[1]/div[1]/div[1]/coral-list-item-content[1]
#Create Offer Page
${card_offer_AEM}       xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/coral-masonry[1]/coral-masonry-item[2]/coral-card[1]/coral-card-asset[1]/img[1]
${btn_next_card_offer_AEM}      xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]
${input_offer_title_AEM}        xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${btn_create_offer_title_AEM}       xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/button[2]
${btn_open_offer_title_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[2]/coral-button-label[1]
${btn_done_offer_title_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-footer[1]/button[1]/coral-button-label[1]
#Offer Page
${btn_edit_offer_AEM}       xpath=/html[1]/body[1]/div[3]/div[2]/div[2]/div[2]/div[2]


#Offer Information
${select_Issue_Method_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/button[1]
${selected_Issue_Method_public_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_Issue_Method_targeted_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Issue_Method_bulk_offer_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Issue_Method_claim_promo_code_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${selected_Issue_Method_campaign_offer_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[6]
${selected_Issue_Method_others_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${selected_Issue_Method_tier_offer_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[8]
${selected_Issue_Method_the1missionoffer_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[9]
${select_Tier_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/button[1]
${selected_Tier_T1X_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_Tier_CDS-VIP_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Tier_CDS-Diamond_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Tier_CDS-Embassy_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${select_Voucher_Type_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/button[1]
${selected_Voucher_Type_claim-promo-code_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_Voucher_Type_reward_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Voucher_Type_privilege_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Voucher_Type_transfer-out_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${selected_Voucher_Type_reward-group-with-restriction_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[6]
${selected_Voucher_Type_reward-group_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${selected_Voucher_Type_custom-cash-coupon_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[8]
${selected_Voucher_Type_pre-gen-code-reward_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[9]
${selected_Voucher_Type_pre-gen-multiuse-code_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[10]
${checkbox_package_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-checkbox[1]/input[1]
${checkbox_welcome_package_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-checkbox[2]/input[1]
${checkbox_Minimize Offer_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-checkbox[3]/input[1]
${select_offer_category_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/button[1]/span[1]
${selected_offer_category_All Rewards_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[1]
${selected_offer_category_The 1 Exclusive_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_offer_category_Eat Around_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_offer_category_Grocery_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_offer_category_Fashion_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${selected_offer_category_Beauty_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[6]
${selected_offer_category_Home & Elctronics_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${selected_offer_category_Travel & Leisure_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[8]
${selected_offer_category_Sport_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[9]
${selected_offer_category_Health & Wellness_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[10]
${selected_offer_category_Banking & Investment_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[11]
${selected_offer_category_Play & Learn_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[12]
${selected_offer_category_Mom & Kids_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[13]
${selected_offer_category_Utilities & Services_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[14]
${selected_offer_category_Charities_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[15]
${selected_offer_category_Highlights_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[7]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[22]
${selected_offer_category_TRANSFER OUT_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[7]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[23]
${selected_offer_category_Custom Cash Coupon_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[7]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[25]
${selected_offer_category_Excting Deals_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[7]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[26]
${Radio_Guest Mode_false_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[8]/div[1]/coral-radio[2]/input[1]
${input_title_th_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[9]/input[1]
${input_title_en_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/input[1]
${input_short_th_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/input[1]
${input_short_en_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[12]/input[1]
${input_Description_th_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[13]/div/div[2]/p
${Text_Description Thai_Offer_AEM}              รายละเอียด\nน. ส่วนย่อยต่าง ๆ ที่ประกอบกันเป็นส่วนใหญ่ เช่นชี้แจงรายละเอียดของโครงการ.
${input_Description_en_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[14]/div/div[2]/p
${Text_Description English_Offer_AEM}          Description\nN. Various subsections that make up the majority For example, clarify details of the project.
${input_term_th_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[15]/div/div[2]/p
${Text_Term and Condition Thai_Offer_AEM}           • กรุณาแสดงรหัส/บาร์โค้ดในการรับสิทธิ์ก่อนการชำระสินค้าหรือบริการ\n• สามารถใช้คูปองนี้เป็นส่วนลด สำหรับซื้อสินค้าที่ร่วมรายการ (ยอดซื้อสุทธิ)\n• สามารถใช้คูปองได้ที่ร้านซูเปอร์สปอร์ต ทุกสาขา (ยกเว้น Supersports Outlet และ Supersports Factory Store), FIT by Supersports ทุกสาขา และ FIT Sports ทุกสาขา\n• กดรับสิทธิ์และใช้สิทธิ์ได้ในวันที่ระหว่างวันที่ 1 มี.ค. 2563 – 31 ธ.ค. 2563\n• จำกัด 1 สิทธิ์ ต่อ 1 ใบเสร็จ\n• ไม่สามารถใช้ร่วมกับรายการส่งเสริมการขายหรือคูปองส่วนลดอื่นๆ (รวมถึงส่วนลด 5-10% ของบัตรเครดิตเซ็นทรัล เดอะวัน)\n• ภาพจากการ Capture หน้าจอไม่สามารถรับสิทธิ์ได้\n• เมื่อทำรายการแล้วไม่สามารถเปลี่ยนแปลง ยกเลิก หรือคืนเป็นคะแนนหรือเงินสดได้\n• โปรดตรวจสอบสินค้าที่ร่วมรายการและเงื่อนไขเพิ่มเติม ณ จุดขาย\n• บริษัทฯ ขอสงวนสิทธิ์ในการเปลี่ยนแปลงเงื่อนไข โดยไม่ต้องแจ้งให้ทราบล่วงหน้า\n
${input_term_en_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[16]/div/div[2]/p
${Text_Term and Condition English_Offer_AEM}            • Please show your redemption message/code/barcode before purchasing goods or service. \n• This coupon can be used to get discount for purchasing the participating items. \n• Valid for all stores of Supersports, FIT by Supersports and FIT Sports (except Supersports Outlet and Supersports Factory Store). \n• Redemption period : Mar 1-Dec 31, 2020 and this coupon is valid until Dec 31, 2020. \n• Limit 1 right per receipt. \n• This coupon cannot be used in conjunction with other promotions or discount coupons (Including 5-10% discount from Central The 1 Credit Card). \n• Please see more terms and conditions at point of sale. \n• The reward may not be redeemed if shown from a screen capture. \n• Redeemed points are not refundable or exchangeable for cash. \n• The company reserves the right to change terms and conditions without prior notice. \n
#Offer Tags
${input_Offer Tags_Category_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[17]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${click_Offer Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div
${input_Offer Tags_IssueBank_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[17]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Offer Tags_Province_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[17]/div[1]/div[3]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Offer Tags_Channel_AEM}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[17]/div[1]/div[4]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${click_tag_first_AEM}      xpath=/html[1]/body[1]/coral-dialog[2]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[1]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${click_select_tag_first_AEM}       xpath=/html[1]/body[1]/coral-dialog[2]/div[2]/coral-dialog-content[1]/form[1]/div[1]/div[1]/div[2]/button[2]/coral-button-label[1]
#Tags Categorys
${Click_Fashion Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button[3]/div/div/coral-list-item-content
${Click_Restaurant & Cafe Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Home Electronics Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Personal Care Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Kids & Maternity Wear Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Travel Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button[3]/div/div
${Click_Financial Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Book & Stationery Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Home Grocery Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Donation & CSR Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Class & Workshop Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Toys Tags_Category_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button[8]
${Click_Utilities & Services Tags_Category_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_Sports & Sports Fashion Tags_Category_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div
${Click_Beauty Service Tags_Category_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[1]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content



#Tags_Issuing Bank of Credit Card
${Click_Central Tags_IssueBank_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[2]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content

#Tags_Province
${Click_Central Tags_Province_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[3]/foundation-autocomplete/coral-overlay/coral-buttonlist/button[1]/div/div/coral-list-item-content
${Click_All Tags_Province_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[3]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content

#Tags_Available Channel
${Click_POS Tags_Channel_AEM}         xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[17]/div/div[4]/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content

#Partner/BU
${input_partner_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[18]/div[1]/div[1]/div[1]/div[1]/input[1]
${selected_partner_AEM}     xpath=//*[@id="coral-558"]
${selected_partner_T1CTH_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[18]/div[1]/div[1]/div[1]/ul[1]/li[50]
${selected_partner_b2s_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[18]/div[1]/div[1]/div[1]/ul[1]/li[31]

#Images TH/EN
${btn_add_Mobile_Images_TH_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[21]/div/div/coral-multifield/button/coral-button-label
${Input_Mobile_Images_TH_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[21]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_File ImagesTH_AEM}          xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[21]/div/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/div/div/div/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${btn_add_Mobile_Images_EN_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[22]/div/div/coral-multifield/button/coral-button-label
${Input_Mobile_Images_EN_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[22]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Click_File ImagesEN_AEM}          xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[22]/div/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/div/div/div/foundation-autocomplete/coral-overlay/coral-buttonlist/button/div/div/coral-list-item-content
${Click_File ROBOT_TEST_TH_AEM}          xpath=//mark[contains(text(),'ROBOT_TEST_TH.jpg')]
${Click_File ROBOT_TEST_EN_AEM}          xpath=//mark[contains(text(),'ROBOT_TEST_EN.jpg')]
${Click_File_ROBOT_TEST_IMG_TH_AEM}          xpath=//mark[contains(text(),'ROBOT_TEST_IMG_TH.jpg')]
${Click_File_ROBOT_TEST_IMG_EN_AEM}          xpath=//mark[contains(text(),'ROBOT_TEST_IMG_EN.jpg')]
#Offer Fulfillment
${Offer_Fulfillment_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]
#Issuance Period
${Input_Issuance Period_Start Date_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-datepicker[1]/input[2]
${Input_Issuance Period_End Date_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/coral-datepicker[1]/input[2]
#Validity Period
${select_Can_be_Used_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/button[1]
${selected_Same as issuance period_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
#Fixed date range
${selected_Fixed date range_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${Input_Redemption Start Date_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/coral-datepicker[1]/input[2]
${Input_Redemption End Date_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/coral-datepicker[1]/input[2]
${checkbox_Redemption No End Date_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/coral-datepicker[1]/input[2]
#Duration after issuance
${selected_Duration after issuance_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${input_Validity Period_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/coral-numberinput[1]/input[1]
${select_Validity Unit_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/coral-select[1]/button[1]
${selected_Validity Unit_Minutes_AEM}       xpath=//coral-selectlist[@id='coral-id-591']//coral-selectlist-item[@class='coral3-SelectList-item'][contains(text(),'Minutes')]
${selected_Validity Unit_Hours_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Validity Unit_Days_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Validity Unit_Weeks_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${selected_Validity Unit_Months_AEM}    xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/div[2]/div/div[3]/div/div[2]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[6]
${selected_Validity Unit_Years_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${selected_Never expires_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${input_CountdownValue_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/coral-numberinput[1]/input[1]
${select_Countdown Unit_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/button[1]
${selected_Countdown Unit_Secounds_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_Countdown Unit_Minutes_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Countdown Unit_Hours_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Countdown Unit_Days_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${selected_Countdown Unit_Weeks_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[6]
${selected_Countdown Unit_Months_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[7]
${selected_Countdown Unit_Years_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[8]
${input_Offer Weight_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-numberinput[1]/input[1]

#Offer Mechanics
${Offer_Mechanics_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[3]/coral-tab-label[1]
#Restriction
${btn_Add_Restriction_AEM}                  xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[1]/div/div/coral-multifield/button/coral-button-label
${select_Personal_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/coral-select[1]/button[1]
${selected_Personal_Yes_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${Input_Total Available_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[7]/div[1]/div[2]/coral-numberinput[1]/input[1]
#Restriction Acquisition Frequency
${select_Type_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[1]/coral-select[1]/button[1]/span[1]
${select_Type_Acquisition Frequency_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${input_Max Acquisitions_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[1]/coral-numberinput[1]/input[1]
${select_Personal Acquisitions_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[2]/coral-select[1]/button[1]/span[1]
${selected_Personal Acquisitions_Yes_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${input_Time Acquisitions_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[3]/coral-numberinput[1]/input[1]
${select_Unit of Time Acquisitions_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[4]/coral-select[1]/button[1]/span[1]
${selected_Unit of Time Acquisitions_Minutes_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_Unit of Time Acquisitions_Hours_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Unit of Time Acquisitions_Days_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/div[1]/div[1]/div[5]/div[1]/div[4]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[3]
${selected_Unit of Time Acquisitions_Weeks_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[1]/div/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/div/div/div[5]/div/div[4]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[5]
${selected_Unit of Time Acquisitions_Months_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[1]/div/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/div/div/div[5]/div/div[4]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[6]
${selected_Unit of Time Acquisitions_Years_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[1]/div/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/div/div/div[5]/div/div[4]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[7]
#POS Configuration
${select_POS_Voucher_Type_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/button[1]
${selected_E_Cash_Coupon_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${selected_F_Cash_Coupon_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[3]
${selected_E_Discount_Coupon_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[4]
${selected_B_Cash_Coupon_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[5]
${selected_R_Cash_Coupon_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[6]
${Input_POS Discount ID_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/input[1]
#Voucher Type Transfer Out
${Input_Transfer Partner Rate_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/coral-numberinput[1]/input[1]
${Input_Transfer The1 Rate_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/coral-numberinput[1]/input[1]
${Input_Transfer The1 Minimum Points_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[3]/coral-numberinput[1]/input[1]
${Input_Transfer Out ID_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/input[1]
#Voucher Type Reward Group & Reward Group with Restriction
${Input_Child Reward Associated_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/input[1]

#Voucher Type Custom Cash Coupon
${Input_Cash Coupon Exchange Rate_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/input[1]
#Associated Reward Store
${Input_Bulk_Reward Associated_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/input[1]
${Input_Target_Reward Associated_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/input[1]
${btn_Associated Reward Store_AEM}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/span[1]/button[1]/i[1]
${selected_Bulk_Associated Reward Store_Birthday Surprises_AEM}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/ul[2]/li[1]
${selected_Bulk_Associated Reward Store_T1X-Grab_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/ul[2]/li[2]
${selected_Target_Associated Reward Store_TARGETED_1_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/ul[2]/li[2]
${selected_Target_Associated Reward Store_TARGETED_2_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/ul[2]/li[3]
#Siebel Configuration
${Siebel_Configuration_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[4]/coral-tab-label[1]
${select_Product_Type_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-select[1]/button[1]
${selected_Product_Type_Percent_Discount_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[4]
${selected_Product_Type_Amount_Discount_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[1]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[5]
${selected_Product_Type_Cash_Coupon_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[1]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${selected_Product_Type_Partner_Trasnfer_Out_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[1]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[10]
${selected_Product_Type_Rewards_AEM}       xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[1]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[9]
${Select_Product_Subtype_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/coral-select[1]/button[1]
${Selected_Product_Subtype_Product_AEM}                 xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[2]
${input_Siebel_Points_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/input[1]
${Select_Fast_Category_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/button[1]
${Select_Fast_Category_Discount_Coupon_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[5]
${Select_Fast_Category_T1CT_AEM}        xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[10]
${Select_Fast_Category_Partner_Redeem_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[2]/div/div[1]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[4]
${Input_Item_Cost_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/input[1]
${Input_Item_Price_AEM}     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/input[1]
${Input_Point_Value_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/input[1]
${Input_Partner Point Charging_offer_AEM}                xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/div[1]/input[1]
${select_VAT Tax_AEM}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/coral-select[1]/button[1]
${selected_VAT Tax 0.07_AEM}         xpath=//coral-selectlist-item[contains(text(),'0.07')]
${select_Redemption Format_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[4]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[6]/coral-select[1]/button[1]
${selected_Redemption Format Format1_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[4]/coral-panel-content/div/div/div/div[2]/div/div[6]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${btn_done_create_offer_AEM}                xpath=/html/body/coral-dialog/div[2]/form/div/div/coral-dialog-header/div/button[4]/coral-icon

#Preview and submit Approve flow
${btn_Edit_Page_Offer_AEM}           xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[1]/button/coral-button-label
${btn_Preview_Page_Offer_AEM}           xpath=/html/body/div[3]/div[3]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button/coral-button-label
${btn_Submit_Preview_Page_Offer_AEM}        xpath=/html/body/div[2]/div/div/div/div/div[1]/div/div/button
${btn_complete_Approve flow_Offer_AEM}              xpath=/html/body/div[3]/div[2]/div[1]/div[2]/coral-alert/coral-alert-content/span/a[1]
${btn_complete_ok_Approve flow_Offer_AEM}           xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]/coral-button-label


#Reward Store
${Input_Title_Reward Store_AEM}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${icon_Reward Store_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div/div[2]/div/div/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div[2]/coral-masonry/coral-masonry-item[6]/div
${folder_Regression AEM Reward Store_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[11]/coral-columnview-item-content/div[1]
${card_system_Reward Store_AEM}       xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[2]/coral-card/coral-card-asset/img
${card_Reward Store_AEM}       xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[1]/coral-card/coral-card-asset/img
${folder_Bot_Regression Reward Store_AEM}       xpath=/html/body/coral-shell/coral-shell-content/div/div[2]/div/div[2]/coral-columnview/coral-columnview-column[3]/coral-columnview-column-content/coral-columnview-item[11]/coral-columnview-item-thumbnail

${Btn_Page_Infomation_Reward Store_AEM}          xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${Btn_Open_Properties_Reward Store_AEM}           xpath=//*[@id="pageinfo-data"]/button[1]/coral-button-label

#Reward Store Information
${select_Reward Store Type_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[3]/coral-select[1]/button[1]
${selected_Reward Store Type_Partner_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${selected_Reward Store Type_T1X_Reward_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[3]
${selected_Reward Store Type_T1X-Bulk Offer_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[4]
${selected_Reward Store Type_Category_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[5]
${selected_Reward Store Type_Targeted_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[6]
${selected_Reward Store Type_Seasonal_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[7]
${selected_Reward Store Type_All_AEM}          xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[3]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[8]
${select_Reward Store Eligibility_AEM}         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/coral-select[1]/button[1]
${selected_Reward Store Eligibility Public Reward Store_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[4]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${selected_Reward Store Eligibility Private Reward Store-Invite_AEM}     xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[4]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[3]
${input_Reward Store Order_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[5]/coral-numberinput[1]/input[1]
${input_Display Name TH_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[6]/input[1]
${input_Display Name EN_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/input[1]
${input_Title TH_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[8]/input[1]
${input_Title EN_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[9]/input[1]
${input_Short Description TH_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[10]/input[1]
${input_Short Description EN_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[11]/input[1]
${input_Description TH_Reward_Store_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[12]/div/div[2]
${input_Description EN_Reward_Store_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[13]/div/div[2]
${input_Header List Text TH_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[14]/input[1]
${input_Header List Text EN_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[15]/input[1]
${input_partner_Reward_Store_AEM}        xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[18]/div[1]/div[1]/div[1]/div[1]/input[1]
${select_Display On Explore Page_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[16]/coral-select[1]/button[1]
${selected_Display On Explore Page_False_Reward_Store_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[16]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${select_Display On Guest Mode_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[17]/coral-select[1]/button[1]/span[1]
${selected_Display On Guest Mode_False_Reward_Store_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel/coral-panel-content/div/div/div/div[17]/coral-select/coral-overlay/coral-selectlist/coral-selectlist-item[2]
${input_Active Period_Start Date_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[19]/div[1]/div[1]/coral-datepicker[1]/input[2]
${checked_No End Date_Reward_Store_AEM}       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[19]/div[1]/coral-checkbox[1]/input[1]
${input_Active Period_End Date_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[19]/div[1]/div[2]/coral-datepicker[1]/input[2]
${input_Mobile Image-TH-Light_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[20]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-TH-Dark_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[20]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-TH-Color_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[20]/div[1]/div[3]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-TH-Banner_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[20]/div[1]/div[4]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-EN-Light_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[21]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-EN-Dark_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[21]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-EN-Color_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[21]/div[1]/div[3]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Mobile Image-EN-Banner_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[21]/div[1]/div[4]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-TH-Light_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[22]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-TH-Color_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[22]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-TH-Banner_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[22]/div[1]/div[3]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-EN-Light_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[23]/div[1]/div[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-EN-Color_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[23]/div[1]/div[2]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${input_Web Image-EN-Banner_Reward_Store_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[23]/div[1]/div[3]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${btn_done_create_Reward_Store_AEM}    xpath=/html/body/coral-dialog/div[2]/form/div/div/coral-dialog-header/div/button[4]
${btn_Submit_Preview_Page_Reward_Store_AEM}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/button[1]
#Edit Reward Store Information
${btn_Submit_e_Preview_Page_Reward_Store_AEM}    xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[3]/button[1]/coral-button-label[1]
${btn_Edit_Preview_Page_Reward_Store_AEM}    xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[1]/button[1]/coral-button-label[1]

${Description_th_AEM}   "ซื้อแพ็กเกจ 1 Day Escape เพียง 1,600 บาท (ปกติ 3,209 บาท) เมื่อแลก 8,000 บาท ที่ Yunomori Onsen ; Spa สาขาสุขุมวิท ซอย 26 และสาทร ซอย 10 /n ในแพ็กเกจประกอบด้วย /n 1. Day pass สำหรับแช่ออนเซ็น /n 2. บอดี้ สครับ 60 นาที  /n 3. นวดอโรมา 90 นาที /n 4. เซตเมนู เลือก 1 อย่าง; Aburi Wagyu Don, Hotate Ikura Don หรือ Kurobuta Steak รับประทานคู่กับเครื่องดื่ม ชาเขียวร้อน หรือเย็น"
${Description_en_AEM}   "Get 1 Day Escape package only 1,600 Baht (from 3,209 Baht) when redeem 8,000 points at Yunomori Onsen ; Spa; Sukhumvit Soi 26 and Sathorn Soi 10. /n In package included /n 1. Day pass onsen ticket /n 2. 60 mins. Body Scrub /n 3. 90 mins. Aroma massage /n 4. Selected 1 Set Menu (food and drink) /n Pick one from these selection; /n Food /n - Aburi Wagyu Don /n - Hotate Ikura Don /n - Kurobuta Steak  /n Drink /n - Hot Green Tea /n - Iced Green Tea"

#editoffer
${btn_Close_category_3_AEM}      xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[7]/coral-select[1]/coral-taglist[1]/coral-tag[3]/button[1]/coral-icon[1]
${btn_Close_category_2_AEM}      xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[7]/coral-select/coral-taglist/coral-tag[2]/button/coral-icon
${btn_delete_Mobile_Images_TH_AEM}    xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[21]/div/div/coral-multifield/coral-multifield-item/button[1]/coral-icon
${btn_delete_Mobile_Images_EN_AEM}    xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/div/div[22]/div/div/coral-multifield/coral-multifield-item/button[1]/coral-icon
${btn_delete_2_Associated Reward Store_AEM}    xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[6]/div/div/div/ul[1]/li[2]/button/i
${btn_delete_1_Associated Reward Store_AEM}    xpath=/html/body/coral-dialog/div[2]/form/coral-dialog-content/div/coral-tabview/coral-panelstack/coral-panel[3]/coral-panel-content/div/div/div/div[5]/div/div/div/ul[1]/li/button/i
${btn_delete_2_Child Reward Associated_AEM}    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/form[1]/coral-dialog-content[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[3]/coral-panel-content[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/ul[1]/li[2]/button[1]/i[1]





































































































































































































































































































































































































































































































































































































































































































































































































