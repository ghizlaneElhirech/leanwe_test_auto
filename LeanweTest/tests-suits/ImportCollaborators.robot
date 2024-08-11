*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
<<<<<<< HEAD
Resource        ../ressources/helpers.resource
Test Teardown      SeleniumLibrary.Close Browser  
=======
Resource         ../ressources/helpers.resource
>>>>>>> a675dbe3e6592d8686da5d11783921b09a32f992


*** Test Cases ***
Import collaborators from a csv File
    Authenticate User
    CLEAN UP IMPORTED DATA
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${COLLABORATORS_TYPE}
    UPLOAD FILE                             ${PATH_TO_COLLABORATORS_FILE}
    ASSOCIATION OF COLUMNS COLLABORATORS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
   


