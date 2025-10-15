*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/HELPERS/importProductssHelpers.resource
Test Teardown      SeleniumLibrary.Close Browser

*** Test Cases ***

Import collaborators from a csv File
    
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${PRODUCT_TYPE}
    UPLOAD FILE                             ${PATH_TO_PRODUCTS_CSV_FILE}
    ASSOCIATION OF COLUMNS PRODUCTS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 