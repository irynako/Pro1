*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Go to site
    open browser  https://www.iperfumy.pl
Login
    wait until element is visible  //*[@id = 'headerLoginLink']
    click element  //*[contains(text(),'Zaloguj się')]
User Name and Password
    wait until element is visible  //*[@id ='login-name']
    Input Username  irinka1986k@gmail.com
    Input Password  29986ira
    click element  //p[@class = 'center']/button[@type='submit']
*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    login-name    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    login-pwd    ${password}