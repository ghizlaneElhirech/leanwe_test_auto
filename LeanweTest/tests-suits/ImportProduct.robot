*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/HELPERS/importProductssHelpers.resource
Test Teardown      SeleniumLibrary.Close Browser

*** Test Cases ***
Import collaborators from a csv File
    
    Authenticate User
    CLEAN UP IMPORTED DATA
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${PRODUCT_TYPE}
    Input Text                              ${PRODUCT_RESOURCE_NAME_FIELD}     Produits_leanwe
    UPLOAD FILE                             ${PATH_TO_PRODUCTS_CSV_FILE}
    ASSOCIATION OF COLUMNS PRODUCTS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 