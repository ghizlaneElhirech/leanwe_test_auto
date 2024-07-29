*** Settings ***
Library   SeleniumLibrary
Library   Collections
Resource    ../ressources/helpers.resource
Suite Setup       Open Browser And Login
# Suite Teardown    Close Browser


*** Variables ***


*** Test Cases ***
CREATE A NEW OFFER
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


    
# DRAG AND DROP APPLICATION
#     LOG IN AS SUPPORT
#     Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}               timeout=5s
#     ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
#     Mouse Over                                ${sidebar_element}
#     Wait Until Page Contains Element          ${OFFER_SIDEBAR_ITEM}                  timeout=2s
#     click Element                             ${OFFER_SIDEBAR_ITEM}
#     Mouse Out                                 ${sidebar_element}
#     FILTER BY NEW OFFER                       Offer_test_auto
#     Wait Until Element Is Visible             ${CANDIDATURE_BUTTON} 
#     Click Element                             ${CANDIDATURE_BUTTON}
#     Wait Until Element Is Visible             ${OFFER_APPLICANT_CANDIDATURE}          10s
#     Wait Until Element Is Visible             ${APPLICATION_ACCEPTED_SECTION}         10s
#     CUSTOMED_DRAG_DROP                        ${OFFER_APPLICANT_CANDIDATURE}              ${APPLICATION_PRE_ACCEPTANCE}                ${APPLICATION_ACCEPTED_SECTION}  
#     Wait Until Page Contains Element          ${CONFIRMATION_BOX_TITLE}        
#     Wait Until Element Is Visible             ${CONFIRME_APPLICATION_BUTTON}        15s
#     Wait Until Element Is Enabled             ${CONFIRME_APPLICATION_BUTTON}        10s
#     Click Element                             ${CONFIRME_APPLICATION_BUTTON}   
#     Sleep    3s