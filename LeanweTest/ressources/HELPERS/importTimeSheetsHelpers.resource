*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary  
Library      Collections
Library      DateTime
Resource     ../VARIABLES/importTimeSheetsVariables.resource
Resource     GlobalHelpers.resource



*** Keywords ***

MAPPING FUNCTION
    [Arguments]    ${FIELD}    ${CSV_TITLE} 
    Click Element    ${FIELD}
    Wait Until Element Is Visible    ${CSV_TITLE}
    Click Element    ${CSV_TITLE}
    Sleep   2s
ASSOCIATION OF COLUMNS TIMESHEETS
    MAPPING FUNCTION                ${REFERENCE_COMMANDE_FIELD}                 ${REFERENCE_COMMANDE_VALUE}
    MAPPING FUNCTION                ${COLLABORATOR_FIELD}                       ${COLLABORATOR_VALUE}
    MAPPING FUNCTION                ${TYPE_ACTIVITY_FIELD}                      ${TYPE_ACTIVITY_VALUE}
    MAPPING FUNCTION                ${TYPE_ACTIVITY_NAME_FIELD}                 ${TYPE_ACTIVITY_NAME_VALUE}
    MAPPING FUNCTION                ${DATE_FIELD}                               ${DATE_VALUE}
    MAPPING FUNCTION                ${PERIOD_FIELD}                             ${PERIOD_VALUE}



WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
    Wait Until Element Is Visible    ${SNACKBAR_SUCCESS}    
    Element Should Contain                     ${SNACKBAR_SUCCESS}                       ${IMPORT_SUCESS_NOTIFICATION}
