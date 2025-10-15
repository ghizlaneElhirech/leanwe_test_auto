*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/importCollaboratorsVariables.resource
Resource     GlobalHelpers.resource



*** Keywords ***
Authenticate User
    [Documentation]  Authenticate user and store JWT token
    ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json
    ${payload}=    Create Dictionary    email=${EMAIL-token}    password=${PASSWORD-token}

    ${response}=   POST    ${API_URL}    headers=${headers}    json=${payload}

    Log To Console    \n===== AUTH RESPONSE =====
    Log To Console    Status: ${response.status_code}
    Log To Console    Body: ${response.text}
    Log To Console    ===========================

    Should Be Equal As Strings    ${response.status_code}    200

    ${body}=    Evaluate    $response.json()    json
    ${token}=   Get From Dictionary    ${body}    token
    Set Global Variable    ${TOKEN}    ${token}


MAPPING FUNCTION
    [Arguments]    ${FIELD}    ${CSV_TITLE} 
    Click Element    ${FIELD}
    Click Element    ${CSV_TITLE}
    Sleep   2s
ASSOCIATION OF COLUMNS COLLABORATORS
    MAPPING FUNCTION                ${NAME_FIELD}                               ${NAME_VALUE}
    MAPPING FUNCTION                ${PRENOM_FIELD}                             ${PRENOM_VALUE}
    MAPPING FUNCTION                ${POST_TITLE_FIELD}                         ${POST_TITLE_VALUE}
    MAPPING FUNCTION                ${TYPE_FIELD}                               ${TYPE_VALUE}
    MAPPING FUNCTION                ${EMAIL_FIELD}                              ${EMAIL_VALUE} 
    MAPPING FUNCTION                ${TJM}                                      ${TJM_VALUE} 
    MAPPING FUNCTION                ${PHONE_FIELD}                              ${PHONE_VALUE}
    MAPPING FUNCTION                ${ADRESSE_FIELD}                            ${ADRESSE_VALUE}
    MAPPING FUNCTION                ${COUNTRY_FIELD}                            ${COUNTRY_VALUE}
    MAPPING FUNCTION                ${CITY_FIELD}                               ${CITY_VALUE}
    MAPPING FUNCTION                ${REFERENCE_FIELD}                          ${REFERENCE_VALUE}

Clean Up Imported Data
    [Documentation]  Deletes previously imported collaborator data
    ${url}=       Set Variable    ${BASE_URL}${EMPLOYEES_ENDPOINT}?search=${UNIQUE_DOMAIN}
    ${headers}=   Create Dictionary    Authorization=Bearer ${TOKEN}    Accept=application/json

    ${response}=  GET    ${url}    headers=${headers}

    Log To Console    \n===== CLEANUP RESPONSE =====
    Log To Console    URL: ${url}
    Log To Console    Status: ${response.status_code}
    Log To Console    Body: ${response.text}
    Log To Console    ===============================

    Should Be Equal As Strings    ${response.status_code}    200

    ${body}=          Evaluate    $response.json()    json
    ${data}=          Get From Dictionary    ${body}    data
    ${collaborators}=    Set Variable    
    ${collaborators}= Get From Dictionary    ${data}    data

    FOR    ${collaborator}    IN    @{collaborators}
        ${collaborator_id}=   Get From Dictionary    ${collaborator}    uuid
        DELETE Collaborator   ${collaborator_id}
    END

  


DELETE Collaborator
    [Arguments]  ${collaborator_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${EMPLOYEES_ENDPOINT}/${collaborator_id}/for_tests
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  201


WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
    Wait Until Element Is Visible    ${SNACKBAR_SUCCESS}    
    Element Should Contain                     ${SNACKBAR_SUCCESS}                       ${IMPORT_SUCESS_NOTIFICATION}
