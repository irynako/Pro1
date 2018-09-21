*** Settings ***
Documentation    Suite description

*** Variables ***
${LOGIN URL} =  https://www.euro.com.pl
${BROWSER} =  Chrome

*** Keywords ***
Browser123
Open Browser  ${LOGIN URL}  ${BROWSER}