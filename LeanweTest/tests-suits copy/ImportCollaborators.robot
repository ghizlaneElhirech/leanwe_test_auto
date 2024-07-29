*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/helpers.resource


*** Test Cases ***
Import collaborators from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${COLLABORATORS_TYPE}
    UPLOAD FILE                             ${PATH_TO_COLLABORATORS_FILE}
    ASSOCIATION OF COLUMNS COLLABORATORS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY 
   

*** Keywords ***
