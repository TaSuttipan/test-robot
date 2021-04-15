*** Settings ***
Library    Selenium2Library

*** Variable ***
#Login AEM
${url_AEM}     https://uatcreator.the1.co.th
${username_AEM}     test-approver
${password_AEM}     ApproverP@ssw0rd321!@#
#${url_AEM}     https://creator.the1.co.th/
#${username_AEM}     the1-support
#${password_AEM}     9qC&)~q].z7yd^Kc^kj8L0E1
${input_user_AEM}     xpath=/html[1]/body[1]/div[1]/div[3]/div[2]/coral-accordion[1]/coral-accordion-item[1]/div[2]/coral-accordion-item-content[1]/form[1]/div[1]/input[1]
${input_pass_AEM}     xpath=/html[1]/body[1]/div[1]/div[3]/div[2]/coral-accordion[1]/coral-accordion-item[1]/div[2]/coral-accordion-item-content[1]/form[1]/div[2]/input[1]
${btn_sign_in_locally_AEM}     xpath=/html[1]/body[1]/div[1]/div[3]/div[2]/coral-accordion[1]/coral-accordion-item[1]/div[1]/div[1]/coral-accordion-item-label[1]
${btn_sign_in_AEM}     xpath=/html[1]/body[1]/div[1]/div[3]/div[2]/coral-accordion[1]/coral-accordion-item[1]/div[2]/coral-accordion-item-content[1]/form[1]/button[1]/coral-button-label[1]
#name of robot
