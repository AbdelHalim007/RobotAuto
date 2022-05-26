*** Settings ***
Resource     ./resource.robot
Variables    Logindata.yaml

*** Test Cases ***
Invalid_username
    Login should fail   invalid    mode
Invalid_password
    Login should fail   demo    invali
Both invalid
    Login should fail   Invalid    invalid
Empty username
    Login should fail   ${EMPTY}    mode

Empty password
    Login should fail   mode   ${EMPTY}
Empty both
    Login should fail   ${EMPTY}    ${EMPTY}
Correct Both
    Login should pass   98013711    Venom007


*** Keywords ***
Login should fail
    [Arguments]    ${user}    ${pass}
    Open login page
    Give Username    ${user}
    Give Password   ${pass}
    Click the Login button
    Title should be     MazadQatar Login
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

Open login page
    Open Browser  ${URL}     ${BROWSER}
    Maximize Browser Window
    Set Selenium speed  ${DELAY}