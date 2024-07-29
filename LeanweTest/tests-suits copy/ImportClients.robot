*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/helpers.resource


*** Test Cases ***
Import collaborators from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${CLIENT_TYPE}
    UPLOAD FILE                             ${PATH_TO_CLIENTS_CSV_FILE}
    ASSOCIATION OF COLUMNS CLIENTS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY 
   

*** Keywords ***
