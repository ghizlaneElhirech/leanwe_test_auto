*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/HELPERS/importCollaboratorsHelpers.resource
Test Teardown      SeleniumLibrary.Close Browser  


*** Test Cases ***
Import collaborators from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${COLLABORATORS_TYPE}
    UPLOAD FILE                             ${PATH_TO_COLLABORATORS_FILE}
    ASSOCIATION OF COLUMNS COLLABORATORS
    CLICK THE IMPORT BUTTON
    Sleep   5s
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
   


