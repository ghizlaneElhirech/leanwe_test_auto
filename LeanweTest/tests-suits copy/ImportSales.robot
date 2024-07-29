*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/helpers.resource


*** Test Cases ***
Import collaborators from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT SALE AS RESOURCE TYPE
    Input Text                              ${PRODUCT_RESOURCE_NAME_FIELD}     COMMANDES
    UPLOAD FILE                             ${PATH_TO_SALES_CSV_FILE}
    ASSOCIATION OF COLUMNS SALES
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY 
   

*** Keywords ***
