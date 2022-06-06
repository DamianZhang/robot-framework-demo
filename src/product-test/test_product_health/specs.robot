*** Settings ***
Library     RequestsLibrary

*** Test Cases ***

Check Product Liveness
    ${response}=    GET     https://testnet10.hash.green/api/product/liveness
    Status Should Be    200     ${response}
    Should Be Equal As Strings  200   ${response.json()}[code]
    Should Be Equal As Strings  ok   ${response.json()}[msg]

Check Product Readiness
    ${response}=    GET     https://testnet10.hash.green/api/product/readiness
    Status Should Be    200     ${response}
    Should Be Equal As Strings  200   ${response.json()}[code]
    Should Be Equal As Strings  ok   ${response.json()}[msg]
