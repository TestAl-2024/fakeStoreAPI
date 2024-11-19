# Created by alifyusof at 19/11/2024
*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***

*** Test Cases ***
Update Product
    ${payload}=     Set Variable    '{'title': 'test product', 'price': 13.5}'
    ${response}=    Put request    ${PRODUCTS_ENDPOINT}/1    ${payload}
    Should be equal as strings    ${response.status_code}   201
    Log   ${response.json()}