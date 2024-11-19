# Created by alifyusof at 19/11/2024
*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***
Create Product Product
    [Return]    {"title": "test product", "price": 13.5, "description": "lorem ipsum set", "image": "https://i.pravatar.cc", "category": "electronic"}

*** Test Cases ***
Create New Product
    #${payload}=     Set Variable    '{"title": "test product", "price": 13.5, "description": "lorem ipsum set", "image": "https://i.pravatar.cc", "category": "electronic"}'
    ${payload}=     Create Product Product
    ${response}=    Post request    ${PRODUCTS_ENDPOINT}    ${payload}
    Should be equal as strings    ${response.status_code}   201
    Log   ${response.json()}