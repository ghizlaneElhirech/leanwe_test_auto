*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/HELPERS/importSubcontractorsHelpers.resource
Test Teardown      SeleniumLibrary.Close Browser

*** Test Cases ***
Import Subcontractors from a csv File 
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                    ${SUBCONTRACTORS_TYPE}
    UPLOAD FILE                                 ${PATH_TO_SUBCONTRACTORS_FILE}
    ASSOCIATION OF COLUMNS SUBCONTRACTORS
    CLICK THE IMPORT BUTTON
    sleep   2s
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY