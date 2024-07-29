*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/helpers.resource


*** Test Cases ***
Import collaborators from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${PRESTATION_TYPE}
    Input Text                              ${PRODUCT_RESOURCE_NAME_FIELD}     Prestations
    UPLOAD FILE                             ${PATH_TO_PRESTATIONs_CSV_FILE}
    ASSOCIATION OF COLUMNS PRESTATIONS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY 
   

*** Keywords ***
