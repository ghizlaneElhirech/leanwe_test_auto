*** Settings ***
Library               SeleniumLibrary
Library               Collections
Resource              ../ressources/helpers.resource
Suite Teardown        SeleniumLibrary.Close Browser


*** Variables ***


*** Test Cases ***
CREATE A NEW COLLABORATOR
    LOG IN AS SUPPORT    
    SELECT COLLABORATOR FROM SIDEBAR 
    CLICK THE ADD NEW COLLABORATOR BUTTON
    ${collaborator_name}=     FILL OUT THE COLLABORATOR CREATION FORM 
    Set Global Variable    ${GLOBAL_OFFER_NAME}    ${offer_name}
    Log    Created offer name: ${offer_name}
    SUBMIT THE COLLABORATOR FORM 

# VERIFY THE OFFER EXISTENCE
#     ${offer_name}=    Get Variable Value    ${GLOBAL_OFFER_NAME}
#     SEARCH FOR NEW OFFER                    ${offer_name}
#     sleep     2s