*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/purchaseTestVariables.resource
Resource     GlobalHelpers.resource

*** Keywords ***

SELECT PURCHASE ITEM FROM SIDEBAR
    ${sidebar_element}=    SELECT ITEM FROM SIDEBAR                  ${GLOBAL_PURCHASE_ITEM} 
    Wait Until Element Is Visible             ${PURCHASE_SIDEBAR_ITEM}
    Click Element                             ${PURCHASE_SIDEBAR_ITEM}
    Mouse Out                                 ${sidebar_element}
    # Wait Until Page Contains Element          xpath=//body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/header[1]/div[1]/div[1]/span[1]
 
FILL OUT THE PURCHASE CREATION FORM    
    ${current_datetime}=    Get Current Date     result_format=%Y%m%d%H%M%S
    ${FULL_PURCHASE_TITLE}=    Set Variable       ${PURCHASE_TITLE}_${current_datetime} 
    Wait Until Element Is Visible            ${PURCHASE_NEW_BUTTON}                        
    Click Element                            ${PURCHASE_NEW_BUTTON}
    Wait Until Element Is Visible            ${PURCHASE_TITLE_FIELD}
    Wait Until Element Is Enabled            ${PURCHASE_TITLE_FIELD}                       
    Wait Until Keyword Succeeds     5     5         Input Text                               ${PURCHASE_TITLE_FIELD}                       ${FULL_PURCHASE_TITLE}
    Click Element                            ${PURCHASE_PAYMENT_MODE}                  
    Wait Until Element Is Visible            ${CHECQUE_PAYMENT_MODE}  
    Click Element                            ${CHECQUE_PAYMENT_MODE}   
    Wait Until Element Is Visible            ${PURCHASE_PAYMENT_TYPE}
    Click Element                            ${PURCHASE_PAYMENT_TYPE}
    Wait Until Element Is Visible            ${PURCHASE_SEMESTER_TYPE}
    Click Element                            ${PURCHASE_SEMESTER_TYPE}
    Input Text                               ${PURCHASE_CLIENT_COMPANY}                     ${SELECTED_CLIENT_COMPANY}
    Sleep    2s 
    Press Keys          none                     ARROW_DOWN
    Press Keys          none                      ENTER  
    Wait Until Element Is Enabled            ${PURCHASE_BUSINESS_UNIT}  
    Input Text                               ${PURCHASE_BUSINESS_UNIT}                      ${SELECTED_BU}  
    Sleep    2s 
    Press Keys          none                 ARROW_DOWN
    Press Keys          none                 ENTER    
    Wait Until Element Is Enabled            ${PURCHASE_CATEGORY_FIELD}        
    Input Text                               ${PURCHASE_CATEGORY_FIELD}                     ${SELECTED_CATEGORY} 
    Sleep    2s  
    Press Keys          none                     ARROW_DOWN
    Press Keys          none                     ENTER 
    Wait Until Element Is Visible            ${PURCHASE_START_DATE} 
    Click Element                            ${PURCHASE_START_DATE} 
    Wait Until Element Is Visible            ${CHOSEN_START_DATE}
    Click Element                            ${CHOSEN_START_DATE}
    Wait Until Element Is Visible            ${PURCHASE_END_DATE} 
    Click Element                            ${PURCHASE_END_DATE} 
    Sleep    2s
    Wait Until Element Is Enabled            ${CHOSEN_END_DATE}
    Wait Until Element Is Visible            ${CHOSEN_END_DATE}                
    Click element                            ${CHOSEN_END_DATE}
    Input Text                               ${PURCHASE_PRETAX_AMOUNT}                       ${PURCHASE_TARIF}
    Input Text                               ${PURCHASE_TAX_AMOUNT}                          ${PURCHASE_TVA}
    Wait Until Element Is Visible            ${PURCHASE_ADD_BUTTON}
    Click Element                            ${PURCHASE_ADD_BUTTON}
    Wait Until Page Contains                 La facture fournisseur a été créée avec succès   timeout=10s
    RETURN                                   ${FULL_PURCHASE_TITLE}    

Get Dynamic Purchase Card Title Locator
    [Arguments]    ${purchase_title}
    ${locator}=    Set Variable    xpath=//span[contains(text(),"${purchase_title}")]
    RETURN         ${locator}
SEARCH FOR A PURCHASE
    [Arguments]                               ${searched_purchase} 
    Wait Until Page Contains                  Nouvelle facture fournisseur
    Wait Until Element Is Visible             ${PURCHASE_SEARCH_BAR}            timeout=15s
    ${dynamic_locator}=    Get Dynamic Purchase Card Title Locator              ${searched_purchase} 
    Input Text                                ${PURCHASE_SEARCH_BAR}            ${searched_purchase}  
    Wait Until Element Is Visible             ${dynamic_locator} 
    Log    my title: ${searched_purchase}    

APPLY FILTERS IN PURCHASE PAGE
    [Arguments]                           ${purchase_name}
    SELECT FILTER FROM A LIST             ${PURCHASE_START_DATE_FILTER}          ${CHOSEN_START_DATE}
    SELECT FILTER FROM A LIST             ${PURCHASE_END_DATE_FILTER}            xpath=(//table[1]/tbody[1]/tr[3]/td[6]/button[1])[2]
    SELECT FILTER FROM A LIST             ${PURCHASE_STATUS_FILTER}              ${PURCHASE_FNP_STATUS}
    SELECT FILTER FROM A LIST             ${PURCHASE_TYPE_FILTER}                ${PURCHASE_CHOSEN_TYPE_FILTER}
    SELECT FILTER FROM A LIST             ${PURCHASE_CATEGORY_FILTER}            ${PURCHASE_CATEGORY_CHOSEN_FILTER}
    Wait Until Element Is Visible         ${PURCHASE_CARD_TITLE_LOCATOR}
    ${card_title_text}=    Get Text       ${PURCHASE_CARD_TITLE_LOCATOR}
    Should Be Equal As Strings            ${card_title_text}                 ${purchase_name}