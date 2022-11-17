*** Settings ***
Resource     ./resource.robot
Library  SeleniumLibrary

*** Test Cases ***
Invalid_username
    Login should fail   invalid    Venom007
Invalid_password
    Login should fail   98013711    invali
Both invalid
    Login should fail   Invalid    invalid
Empty username
    Login should fail   ${EMPTY}    Venom007

Empty password
    Login should fail   98013711  ${EMPTY}
Empty both
    Login should fail   ${EMPTY}    ${EMPTY}
#Both right
 #   Login should pass   98013711    Venom007

