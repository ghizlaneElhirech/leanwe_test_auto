*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource           ../ressources/HELPERS/offerTestHelpers.resource
Suite Teardown        SeleniumLibrary.Close Browser


*** Variables ***


*** Test Cases ***
CREATE A NEW OFFER
    LOG IN AS SUPPORT
    SELECT OFFER FROM SIDEBAR 
    CLICK THE ADD NEW BUTTON 
    ${offer_name}=     FILL OUT THE OFFER CREATION FORM 
    Set Global Variable    ${GLOBAL_OFFER_NAME}    ${offer_name}
    Log    Created offer name: ${offer_name}
    SUBMIT THE OFFER FORM 
    CHECK THE DISPLAY OF SUCCESS NOTIFICATION 
    

VERIFY THE OFFER EXISTENCE
    ${offer_name}=    Get Variable Value    ${GLOBAL_OFFER_NAME}
    SEARSH FOR NEW OFFER                    ${offer_name}
    sleep     2s

Apply Filters Test
    ${offer_name}=    Get Variable Value    ${GLOBAL_OFFER_NAME}
    Apply Filters And Verify Results        ${offer_name}
    sleep    2s