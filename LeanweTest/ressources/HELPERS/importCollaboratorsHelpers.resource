*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/importCollaboratorsVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
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
    [Documentation]  This keyword deletes previously imported collaborator data
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${EMPLOYEES_ENDPOINT}?search=${UNIQUE_PREFIX}
    ${response}=  GET  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  200
    ${collaborators}=  Evaluate  [item for item in $response.json()['data']['data']]  json
    FOR  ${collaborator}  IN  @{collaborators}
        ${collaborator_id}=  Set Variable  ${collaborator['uuid']}
        DELETE Collaborator  ${collaborator_id}
    END

DELETE Collaborator
    [Arguments]  ${collaborator_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${EMPLOYEES_ENDPOINT}/${collaborator_id}/for_tests
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  201