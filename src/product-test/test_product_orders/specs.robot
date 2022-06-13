*** Settings ***
Library     RequestsLibrary

*** Test Cases ***

Get Product Orders
    ${response}=    GET     https://testnet10.hash.green/api/product/liveness
    Status Should Be    200     ${response}

Get Product Specific Order
    ${response}=    GET     https://testnet10.hash.green/api/product/readiness
    Status Should Be    200     ${response}
