*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/offerTestVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
SELECT OFFER FROM SIDEBAR 
    SELECT ITEM FROM SIDEBAR                    ${OFFER_SIDEBAR_ITEM}
CLICK THE ADD NEW BUTTON 
    Wait Until Element Is Visible             ${NEW_OFFER_BTN}
    Click Element                             ${NEW_OFFER_BTN}

FILL OUT THE OFFER CREATION FORM 
    Wait Until Element Is Visible             ${OFFER_TITLE_FIELD}                    timeout=4s  
    ${current_datetime}=    Get Current Date     result_format=%Y%m%d%H%M%S
    ${FULL_OFFER_NAME}=    Set Variable       ${OFFER_NAME}_${current_datetime}  
    Wait Until Element Is Enabled             ${OFFER_TITLE_FIELD}                    
    Wait Until Keyword Succeeds   5      5         Click Element                             ${OFFER_TITLE_FIELD}             
    Input Text                                ${OFFER_TITLE_FIELD}                    ${FULL_OFFER_NAME}   
    Input Text                                ${OFFER_COUNTRY_FIELD}                  ${OFFRE_COUNTRY} 
    Press Keys    none    ARROW_DOWN
    Press Keys    none    ENTER    
    Input Text                                ${OFFER_CITY_FIELD}                     ${OFFRE_CITY}
    Click Element                             ${MANAGER_SELECT_FIELD}    
    Wait Until Element Is Visible             ${MANAGER_SELECTED_OPTION}              timeout=7s                            
    Click Element                             ${MANAGER_SELECTED_OPTION}   
    Click Element                             ${OFFER_START_DATE} 
    Wait Until Element Is Visible             ${OFFER_START_DATE_DAY} 
    Click Element                             ${OFFER_START_DATE_DAY}  
    Click Element                             ${OFFER_END_DATE}
    Wait Until Element Is Visible             ${OFFER_END_DATE_DAY}                 
    Click Element                             ${OFFER_END_DATE_DAY}
    Input Text                                ${OFFER_TJM_FIELD}                      ${OFFRE_TJM}   
    Input Text                                ${OFFER_LEVEL_EXP_FIELD}                4    
    Click Element                             ${OFFER_RECRUITE_PROCESS}
    Wait Until Element Is Visible             ${OFFER_SELECTED_PROCESS}  
    Click Element                             ${OFFER_SELECTED_PROCESS}  
    Click Element                             ${OFFER_FREQUENCE_DAYS}    
    Wait Until Element Is Visible             ${OFFER_FREQUENCE_DAYS_CHOICE}
    Click Element                             ${OFFER_FREQUENCE_DAYS_CHOICE}
    Input Text                                ${OFFER_PUBLIC_EMAIL_FIELD}            ${OFFER_PUBLIC_EMAIL}
    Input Text                                ${OFFER_REFERENCE_FIELD}               ${OFFER_REFRENCE}
    Input Text                                ${OFFER_COMPANY_TEXT_AREA}             ${OFFER_COMPANY_TEXT}
    Input Text                                ${OFFER_DESCRIPTION_TEXT_AREA}         ${OFFER_DESCRIPTION}
    RETURN                                    ${FULL_OFFER_NAME}

SUBMIT THE OFFER FORM 
    Click Element                             ${OFFER_CREATE_BTN}

CHECK THE DISPLAY OF SUCCESS NOTIFICATION 
    Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
    Element Should Contain                    ${SNACKBAR_SUCCESS}                ${OFFER_SUCESS_NOTIFICATION}

Get Dynamic Offer Card Title Locator
    [Arguments]    ${offer_name}
    ${locator}=    Set Variable    xpath=//span[contains(text(),"${offer_name}")]
    RETURN     ${locator}
SEARSH FOR NEW OFFER
    [Arguments]                               ${searched_offer} 
    Wait Until Page Contains                  Nouvelle Offre
    Wait Until Element Is Visible             ${OFFER_SEARCH_BAR}            timeout=15s
    ${dynamic_locator}=    Get Dynamic Offer Card Title Locator              ${searched_offer}
    Input Text                                ${OFFER_SEARCH_BAR}            ${searched_offer} 
    Wait Until Element Is Visible             ${dynamic_locator} 
    Log    my title: ${searched_offer} 

EMPTY THE OFFER SEARCH BAR
    Wait Until Element Is Visible             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
    Clear Element Text                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
FILL IN A FIELD WITH JS
    [Arguments]                           ${FIELD_ID}   ${NEW_VAL}
    Wait Until Element Is Visible         id=${FIELD_ID}
    Execute JavaScript    var field = document.getElementById('${FIELD_ID}'); field.value = ${NEW_VAL}; field.dispatchEvent(new Event('input'));
    
Apply Filters And Verify Results
    [Arguments]                           ${offer_name}
    FILL IN A FIELD WITH JS               ${Max-TJM-ID}                            ${MAX_TJM}
    Input Text                            ${OFFER_MIN_TJM_FILTER}                  ${OFFRE_TJM}
    FILL IN A FIELD WITH JS               ${MAX-MONTH-ID}                          ${MAX_MONTHS}
    Input Text                            ${OFFER_MIN_MONTH_FILTER}                ${MIN_MONTHS}
    Click Element                         ${OFFER_COUNTRY_FILTER}                  
    Input Text                            ${OFFER_COUNTRY_FILTER}                  ${OFFRE_COUNTRY}
    Press Keys    none                      ARROW_DOWN
    Press Keys    none                       ENTER
    Input Text                            ${OFFER_CITY_FILTER}                     ${OFFRE_CITY}
    Click Element                         ${OFFER_STATUS_FILTER}                  
    Wait Until Element Is Visible         ${SELECTED_STATUS}   
    Click Element                         ${SELECTED_STATUS}
    Wait Until Element Is Visible         ${OFFER_CARD_TITLE_LOCATOR}
    sleep  3s
    ${card_title_text}=    Get Text       ${OFFER_CARD_TITLE_LOCATOR}
    Should Be Equal As Strings            ${card_title_text}                 ${offer_name}