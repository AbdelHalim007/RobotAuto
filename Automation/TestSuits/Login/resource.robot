*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://en.mzadqatar.com/login
${DELAY}    0
${BROWSER}           Chrome

*** Keywords ***
Open login page
    Open Browser  ${URL}     ${BROWSER}
    Maximize Browser Window
    Set Selenium speed  ${DELAY}
    
Give Username
    [Arguments]    ${username}
    Input text    id=user_login    ${username}

Give Password
    [Arguments]    ${password}
    Input text    id=user_password    ${password}

Click the Login button
     Click Button  id=login_button
Login should fail
    [Arguments]    ${user}    ${pass}
    Open login page
    Give Username    ${user}
    Give Password   ${pass}
    Click the Login button
    Title should be     MzadQatar Login
    [Teardown]  Close browser

Login should pass
    [Arguments]    ${user}    ${pass}
    Open login page
    Give Username    ${user}
    Give Password   ${pass}
    Click the Login button
    Sleep    3
    Title should be     Biggest marketplace in Qatar | Mzad Qatar
    [Teardown]  Close browser
