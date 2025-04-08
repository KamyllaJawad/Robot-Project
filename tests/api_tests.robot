*** Settings ***
Documentation     API Test Suite
Library           RequestsLibrary
Library           Collections


*** Test Cases ***
Teste GET de comentários de um post
    [Documentation]    Verifica se os comentários do post com ID 1 são retornados corretamente
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    GET On Session    jsonplaceholder    /comments    params=postId=1
    Status Should Be    200    ${response}
    ${json}=    Set Variable    ${response.json()}
    Should Not Be Empty    ${json}
    ${first_comment}=    Set Variable    ${json}[0]
    Dictionary Should Contain Key    ${first_comment}    postId
    Dictionary Should Contain Key    ${first_comment}    id
    Dictionary Should Contain Key    ${first_comment}    name
    Dictionary Should Contain Key    ${first_comment}    email
    Dictionary Should Contain Key    ${first_comment}    body


