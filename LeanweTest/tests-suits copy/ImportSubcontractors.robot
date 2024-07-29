*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/helpers.resource


*** Test Cases ***
Import Subcontractors from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                    ${SUBCONTRACTORS_TYPE}
    UPLOAD FILE                                 ${PATH_TO_SUBCONTRACTORS_FILE}
    ASSOCIATION OF COLUMNS SUBCONTRACTORS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY