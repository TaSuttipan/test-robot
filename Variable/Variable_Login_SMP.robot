*** Settings ***
Library    Selenium2Library

*** Variable ***
#Login SMP
${url_SMP}      https://mmc-centralgroup.stg-sessionm.com/accounts/sign_in
${input_email_SMP}              xpath=//*[@id="account_email"]
${email_SMP}             auttapol.w@vasup.co.th
${input_password_SMP}               xpath=//*[@id="account_password"]
${password_SMP}              ZZ0105xx-
${btn_login_SMP}                xpath=//*[@id="account_sign_in_submit"]
