*** Settings ***
Library     SeleniumLibrary
Resource    ./resource.robot

*** Test Cases ***
Login should pass
    Open login page
    Sleep    1s
    Give Username   demo
    Give Password   mode
    Click Button  login_button
    Sleep    2s
    Click the Login button
    Title should be    Website Designe-12240342|MazadQatar
    [Teardown]  Close browser

Login should fail
    Open login page
    Input text  username_fiel d    demos
    Input text  password_field   mode
    Click Button  login_button
    Sleep    3s
    Title should be    MazadQatar Login
    Click Link   logout

 *** Keywords ***

Welcome Page should be opened
    Title should be    Welcome Page



