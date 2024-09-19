** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/importSubcontractorsVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***

ASSOCIATION OF COLUMNS SUBCONTRACTORS 
    MAPPING FUNCTION                ${SIREN_FIELD}                              ${SIREN_VALUE}
    MAPPING FUNCTION                ${COMPANY_NAME_FIELD}                       ${COMPANY_NAME_VALUE}
    MAPPING FUNCTION                ${LEGAL_FORM_FIELD}                         ${LEGAL_FORM_VALUE}
    MAPPING FUNCTION                ${ADDRESS_FIELD}                            ${ADDRESS_VALUE}
    MAPPING FUNCTION                ${ZIP_CODE_FIELD}                           ${ZIP_CODE_VALUE} 
    MAPPING FUNCTION                ${CITY_NAME_FIELD}                          ${CITY_NAME_VALUE} 
    MAPPING FUNCTION                ${RCS_PLACE_FIELD}                          ${RCS_PLACE_VALUE}
    MAPPING FUNCTION                ${RCS_NUMBER_FIELD}                         ${RCS_NUMBER_VALUE}
    MAPPING FUNCTION                ${REPRESENTATIVE_FIELD}                     ${REPRESENTATIVE_VALUE}
    MAPPING FUNCTION                ${FONCTION_FIELD}                           ${FONCTION_VALUE}
    MAPPING FUNCTION                ${CAPITAL_FIELD}                            ${CAPITAL_VALUE}
    MAPPING FUNCTION                ${BANK_ACCOUNT_FIELD}                       ${BANK_ACCOUNT_VALUE}
    MAPPING FUNCTION                ${BIC_FIELD}                                ${BIC_VALUE}
    MAPPING FUNCTION                ${IBAN_FIELD}                               ${IBAN_VALUE}
    MAPPING FUNCTION                ${CONTACT_FIELD}                            ${CONTACT_VALUE}



Clean Up Imported Data
    [Documentation]  This keyword deletes previously imported collaborator data
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}$${SUBCONTRACTOR_ENDPOINT}?search=${UNIQUE_PREFIX}
    ${response}=  GET  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  200
    ${subcontractors}=  Evaluate  [item for item in $response.json()['data']['data']]  json
    FOR  ${subcontractor}  IN  @{subcontractors}
        ${subcontractor_id}=  Set Variable  ${subcontractor['uuid']}
        DELETE Collaborator  ${subcontractor_id}
    END

DELETE Collaborator
    [Arguments]  ${subcontractor_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${SUBCONTRACTOR_ENDPOINT}/${subcontractor_id}/for_tests
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  201