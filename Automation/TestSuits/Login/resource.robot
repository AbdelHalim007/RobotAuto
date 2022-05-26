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
