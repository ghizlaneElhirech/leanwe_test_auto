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
    ${collaborator_job_post}=     FILL OUT THE COLLABORATOR CREATION FORM 
    Set Global Variable    ${COLLABORATOR_SEARCH_VALUE}    ${collaborator_job_post}
    Log    Created offer name: ${collaborator_job_post}
    SUBMIT THE COLLABORATOR FORM 
    CHECK THE DISPLAY OF SUCCESS NOTIFICATION FOR COLLABORATOR CREATION

# VERIFY THE OFFER EXISTENCE
#     ${offer_name}=    Get Variable Value    ${GLOBAL_OFFER_NAME}
#     SEARCH FOR NEW OFFER                    ${offer_name}
#     sleep     2s