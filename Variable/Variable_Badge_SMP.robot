*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${NameCampaign}                                          SIT_BadgeV10
${badge_name_smp_Activated}                              SIT_BadgeV3_activated;;604800
${badge_name_smp_Inprogress}                             BDG_Robot_Inprogress;;52596000
${badge_name_smp_Achieved}                               BDG_20201111_SIT_BadgeV3;;604800
${module_campaign}                                       xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/ul[1]/li[2]/ul[1]/li[1]/a[1]/h3[1]
${btn_createcampaign}                                    xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/button[1]
${btn_promotion}                                         xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]
${add_namecampaign}                                      xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/input[1]
${btn_create}                                            xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/button[2]/span[1]/span[1]/span[1]
${btn_addbehavior}                                       xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/button[1]
${input_namebehavior}                                    xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[1]/div/input
${btn_addrule}                                           xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/button
${select_event}                                          xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[1]/div[1]/span/input
${select_customevent}                                    xpath=/html/body/div[7]/div/div/div/ul/li[4]
${select_engages}                                        xpath=/html/body/div[7]/div/div/div/ul[2]/li
${btn_Restrictions}                                      xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[1]
${input_customeventname}                                 xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div[1]/input
${btn_addoutcome}                                        xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[2]/div/div[1]/h3/button
${btn_advanced}                                          xpath=/html/body/div[8]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/span
${input_tags}                                            xpath=//input[@class='ant-select-search__field']
${btn_OK}                                                xpath=/html/body/div[8]/div/div[2]/div/div/div[2]/div[2]/button
${btn_Save}                                              xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[2]/div/button
${select_customevent2}                                   xpath=/html/body/div[8]/div/div/div/ul/li[4]
${btn_addbehavior2}                                      xpath=//button[contains(text(),'Add Behavior')]
${select_engages2}                                       xpath=/html/body/div[8]/div/div/div/ul[2]/li
${btn_advanced2}                                         xpath=/html/body/div[9]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]
${add_TotalNumber}                                       xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div[2]/div/div[2]/div[1]/span[1]
${btn_OK2}                                               xpath=/html/body/div[9]/div/div[2]/div/div/div[2]/div[2]/button
${btn_Save2}                                             xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[2]/div/button
${btn_Getapproval}                                       xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/span[1]/button[3]
${btn_Getapproval2}                                      xpath=//*[@id="content"]/div/div/div[2]/div[2]/div[2]/div/span/button[3]
${btn_Launch}                                            xpath=/html/body/div[2]/div/div[3]/div/div/div[2]/div[2]/div[2]/div/span/button[3]
${btn_allcampaing}                                       xpath=/html/body/div[2]/div/div[3]/div/div/div[1]/span[1]/span[1]
${input_search}                                          xpath=//*[@id="content"]/div/div/div[1]/div[2]/div/div/input
${btn_search}                                            xpath=//*[@id="content"]/div/div/div[1]/div[2]/div/div/button[2]
${select_customevent3}                                   xpath=/html/body/div[9]/div/div/div/ul/li[4]
${select_engages3}                                       xpath=/html/body/div[9]/div/div/div/ul[2]/li
${btn_advanced3}                                         xpath=/html/body/div[10]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]
${btn_OK3}                                               xpath=/html/body/div[10]/div/div[2]/div/div/div[2]/div[2]/button
${btn_Save3}                                             xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[2]/div/button
${add_TotalNumber2}                                      xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div[2]/div/div[2]/div[1]/span[1]
${select_customevent3}                                   xpath=/html/body/div[8]/div/div/div/ul/li[4]
${select_engages3}                                       xpath=/html/body/div[8]/div/div/div/ul[2]/li
#${btn_advanced3}                                         xpath=/html/body/div[10]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/span
${Add Restriction}                                       xpath=/html/body/div[5]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[3]/button
${btn_Qualifying Context}                                xpath=/html/body/div[7]/div/div/ul/li[6]/span[1]
${input_Key}                                             xpath=/html[1]/body[1]/div[5]/div[1]/div[2]/div[1]/div[1]/div[2]/span[1]/span[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/input[1]
${select_Operator}                                       xpath=//*[@class='ant-select-selection__rendered]
${select_Includes}                                       xpath=/html/body/div[5]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[3]/div/div/div/div[2]
${select_Type}                                           xpath=/html/body/div[5]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[4]/div/div/div/div
${select_String}                                         xpath=/html/body/div[5]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[4]/div/div/div/div[2]
${input_Values}                                          xpath=/html[1]/body[1]/div[5]/div[1]/div[2]/div[1]/div[1]/div[2]/span[1]/span[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]
${select Purchase Events}                                xpath=/html/body/div[7]/div/div/div/ul/li[3]
${select Spend}                                          xpath=/html/body/div[7]/div/div/div/ul[2]/li[2]
${select Event Rule}                                     xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div/div[1]/div[2]/div/div/div/div
${select Total Amount}                                   xpath=//div[contains(text(),'Total Amount')]
${btn three dot}                                         xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[1]/div/div/div[1]/div/div/div/div[1]/div/div/span
${select Apply restrictions}                             xpath=/html/body/div[9]/div/div/div/div[2]/div/div/ul/li[1]
${Max Times Behavior Qualifies Towards Outcome}          xpath=/html/body/div[10]/div/div[2]/div/div[2]/div[2]/div/div[1]/div[2]/div/div
${btn restrictions save}                                 xpath=/html/body/div[10]/div/div[2]/div/div[2]/div[3]/button[2]
${btn tab Advanced Spend}                                xpath=/html/body/div[12]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]
${btn OK Outcome Spend}                                  xpath=/html/body/div[12]/div/div[2]/div/div/div[2]/div[2]/button
${btn save Spend}                                        xpath=/html/body/div[6]/div/div[2]/div/div/div[2]/span/span/div[2]/div/button
${btn_addoutcome Spend2}                                 xpath=/html/body/div[2]/div/div[3]/div/div/div[3]/div/div[2]/div/div/div/div[2]/div[1]/div[1]/div[2]/button
${select Purchase Events2}                               xpath=/html/body/div[8]/div/div/div/ul/li[3]
${select Spend2}                                         xpath=/html/body/div[8]/div/div/div/ul[2]/li[2]
${select Apply restrictions2}                            xpath=/html/body/div[10]/div/div/div/div[2]/div/div/ul/li[1]
${Max Times Behavior Qualifies Towards Outcome2}         xpath=/html/body/div[11]/div/div[2]/div/div[2]/div[2]/div/div[1]/div[2]/div/div
${btn restrictions save2}                                xpath=/html/body/div[11]/div/div[2]/div/div[2]/div[3]/button[2]
${btn tab Advanced Spend2}                               xpath=/html/body/div[13]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/span
${btn OK Outcome Spend2}                                 xpath=/html/body/div[13]/div/div[2]/div/div/div[2]/div[2]/button
${select Apply restrictions_2}                           xpath=/html/body/div[10]/div/div/div/div[2]/div/div/ul/li[1]
${select_customevent4}                                   xpath=/html/body/div[8]/div/div/div/ul/li[4]
${select_engages4}                                       xpath=/html/body/div[8]/div/div/div/ul[2]/li
${btn_advanced4}                                         xpath=/html/body/div[9]/div/div[2]/div/div/div[2]/div[1]/div[1]/div[2]
${edit datetime}                        xpath=/html[1]/body[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/span[1]
${edit datetime input}                  xpath=/html[1]/body[1]/div[5]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${select Apply restrictions spend}      xpath=/html/body/div[9]/div/div/div/div[2]/div/div/ul/li[1]
##
${btn 3dot}                     xpath=/html/body/div[2]/div/div[3]/div/div/div[2]/div/div[2]/div/div[2]/div/div/table/tbody/tr/td[10]/div/span
${btn delete campaign}          xpath=/html/body/div[5]/div/div/div/div[2]/div/div/ul/li[3]
${btn confirm delete}           xpath=/html/body/div[7]/div/div[2]/div/div[2]/div/div/div[2]/button[2]
${btn select datetime}        xpath=/html/body/div[5]/div/div/div/div/div[1]/div[1]/div[1]/div/input
${btn select datetime End}    xpath=/html/body/div[5]/div/div/div/div/div[1]/div[2]/div[1]/div/input
${btn ok datetime}            xpath=/html/body/div[5]/div/div/div/div/div[2]/div/a[2]