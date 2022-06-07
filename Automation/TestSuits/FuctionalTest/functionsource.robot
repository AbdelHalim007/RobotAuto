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
Click from the menu
    Click Element    class:cat_name_in_menu