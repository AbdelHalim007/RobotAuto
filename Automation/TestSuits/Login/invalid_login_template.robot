*** Settings ***
Resource     invalid_login.robot
Resource     resource.robot


Test Template   Login should fail
Suite Setup     Open login page
Suite Teardown  Close Browser

*** Test Cases ***      USERNAME    PASSWORD
Invalid_username        invalid     Venom007
Invalid_password        demo        invalid
Both invalid            invalid     invalid
Empty username          ${EMPTY}    Venom007
Empty password          mode        ${EMPTY}
Both Empty              ${EMPTY}    ${EMPTY}
Correct Both            98013711    Venom007
 







