*** Settings ***
Library    Selenium2Library

*** Variable ***
#Offer
#Navigation
${module_Offers_SMP}        xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/ul[1]/li[3]/ul[1]/li[1]/a[1]/h3[1]
${input_search_offer_SMP}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${btn_search_offer_SMP}                 xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/button[1]
${btn_edit_offer_SMP}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[10]/span[1]/a[1]
${module_Reward Store_SMP}      xpath=/html/body/div[2]/div/div/div[2]/ul/li[3]/ul/li[2]/a/h3
${input_search_Reward Store_SMP}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[4]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${btn_search_Reward Store_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/div[4]/div[2]/div/div/div[2]/div/div[1]/div[1]/button
${field_Offer_Type_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/div[5]/div[2]/div/div/div[2]/div/div[1]/div[2]/div/div/div/div/div[2]/div/div/div[2]/table/tbody/tr/td[5]

#offer information on SMP
${field_Title_offer_SMP}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[1]/div[1]/div[1]/input[1]
${field_POS Discount ID_offer_SMP}      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[1]/div[2]/div[1]/input[1]
${field_Issuance Period_Start Date_offer_SMP}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[2]/div[1]/div[1]/input[1]
${field_Issuance Period_End Date_offer_SMP}     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[2]/div[3]/div[1]/input[1]
${field_Redemption_Start Date_offer_SMP}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[3]/div[2]/div[1]/div[1]/input[1]
${field_Redemption_End Date_offer_SMP}      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[3]/div[2]/div[3]/div[1]/input[1]
${field_Redemption_Duration_after_offer_SMP}      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[3]/div[3]/div[1]/div[1]/input[1]
${field_Redemption_Duration_after_unit_offer_SMP}      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[3]/div[3]/div[2]/div[1]/select[1]

${field_Offer Weight_offer_SMP}         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[4]/div[1]/div[1]/input[1]
${field_Point_offer_SMP}                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[5]/div[2]/div[1]/input[1]
#Custom Data
${field_siebel_points_offer_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[1]/td[2]
${field_partner_name_offer_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[4]/td[2]
${field_product_sub_type_offer_SMP}                       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[6]/td[2]
${field_point_value_offer_SMP}                            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[7]/td[2]
${field_partner_code_offer_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[8]/td[2]
${field_guest_mode_offer_SMP}                             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[9]/td[2]
${field_item_cost_offer_SMP}                              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[10]/td[2]
${field_vat_tax_offer_SMP}                                xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[11]/td[2]
${field_offer_shortdescription_en_offer_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[13]/td[2]
${field_item_price_offer_SMP}                             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[14]/td[2]
${field_description_en_offer_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[15]/td[2]
${field_pos_voucher_type_offer_SMP}                       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[16]/td[2]
${field_cash_coupon_exchange_rate_offer_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[18]/td[2]
${field_targetted_tier_offer_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[19]/td[2]
${field_fast_category_offer_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[19]/td[2]
${field_issue_channel_offer_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_tags_offer_SMP}                                   xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_offer_shortdescription_th_offer_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_product_type_offer_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_countdown_timer_offer_SMP}                        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_voucher_type_offer_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_vat_type_offer_SMP}                               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_description_th_offer_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_category_offer_SMP}                               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_partner_tag_offer_SMP}                            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]
${field_partner_point_chargel_offer_SMP}                  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[30]/td[2]



#Custom Data-Pregen
${field_siebel_points_offer_Pregen_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[1]/td[2]
${field_partner_name_offer_Pregen_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[4]/td[2]
${field_minimize_offer_offer_Pregen_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[6]/td[2]
${field_product_sub_type_offer_Pregen_SMP}                       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[7]/td[2]
${field_point_value_offer_Pregen_SMP}                            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[8]/td[2]
${field_partner_code_offer_Pregen_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[9]/td[2]
${field_guest_mode_offer_Pregen_SMP}                             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[10]/td[2]
${field_item_cost_offer_Pregen_SMP}                              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[11]/td[2]
${field_vat_tax_offer_Pregen_SMP}                                xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[12]/td[2]
${field_offer_shortdescription_en_offer_Pregen_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[14]/td[2]
${field_item_price_offer_Pregen_SMP}                             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[15]/td[2]
${field_description_en_offer_Pregen_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[16]/td[2]
${field_pos_voucher_type_offer_Pregen_SMP}                       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[17]/td[2]
${field_cash_coupon_exchange_rate_offer_Pregen_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[19]/td[2]
${field_fast_category_offer_Pregen_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_issue_channel_offer_Pregen_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_tags_offer_Pregen_SMP}                                   xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_offer_shortdescription_th_offer_Pregen_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_product_type_offer_Pregen_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_countdown_timer_offer_Pregen_SMP}                        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_voucher_type_offer_Pregen_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_vat_type_offer_Pregen_SMP}                               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_description_th_offer_Pregen_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_category_offer_Pregen_SMP}                               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]
${field_partner_tag_offer_Pregen_SMP}                            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[30]/td[2]
${field_partner_point_chargel_offer_Pregen_SMP}                  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[31]/td[2]

#Custom Data T1x-Pregen
${field_targetted_tier_offer_tier_Pregen_SMP}                   xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_fast_category_offer_tier_Pregen_SMP}                    xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_issue_channel_offer_tier_Pregen_SMP}                    xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_tags_offer_tier_Pregen_SMP}                             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_offer_shortdescription_th_offer_tier_Pregen_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_product_type_offer_tier_Pregen_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_countdown_timer_offer_tier_Pregen_SMP}                  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_voucher_type_offer_tier_Pregen_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_vat_type_offer_tier_Pregen_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_description_th_offer_tier_Pregen_SMP}                   xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]
${field_category_offer_tier_Pregen_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[30]/td[2]
${field_partner_tag_offer_tier_Pregen_SMP}                      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[31]/td[2]
${field_partner_point_chargel_offer_tier_Pregen_SMP}            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[32]/td[2]



#Custom Data T1x
${field_targetted_tier_offer_tier_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[19]/td[2]
${field_fast_category_offer_tier_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_issue_channel_offer_tier_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_tags_offer_tier_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_offer_shortdescription_th_offer_tier_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_product_type_offer_tier_SMP}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/fieldset[6]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[24]/td[2]
${field_countdown_timer_offer_tier_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_voucher_type_offer_tier_SMP}     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_vat_type_offer_tier_SMP}     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_description_th_offer_tier_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_category_offer_tier_SMP}     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]
${field_partner_point_chargel_offer_tier_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[31]/td[2]


#Custom Data Privilege
${field_partner_name_offer_Privilege_SMP}            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[3]/td[2]
${field_partner_code_offer_Privilege_SMP}            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[7]/td[2]
${field_guest_mode_offer_Privilege_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[8]/td[2]
${field_offer_shortdescription_en_offer_Privilege_SMP}          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[12]/td[2]
${field_description_en_offer_Privilege_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[14]/td[2]
${field_targetted_tier_offer_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[18]/td[2]
${field_issue_channel_offer_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[19]/td[2]
${field_tags_offer_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_offer_shortdescription_th_offer_Privilege_SMP}         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_countdown_timer_offer_Privilege_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_voucher_type_offer_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_description_th_offer_Privilege_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_category_offer_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_partner_point_chargel_offer_Privilege_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]


#Custom Data Tier-Privilege
${field_partner_name_offer_Tier_Privilege_SMP}            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[3]/td[2]
${field_partner_code_offer_Tier_Privilege_SMP}            xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[7]/td[2]
${field_guest_mode_offer_Tier_Privilege_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[8]/td[2]
${field_offer_shortdescription_en_offer_Tier_Privilege_SMP}          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[12]/td[2]
${field_description_en_offer_Tier_Privilege_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[14]/td[2]
${field_targetted_tier_offer_Tier_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[18]/td[2]
${field_issue_channel_offer_Tier_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_tags_offer_Tier_Privilege_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_offer_shortdescription_th_offer_Tier_Privilege_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_countdown_timer_offer_Tier_Privilege_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_voucher_type_offer_Tier_Privilege_SMP}     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_description_th_offer_Tier_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_category_offer_Tier_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_partner_point_chargel_offer_Tier_Privilege_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[30]/td[2]

#Custom Data Trasnfer
${field_transfer_the1_minimum_points_offer_Trasnfer_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[13]/td[2]
${field_offer_shortdescription_en_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[14]/td[2]
${field_item_price_offer_Trasnfer_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[15]/td[2]
${field_description_en_offer_Trasnfer_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[16]/td[2]
${field_transfer_partner_rate_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[20]/td[2]
${field_fast_category_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[21]/td[2]
${field_issue_channel_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[22]/td[2]
${field_tag_offer_Trasnfer_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[23]/td[2]
${field_offer_shortdescription_th_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[24]/td[2]
${field_product_type_offer_Trasnfer_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[25]/td[2]
${field_countdown_timer_offer_Trasnfer_SMP}     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[26]/td[2]
${field_voucher_type_offer_Trasnfer_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[27]/td[2]
${field_vat_type_offer_Trasnfer_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[28]/td[2]
${field_transfer_the1_rate_offer_Trasnfer_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[29]/td[2]
${field_description_th_offer_Trasnfer_SMP}      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[30]/td[2]
${field_category_offer_Trasnfer_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[31]/td[2]
${field_partner_point_chargel_offer_Trasnfer_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/fieldset[6]/div[2]/div/div/div/table/tbody/tr[33]/td[2]

${btn_Grouped Offers_offer_Trasnfer_SMP}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/ul[2]/li[2]/a[1]
${field_Number of Selections_Group_SMP}             xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[2]/div[2]/div[1]/input[1]
${field_child1_2_offer_Group_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[3]/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/table/tbody/tr[1]/td[2]
${field_child1_1_offer_Group_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[3]/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/table/tbody/tr[2]/td[2]


${tab_Creative_Offer_SMP}          xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/ul[1]/li[2]/a[1]
${field_Offer Graphic_offer_SMP}             xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[3]/div[2]/div[2]/div[4]/div[1]/div[1]/div[2]/div[4]/div[1]/input[1]


${field_child2_3_offer_Group_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[3]/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/table/tbody/tr[1]/td[2]
${field_child2_2_offer_Group_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[3]/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/table/tbody/tr[2]/td[2]
${field_child2_1_offer_Group_SMP}       xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[3]/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/table/tbody/tr[3]/td[2]

${Configure Package_Group_SMP}             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/h2
${Award On Issuance_Package_Group_SMP}             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[2]/div[1]/label
${The package is issued_Group_SMP}             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[2]/div[2]/div[2]/p[1]

#Reward Store on SMP
${select_10_entries_Reward Store_SMP}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[6]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/label[1]/select[1]
${selected_100_entries_Reward Store_SMP}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[6]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/label[1]/select[1]/option[4]
${selected_20190302_Reward_Alldeal_Reward Store_SMP}        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[6]/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div[2]/table/tbody/tr[2]/td[1]
${btn_next_Reward Store_SMP}        xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[6]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/span[5]








#Reward Store
#Navigation
${module_Reward Store_SMP}        xpath=/html/body/div[2]/div/div/div[2]/ul/li[3]/ul/li[2]/a/h3
${input_search_Reward Store_SMP}               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[4]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${btn_search_Reward Store_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/div[4]/div[2]/div/div/div[2]/div/div[1]/div[1]/button
${btn_edit_Reward Store_SMP}                   xpath=//a[contains(text(),'edit')]
#Reward Store information on SMP
${field_Title Name_Reward Store_SMP}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[2]/div[1]/div[1]/input[1]
${field_Active Period_Start Date_Reward Store_SMP}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[3]/div[1]/div[1]/input[1]
${Checked_Active Period_No End Date_Reward Store_SMP}      xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[3]/div[2]/div[1]/label[1]
${field_Active Period_End Date_Reward Store_SMP}         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[3]/div[3]/div[1]/input[1]
${radio_Access_Public_Reward Store_SMP}         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[4]/div[1]/label[1]/input[1]
${radio_Access_Limited_Reward Store_SMP}         xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/fieldset[4]/div[2]/label[1]/input[1]

${field_CategoryEn_Reward Store_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[1]/td[2]
${field_CategoryTH_Reward Store_SMP}                     xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[2]/td[2]
${field_TitleEn_Reward Store_SMP}                        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[3]/td[2]
${field_TitleTh_Reward Store_SMP}                        xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[4]/td[2]
${field_ShortDescEn_Reward Store_SMP}                    xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[5]/td[2]
${field_ShortDescTh_Reward Store_SMP}                    xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[6]/td[2]
${field_DescEn_Reward Store_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[7]/td[2]
${field_DescTh_Reward Store_SMP}                         xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[8]/td[2]
${field_HdrListEn_Reward Store_SMP}                      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[9]/td[2]
${field_HdrListTh_Reward Store_SMP}                      xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[10]/td[2]
${field_displayOnExplore_Reward Store_SMP}               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[11]/td[2]
${field_displayForGuest_Reward Store_SMP}                xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[12]/td[2]
${field_MobLightImageUrlEn_Reward Store_SMP}             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[13]/td[2]
${field_MobDarkImageUrlEn_Reward Store_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[14]/td[2]
${field_MobLightImageUrlTh_Reward Store_SMP}             xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[15]/td[2]
${field_MobDarkImageUrlTh_Reward Store_SMP}              xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[16]/td[2]
${field_MobActImageUrlEn_Reward Store_SMP}               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[17]/td[2]
${field_MobActImageUrlTh_Reward Store_SMP}               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[18]/td[2]
${field_MobBannerUrlEn_Reward Store_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[19]/td[2]
${field_MobBannerUrlTh_Reward Store_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[20]/td[2]
${field_WebImageUrlEn_Reward Store_SMP}                  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[21]/td[2]
${field_WebImageUrlTh_Reward Store_SMP}                  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[22]/td[2]
${field_WebActImageUrlEn_Reward Store_SMP}               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[23]/td[2]
${field_WebActImageUrlTh_Reward Store_SMP}               xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[24]/td[2]
${field_WebBannerUrlEn_Reward Store_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[25]/td[2]
${field_WebBannerUrlTh_Reward Store_SMP}                 xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[26]/td[2]
${field_PartnerCode_Reward Store_SMP}                    xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[27]/td[2]
${field_Type_Reward Store_SMP}                           xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[28]/td[2]
${field_Order_Reward Store_SMP}                          xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/div[1]/fieldset[8]/div/div/div/div/table/tbody/tr[29]/td[2]


