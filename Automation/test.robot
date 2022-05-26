*** Settings ***

Library     SeleniumLibrary
Variables   Data.yaml

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome
${urlorange}    https://opensource-demo.orangehrmlive.com/index.php/auth/validateCredentials
${text1}         Username cannot be empty
${text2}         Password cannot be empty
${text3}         Vous devez remplir le champ Nom d'utilisateur

*** Test Cases ***

#OpenCloseBrowser
    #openbrow

TestLog
    test1
    test2
   # test3

#TestUI
 #   openbrow
  #  test1
   # test2
    #test3
    #test4

*** Keywords ***
openbrow
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Sleep   2
    close Browser
test1
    Open Browser    ${urlorange}     ${browser}
    Set Browser Implicit Wait       5
    Maximize Browser Window
    Sleep   2
    Input Text      id=txtUsername     username
    Input Text      id=txtPassword     password
    Sleep   2
    click Button        id=btnLogin
    Set Browser Implicit Wait       5
    Log             Test1 Completed
    close Browser
test2
    Open Browser    ${urlorange}     ${browser}
    Set Browser Implicit Wait       5
    Maximize Browser Window
    Sleep   2
    Input Text      id=txtPassword     password
    click Button    id=btnLogin
    #Wait Until Keyword Succeeds    5s    1s
    Wait Until Keyword Succeeds    5s    1s    Page Should Contain      id=spanMessage      ${text3}
    Log             Test2 Completed
    close Browser
test3
    Open Browser    ${urlorange}     ${browser}
    Set Browser Implicit Wait       5
    Maximize Browser Window
    Sleep   2
    Input Text      id=txtUsername     username
    click Button    id=btnLogin
    Sleep   2
    Wait Until Keyword Succeeds    5s    1s    Page Should Contain      id=spanMessage      ${text2}
    #Page Should Contain Element             xpath=//div[@id='logInPanelHeading']
    Log             Test3 Completed
    close Browser
test4
    Open Browser    ${urlorange}     ${browser}
    Set Browser Implicit Wait       5
    Maximize Browser Window
    Sleep   2
    click Button    LinkText=Forgot your password?
    Sleep   2

    Log             Test4 Completed
    close Browser


