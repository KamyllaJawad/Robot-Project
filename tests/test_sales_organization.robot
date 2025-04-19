*** Settings ***
Library           RequestsLibrary
Resource          ../resources/sap_keywords.robot
Resource  ../variables/sap_variables.robot


*** Test Cases ***
Validação do Status 200 - Lista de Organizações
    Iniciar Sessão SAP
    ${resposta}=    Buscar Lista de Organizações
    Log    ${resposta.text}


Validação com Filtro ID = 1010
    Iniciar Sessão SAP
    ${resposta}=    Buscar Organização por ID    1010
    Log    ${resposta.text}

Validação do CompanyCode da Organização 6666
    Iniciar Sessão SAP
    ${resposta}=    Buscar Lista de Organizações
    Verificar CompanyCode da Organização 6666    ${resposta}