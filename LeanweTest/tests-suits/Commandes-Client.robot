*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library    OperatingSystem
Resource   ../ressources/HELPERS/commandesClientHelpers.resource
Suite Teardown        SeleniumLibrary.Close Browser

*** Test Cases ***
CREATE A NEW CLIENT COMMANDE
    ${commande_number}=    Create new client command
    Set Global Variable    ${GLOBAL_COMMANDE_NUMBER}    ${commande_number}

SEARCH FOR THE CREATED COMMANDE CLIENT
    ${commande_number}=    Get Variable Value    ${GLOBAL_COMMANDE_NUMBER}
    SEARCH FOR A COMMANDE CLIENT                      ${commande_number}
    Sleep    2s

VERIFY THE FILTERS IN COMMANDE CLIENT PAGE
    ${commande_number}=    Get Variable Value    ${GLOBAL_COMMANDE_NUMBER}
    APPLY FILTERS IN COMMANDE CLIENT PAGE             ${commande_number}
    Sleep    2s