*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    HttpLibrary.HTTP
Library    RequestsLibrary

*** Variable ***
${TestResult_Location_API}     ${EXECDIR}${/}ARTICLES_API.json


${Title Articles1}                                       TEST 1
${Articles URL 1}                                        test-1
${Title Articles2}                                       TEST 2
${Articles URL 2}                                        test-2
${Title Articles3}                                       TEST 3
${Articles URL 3}                                        test-3
${Title Articles4}                                       TEST 4
${Articles URL 4}                                        test-4
${Title Articles5}                                       TEST 5
${Articles URL 5}                                        test-5
${Title Articles6}                                       TEST 6
${Articles URL 6}                                        test-6

${Title ArticlesTH1}                                       ทดสอบ 1
${Articles URL TH1}                                        _-1
${Title ArticlesTH2}                                       ทดสอบ 2
${Articles URL TH2}                                        _-2
${Title ArticlesTH3}                                       ทดสอบ 3
${Articles URL TH3}                                        _-3
${Title ArticlesTH4}                                       ทดสอบ 4
${Articles URL TH4}                                        _-4
${Title ArticlesTH5}                                       ทดสอบ 5
${Articles URL TH5}                                        _-5
${Title ArticlesTH6}                                       ทดสอบ 6
${Articles URL TH6}                                        _-6

###
${Category Listing Name}                                 T1X_Privileges
${Category title}                                        sit_t1x_shopping
${btn Create Action Publish}                             xpath=/html/body/coral-shell/coral-shell-content/div/div[1]/betty-titlebar/betty-titlebar-secondary/button[3]
${Card Category Listing Page}                            xpath=/html/body/form/div/coral-panelstack/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[5]/coral-card/coral-card-asset/img
${btn Next}                                              xpath=//*[@id="coral-id-11"]/coral-panel[1]/coral-panel-content/div/button
${input Category Listing title}                          xpath=//*[@id="coral-id-19"]
${input Category Listing Name}                           xpath=//*[@id="coral-id-20"]
${input Category Listing Description}                    xpath=//*[@id="coral-id-21"]
${input header title}                                    xpath=//*[@id="coral-id-22"]
${input Short Description}                               xpath=//*[@id="coral-id-23"]
${input Description}                                     xpath=//*[@id="coral-id-24"]
${input Header List Text}                                xpath=//*[@id="coral-id-25"]
${input order Category Listing}                          xpath=//*[@id="coral-id-26"]
${input Featured Image}                                  xpath=//*[@id="coral-id-27"]
${click Image}                                           xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[6]/foundation-autocomplete/coral-overlay/coral-buttonlist/button
${btn Category Details}                                  xpath=//*[@id="coral-id-18"]/coral-tab-label
${btn add benner}                                        xpath=//*[@id="coral-collection-id-2"]/button/coral-button-label
${input benner Image}                                    xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[7]/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/foundation-autocomplete/div/div/input
${click benner Image}                                    xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[7]/div/coral-multifield/coral-multifield-item/coral-multifield-item-content/foundation-autocomplete/coral-overlay/coral-buttonlist/button
${btn open}                                              xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[1]/coral-button-label
${Check box Paginate}                                    xpath=//*[@id="coral-id-30"]/coral-panel-content/div/div/coral-checkbox
${Edit Check box Paginate}                               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[1]/input[1]
${btn create}                                            xpath=//*[@id="coral-id-11"]/coral-panel[2]/coral-panel-content/div/button[2]
${Card Category Page}                                    xpath=//*[@id="coral-id-12"]/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[4]/coral-card/coral-card-asset/img
${Card Article API}                                      xpath=//*[@id="coral-id-12"]/coral-panel[1]/coral-panel-content/div/div/coral-masonry/coral-masonry-item[6]/coral-card/coral-card-asset/img
${input header title Article}                            xpath=//*[@id="coral-id-23"]
${input Short Description Article}                       xpath=//*[@id="coral-id-24"]
${input Header List Text Article}                        xpath=//*[@id="coral-id-25"]
${Check box Display on Highlight}                        xpath=//*[@id="coral-id-26"]
${input Publish Date}                                    xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[5]/coral-datepicker/input[2]
${input Featured Image}                                  xpath=//*[@id="coral-id-36"]
${input Featured Image Article}                          xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[6]/foundation-autocomplete/div/div/input
${input Featured Image Alt}                              xpath=//*[@id="coral-id-37"]
${input Author}                                          xpath=//*[@id="coral-id-38"]
${input Order Article}                                   xpath=//*[@id="coral-id-39"]
${btn Article Tag}                                       xpath=//*[@id="coral-id-94"]/coral-panel-content/div/div/div[10]/foundation-autocomplete/div/div/span/button
${Tag Shopping}                                          xpath=//*[@id="cq-ui-tagfield-picker-collection"]/coral-columnview-column/coral-columnview-column-content/coral-columnview-item[1]/coral-columnview-item-thumbnail
${Tag Promote}                                           xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${Tag Partner Category}                                  xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[1]/coral-columnview-column-content[1]/coral-columnview-item[3]/coral-columnview-item-content[1]
${btn Select}                                            xpath=/html/body/coral-dialog/div[2]/coral-dialog-content/form/div[1]/div/div[2]/button[2]
${btn offer Tag}                                         xpath=//*[@id="coral-id-94"]/coral-panel-content/div/div/div[11]/foundation-autocomplete/div/div/span/button
${Tag The 1 Central}                                     xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[1]/coral-columnview-column-content[1]/coral-columnview-item[5]/coral-columnview-item-content[1]
${Tag The1 Central TH}                                   xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[1]/coral-columnview-column-content[1]/coral-columnview-item[5]/coral-columnview-item-thumbnail[1]
${Tag Standard}                                          xpath=//*[@id="cq-ui-tagfield-picker-collection"]/coral-columnview-column/coral-columnview-column-content/coral-columnview-item[4]/coral-columnview-item-thumbnail/coral-icon
${Tag Article}                                           xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[7]/coral-columnview-item-content[1]
${Tag Heroscope}                                         xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${Tag Offer}                                             xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[2]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-content[1]
${Tag Category}                                          xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[1]/coral-columnview-item-content[1]
${Tag Restaurant & Cafe}                                 xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[2]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${Tag Top 10}                                            xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[3]/coral-columnview-column-content[1]/coral-columnview-item[2]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${Tag Beauty Service}                                    xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[4]/coral-columnview-column-content[1]/coral-columnview-item[4]/coral-columnview-item-thumbnail[1]/coral-icon[1]
${input File Attachment}                                 xpath=//*[@id="coral-id-42"]
${Check box Article Campaign}                            xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[3]/input[1]
${input Button Text}                                     xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[15]/input
${input Contact Text}                                    xpath=/html/body/form/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[16]/input
${Select Reward Store}                                   xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/div[1]/div[1]/input[1]
${Edit Check btn Reward Store}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/div[1]/div[1]/span[1]/button[1]/i[1]
${Edit All Reward}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/div[1]/ul[1]/li[1]
${Check btn Reward Store}                                xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/div[1]/div[1]/span[1]/button[1]
${Select Reward Store The 1 Exclusive}                   xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/div[1]/ul[1]/li[2]
${Select All Reward Store}                               xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[13]/div[1]/ul[1]/li[1]
${btn Create Article}                                    xpath=/html/body/form/div/div/coral-panelstack/coral-panel[2]/coral-panel-content/div/button[2]
${input Description Article}                             xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[3]/div[1]/div[2]/p[1]
${input Terms & Condition}                               xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-panelstack/coral-panel[2]/coral-panel-content/div/div/div[6]/div/div[2]
${input Additional Section Header}                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/input[1]
${input Additional Section Free Text}                    xpath=//body/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]
${Save&Close}                                            xpath=/html/body/div[1]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[2]/coral-buttongroup/button[1]
${btn Article Details}                                   xpath=//coral-tab-label[contains(text(),'Article Details')]
${Check box T1X Article}                                 xpath=//*[@id="coral-id-94"]/coral-panel-content/div/div/coral-checkbox[1]
${Select Click Action}                                   xpath=//button[@id='coral-id-44']
${Select Click Action Code}                              xpath=//coral-selectlist-item[contains(text(),'Code')]
${Select Click Action Redirect URL}                      xpath=//*[@id="coral-id-45"]/coral-selectlist-item[4]
${Select Click Action Call}                              xpath=//coral-selectlist-item[contains(text(),'Call')]
${Select Click Action Email}                             xpath=//*[@id="coral-id-45"]/coral-selectlist-item[3]
${Btn_Page_Infomation_Optin_Campaign_AEM}                xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${btn open Success}                                      xpath=/html/body/coral-dialog/div[2]/coral-dialog-footer/button[2]
${btn Publish Page}                                      xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[4]
${btn Preview}                                           xpath=//*[@id="Content"]/div[1]/coral-actionbar/coral-actionbar-secondary/coral-actionbar-item[3]/button
${btn Publish Success}                                   xpath=/html/body/form/div/div/coral-panelstack/coral-panel/coral-panel-content/div/button
${btn open properties}                                   xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[3]/coral-popover/div[3]/coral-popover-content/div/button[1]
${input Button Text Edit}                                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[18]/input[1]
${Edit title}                                            xpath=//*[@id="coral-id-6"]
${Edit Header Title}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/input[1]
${Edit order}                                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[12]/coral-numberinput[1]/input[1]
#Edit on Article detail
${Edit Add benner Articles}                              xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/div[1]/coral-multifield[1]/button[1]/coral-button-label[1]
${Edit benner Image Article}                             xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit benner Image2 Article}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/div[1]/coral-multifield[1]/coral-multifield-item[2]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
#Edit on Category detail
${Edit Add banner}                                       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/coral-multifield[1]/button[1]/coral-button-label[1]
${Edit banner Image}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/coral-multifield[1]/coral-multifield-item[1]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit banner Image2}                                    xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/coral-multifield[1]/coral-multifield-item[2]/coral-multifield-item-content[1]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit Article Details}                                  xpath=//*[@id="coral-id-4"]/coral-tab-label
${Edit Save&Close}                                       xpath=/html[1]/body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]
${Edit Save&Close2}                                      xpath=/html[1]/body[1]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[2]/coral-buttongroup[1]/button[1]
${Edit Article Details2}                                 xpath=/html/body/div[1]/div[2]/div/div/form/div/coral-tabview/coral-tablist/coral-tab[2]
${Edit check box T1X Article}                            xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[1]/input[1]
${Edit File Attachment}                                  xpath=//input[@id='coral-id-30']
${Edit Contact Text}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[19]/input[1]
${Edit Publish Date}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[8]/coral-datepicker[1]/input[2]
${Edit Select Reward Store}                              xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[16]/div[1]/div[1]/input[1]
${Edit URL}                                              xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[3]/input[1]
${Edit Featured Image Article}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[9]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit Feature Image Category}                           xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[6]/foundation-autocomplete[1]/div[1]/div[1]/input[1]
${Edit order category}                                   xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[5]/coral-numberinput[1]/input[1]
${Edit btn Article Tag}                                  xpath=//*[@id="coral-id-5"]/coral-panel-content/div/div/div[13]/foundation-autocomplete/div/div/span/button
${Edit btn Select}                                       xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/form[1]/div[1]/div[1]/div[2]/button[2]/coral-button-label[1]
${Edit btn offer tag}                                    xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/foundation-autocomplete[1]/div[1]/div[1]/span[1]/button[1]
${Click_Publish_Article}                                 xpath=/html[1]/body[1]/form[1]/div[1]/div[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/button[1]
${Btn_Open_Properties}                                   xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/coral-actionbar-item[3]/coral-popover[1]/div[3]/coral-popover-content[1]/div[1]/button[1]
${click btn Select Action}                               xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[17]/coral-select[1]/button[1]
${Click Content Text}                                    xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[19]/input[1]
${Check box Article Campaign Edit}                       xpath=//body/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/coral-checkbox[3]/span[1]
${Click Action Show Membership Card Edit}                xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[17]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[1]
${Click Action Show Membership Card}                     xpath=/html[1]/body[1]/form[1]/div[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[14]/coral-select[1]/coral-overlay[1]/coral-selectlist[1]/coral-selectlist-item[1]
${Click Action Edit}                                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[2]/coral-panel-content[1]/div[1]/div[1]/div[17]/coral-select[1]/button[1]/span[1]
${btn edit}                                              xpath=/html[1]/body[1]/div[3]/div[2]/div[1]/coral-actionbar[1]/coral-actionbar-secondary[1]/coral-actionbar-item[1]/button[1]
${btn drag components here}                              xpath=/html[1]/body[1]/div[3]/div[2]/div[2]/div[2]/div[2]/div[1]
${btn editabletoolbar}                                   xpath=/html[1]/body[1]/div[3]/div[2]/div[2]/div[2]/div[1]/button[1]
${Insert New Component Image}                            xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/coral-selectlist[1]/coral-selectlist-group[1]/coral-selectlist-item[1]
${Insert New Component Text}                             xpath=/html[1]/body[1]/coral-dialog[1]/div[2]/coral-dialog-content[1]/coral-selectlist[1]/coral-selectlist-group[1]/coral-selectlist-item[2]
${Insert New Component Image edit}                       xpath=/html/body/div[3]/div[2]/div[2]/div[2]/div[1]/button[1]
${input New Component Text}                              xpath=/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]
${btn New Component Text}                                xpath=/html[1]/body[1]/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]
${btn tick right}                                        xpath=/html[1]/body[1]/div[3]/div[2]/div[2]/div[3]/div[1]/div[1]/coral-buttongroup[1]/button[7]
${btn editabletoolbar text}                              xpath=/html[1]/body[1]/div[4]/div[2]/div[2]/div[2]/div[1]/button[1]
${Btn_Page_Infomation_article_AEM}                       xpath=/html/body/div[3]/div[2]/div[1]/coral-actionbar/coral-actionbar-primary/coral-actionbar-item[2]/a/coral-icon
${input Category Listing title_edit}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-panelstack[1]/coral-panel[1]/coral-panel-content[1]/div[1]/div[1]/section[1]/div[1]/div[1]/input[1]
${link_Publish API_Article_AEM}                          xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/a[1]
${click btn Category Listing Page}                       xpath=//body/coral-shell[1]/coral-shell-content[1]/div[1]/div[2]/div[1]/div[2]/coral-columnview[1]/coral-columnview-column[5]/coral-columnview-column-content[1]/coral-columnview-item[42]/coral-columnview-item-thumbnail[1]/img[1]
${click btn Properties}                                  xpath=//body[1]/div[1]/div[1]/coral-actionbar[1]/coral-actionbar-primary[1]/coral-actionbar-item[3]/button[1]/coral-button-label[1]
${Category Details_edit}                                 xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]/coral-tabview[1]/coral-tablist[1]/coral-tab[2]/coral-tab-label[1]

