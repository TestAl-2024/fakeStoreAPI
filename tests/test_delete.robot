# Created by alifyusof at 19/11/2024
*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***

*** Test Cases ***
Delete Product
    ${response}=    Delete request    ${PRODUCTS_ENDPOINT}/1
    Should be equal as strings    ${response.status_code}   200
    Log   ${response.json()}