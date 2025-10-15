** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/importSubcontractorsVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
MAPPING FUNCTION
    [Arguments]    ${FIELD}    ${CSV_TITLE} 
    Click Element    ${FIELD}
    Click Element    ${CSV_TITLE}
    Sleep   2s

ASSOCIATION OF COLUMNS SUBCONTRACTORS 
 
      MAPPING FUNCTION                ${COMPANY_NAME_FIELD}                       ${COMPANY_NAME_VALUE}
      MAPPING FUNCTION                ${ADDRESS_FIELD}                            ${ADDRESS_VALUE}
      MAPPING FUNCTION                ${ZIP_CODE_FIELD}                           ${ZIP_CODE_VALUE} 
    # MAPPING FUNCTION                ${LEGAL_FORM_FIELD}                         ${ZIP_CODE_VALUE} 
    # MAPPING FUNCTION                ${CITY_NAME_FIELD}                          ${CITY_NAME_VALUE} 
    # MAPPING FUNCTION                ${SIREN_FIELD}                              ${SIREN_VALUE}
    # MAPPING FUNCTION                ${RCS_PLACE_FIELD}                          ${RCS_PLACE_VALUE}
    # MAPPING FUNCTION                ${RCS_NUMBER_FIELD}                         ${RCS_NUMBER_VALUE}
    # MAPPING FUNCTION                ${REPRESENTATIVE_FIELD}                     ${REPRESENTATIVE_VALUE}
    # MAPPING FUNCTION                ${FONCTION_FIELD}                           ${FONCTION_VALUE}
    # MAPPING FUNCTION                ${CAPITAL_FIELD}                            ${CAPITAL_VALUE}
    # MAPPING FUNCTION                ${BANK_ACCOUNT_FIELD}                       ${BANK_ACCOUNT_VALUE}
    # MAPPING FUNCTION                ${BIC_FIELD}                                ${BIC_VALUE}
    # MAPPING FUNCTION                ${IBAN_FIELD}                               ${IBAN_VALUE}
    # MAPPING FUNCTION                ${CONTACT_FIELD}                            ${CONTACT_VALUE}



Clean Up Imported Data
    [Documentation]  This keyword deletes previously imported subcontractor data
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${SUBCONTRACTOR_ENDPOINT}?page=1&keyword="${UNIQUE_PREFIX}"
    ${response}=  GET  ${url}  headers=${headers}
    Should Be Equal As Strings  ${response.status_code}  200
    Log    ${response.text}
    Log    ${response.json()['data']['data']}
    ${subcontractors}=  Evaluate  [item for item in $response.json()['data']['data']]  json
    
    Log  ${subcontractors}
    FOR  ${subcontractor}  IN  @{subcontractors}
        ${subcontractor_id}=  Set Variable  ${subcontractor['uuid']}
        DELETE SUBCONTRACTOR  ${subcontractor_id}
    END

DELETE SUBCONTRACTOR
    [Arguments]  ${subcontractor_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${SUBCONTRACTOR_ENDPOINT}/${subcontractor_id}
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${url}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  201

WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
    Wait Until Element Is Visible    ${SNACKBAR_SUCCESS}    
    Element Should Contain                     ${SNACKBAR_SUCCESS}                       ${IMPORT_SUCESS_NOTIFICATION}