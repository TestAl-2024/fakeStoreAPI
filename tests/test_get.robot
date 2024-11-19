# Created by alifyusof at 19/11/2024
*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***

*** Test Cases ***
Verify Get All Products
    ${response}=    Get request    ${PRODUCTS_ENDPOINT}/1
    Should be equal as strings    ${response.status_code}   200
    Log    ${response.json()}

Verify Get Product By ID
    ${response}=    Get request    ${PRODUCTS_ENDPOINT}/1
    Should be equal as strings    ${response.status_code}   200
    Should contain    ${response.json()}    id
    Should contain    ${response.json()}    title
    Log    ${response.json()}


Verify Get Product By Categories
    ${response}=    Get request    ${PRODUCTS_ENDPOINT}/categories
    Should be equal as strings    ${response.status_code}   200
    Log    ${response.json()}

Verify Get Product Sort by ASC
    ${response}=    Get request    ${PRODUCTS_ENDPOINT}?sort=asc
    Should be equal as strings    ${response.status_code}   200
    Log    ${response.json()}