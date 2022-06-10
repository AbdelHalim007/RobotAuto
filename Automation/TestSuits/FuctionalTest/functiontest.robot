*** Settings ***
Library  SeleniumLibrary
Resource     ./functionsource.robot


*** Test Cases ***
Newone
    Open login page
    Click the Categorie button
    #Click from the menu
    Click in a label

#    Select From List By Label       Cars        