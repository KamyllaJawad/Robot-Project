*** Settings ***
Library    RequestsLibrary
Resource  ../variables/sap_variables.robot


*** Keywords ***
Iniciar Sessão SAP
    Create Session    sap    ${BASE_URL}    headers=${HEADERS}

Buscar Lista de Organizações
    [Arguments]    ${endpoint}=${RESOURCE}
    ${response}=    GET On Session    sap    ${endpoint}
    Should Be Equal As Strings    ${response.status_code}    200
    [Return]    ${response}

Buscar Organização por ID
    [Arguments]    ${id}
    ${endpoint}=    Set Variable    ${RESOURCE}('${id}')
    ${response}=    GET On Session    sap    ${endpoint}
    Should Be Equal As Strings    ${response.status_code}    200
    [Return]    ${response}

Verificar CompanyCode da Organização 6666
    [Arguments]    ${response}
    ${json}=    Call Method    ${response}    json
    FOR    ${item}    IN    @{json['d']['results']}
        Run Keyword If    '${item["SalesOrganization"]}' == '6666'    Should Be Equal As Strings    ${item["CompanyCode"]}    6666
    END
