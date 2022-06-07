*** Settings ***
Library  SeleniumLibrary
Resource     ./functionsource.robot


*** Test Cases ***
Newone
    Open login page
    Click the Categorie button
    Click from the menu
#    Select From List By Label       Cars        