*** Settings ***

Library          SeleniumLibrary
Library          Process
Library          Collections
Resource        ../ressources/HELPERS/importTimeSheetsHelpers.resource
Test Teardown      SeleniumLibrary.Close Browser

*** Test Cases ***
Import Feuille de temps from a csv File
    LOG IN AS SUPPORT
    NAVIGATE TO RESOURCE IMPORT PAGE
    SELECT THE RESOURCE TYPE                ${TIMESHEET_TYPE}
    UPLOAD FILE                             ${PATH_TO_TIMESHEETS_FILE}
    ASSOCIATION OF COLUMNS TIMESHEETS
    CLICK THE IMPORT BUTTON
    WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 