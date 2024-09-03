*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/collaboratorsTestVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
SELECT COLLABORATOR FROM SIDEBAR 
    SELECT ITEM FROM SIDEBAR                    ${COLLABORATOR_SIDEBAR_ITEM}

CLICK THE ADD NEW COLLABORATOR BUTTON 
    Wait Until Element Is Visible             ${NEW_COLLABORATOR_BTN}
    Click Element                             ${NEW_COLLABORATOR_BTN}


FILL OUT THE COLLABORATOR CREATION FORM 
    Wait Until Element Is Visible             ${COLLABORATOR_FIRSTNAME}                    timeout=4s  
    ${current_datetime}=    Get Current Date     result_format=%Y%m%d%H%M%S
    Click Element                             ${COLLABORATOR_FIRSTNAME}             
    Input Text                                ${COLLABORATOR_FIRSTNAME}                    John   
    Input Text                                ${COLLABORATOR_LASTNAME}                     Doe   
    Input Text                                ${COLLABORATOR_POSITION}                     Software Engineer ${current_datetime}
    Input Text                                ${COLLABORATOR_PHONE}                        634567890
    Input Text                                ${COLLABORATOR_EMAIL}                        john.doe${current_datetime}@example.com
    Input Text                                ${COLLABORATOR_BUSINESS_UNIT}                Digitale
    Wait Until Element Is Visible             ${COLLABORATOR_BUSINESS_UNIT_OPTION}         timeout=2s                            
    Click Element                             ${COLLABORATOR_BUSINESS_UNIT_OPTION}
    Click Element                             ${COLLABORATOR_MANAGER}
    Wait Until Element Is Visible             ${COLLABORATOR_MANAGER_OPTION}               timeout=2s                            
    Click Element                             ${COLLABORATOR_MANAGER_OPTION}   
    Click Element                             ${COLLABORATOR_EXPERIENCE_LEVEL}
    Wait Until Element Is Visible             ${COLLABORATOR_EXPERIENCE_LEVEL_OPTION}      timeout=2s                            
    Click Element                             ${COLLABORATOR_EXPERIENCE_LEVEL_OPTION}   
    Input Text                                ${COLLABORATOR_SALARY_BRUT}                  12000
    # Input Text                                ${COLLABORATOR_SALARY_COEF}                  1.2
    Click Element                             ${COLLABORATOR_CURRENCY}
    Wait Until Element Is Visible             ${COLLABORATOR_CURRENCY_OPTION}              timeout=2s                            
    Click Element                             ${COLLABORATOR_CURRENCY_OPTION}   
    Input Text                                ${COLLABORATOR_RTT}                          12
    Input Text                                ${COLLABORATOR_CP}                           25        timeout=4s
    RETURN                                    Software Engineer ${current_datetime}

SUBMIT THE COLLABORATOR FORM 
    Click Element                             ${COLLABORATOR_CREATE_BTN}

CHECK THE DISPLAY OF SUCCESS NOTIFICATION FOR COLLABORATOR CREATION
    Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
    Element Should Contain                    ${SNACKBAR_SUCCESS}                ${COLLABORATOR_SUCCESS_NOTIFICATION}