# Created by alifyusof at 19/11/2024
*** Settings ***
Library    RequestsLibrary

*** Variables ***
${USERS_ENDPOINT}    /users
${PRODUCTS_ENDPOINT}    /products
${SORT_ORDER}   asc

*** Keywords ***
Get request
    [Arguments]    ${endpoint}
    ${response}=    GET    ${BASE_URL}${endpoint}
    RETURN   ${response}


Post request
    [Arguments]    ${endpoint}  ${payload}
    ${response}=    POST    ${BASE_URL}${endpoint}  headers=${headers}  json=${payload}
    RETURN    ${response}

Put request
    [Arguments]    ${endpoint}  ${payload}
    ${response}=    PUT    ${BASE_URL}${endpoint}  headers=${headers}  json=${payload}
    RETURN    ${response}

Delete request
    [Arguments]    ${endpoint}
    ${response}=    DELETE    ${BASE_URL}${endpoint}
    RETURN    ${response}
