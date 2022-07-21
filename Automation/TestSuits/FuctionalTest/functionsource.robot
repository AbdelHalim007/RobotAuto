*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://en.mzadqatar.com/
${DELAY}    0
${BROWSER}           Chrome

*** Keywords ***
Open login page
    Open Browser  ${URL}     ${BROWSER}
    Maximize Browser Window
    Set Selenium speed  ${DELAY}

Click the Categorie button
     Click Element   xpath=//li[@id='show_category_list']
     Sleep    2
#Click from the menu
 #   Click Element    class:menu_icon
Click in a label
    Click Element   xpath=//span[contains(text(),'Cars')]