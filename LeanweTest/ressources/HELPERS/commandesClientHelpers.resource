*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary
Library      Collections
Library      DateTime
Library      String
Resource     ../VARIABLES/commandeClientVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
SELECT COMMANDECLIENT ITEM FROM SIDEBAR
     Wait Until Page Contains Element         ${DASHBOARD_TITLE_XPATH}             timeout=5s
     ${sidebar_element}  Get WebElement       ${sidebar_Xpath}
     Mouse Over                               ${sidebar_element}
     Scroll Down
     Wait Until Element Is Visible    ${GLOBAL_COMMANDE_CLIENT_ITEM}    timeout=10s
     Scroll Element Into View         ${GLOBAL_COMMANDE_CLIENT_ITEM}
     Click Element                    ${GLOBAL_COMMANDE_CLIENT_ITEM}
     Wait Until Element Is Visible    ${COMMANDE_CLIENT_SIDEBAR_ITEM}    timeout=10s
     Scroll Element Into View         ${COMMANDE_CLIENT_SIDEBAR_ITEM}
     Click Element                    ${COMMANDE_CLIENT_SIDEBAR_ITEM}



Create new client command
    LOG IN AS SUPPORT
    SELECT COMMANDECLIENT ITEM FROM SIDEBAR
    Sleep    2s
    Click Element    ${NEW_CLIENT-COMMANDS}
    Sleep    2s
    ${Commande_ANumber}    Generate Random String    6    0123456789
    ${Al_String}    Generate Random String    3    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    Input Text    ${COMMANDE_NUMBERC}    text=${Commande_ANumber}
    Sleep    2s
    Click Element    ${COMMANDE_TYPEC}
    Click Element    ${COMMANDE_TYPE_FORFAITAIRE_OPTION}
 # Première méthode - Via update:model
    Wait Until Element Is Visible    ${COMMANDE_SALE_START_DATE_PICKER}    timeout=10s
    ${js1}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="sale-start-date"]').__vue__;
    ...    datePicker.$emit('update:model', '${COMMANDE_SALE_START_DATE_VALUE}');
    Execute JavaScript    ${js1}
    Sleep    2s

    # Troisième méthode - Update complet
    ${js3}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="sale-end-date"]').__vue__;
    ...    datePicker.$emit('update:model', '${COMMANDE_SALE_END_DATE_VALUE}');
    Execute JavaScript    ${js3}
    Sleep    2s

    # Si besoin de vérifier que la valeur a bien été mise à jour
    ${js_verify}=    Catenate    SEPARATOR=\n
    ...    return document.querySelector('[cy-data="sale-start-date"] input').value;
    ${value}=    Execute JavaScript    ${js_verify}
    Should Be Equal    ${value}    ${COMMANDE_SALE_START_DATE_VALUE}

    sleep    2s
    Click Element    ${COMMANDE_CLIENT1C}
    Sleep    2s
    Input Text    ${COMMANDE_CLIENT1C}     ${COMMANDE_CLIENT_OPTION_LACOSTE}
    Sleep        2s
    Press Keys        none       ARROW_DOWN            
    Press Keys        none       ENTER   
    Press Keys                                none                                     TAB
    Input Text    ${COMMANDE_ITEM_TITLE_INPUT}    text=${Al_String}
    Input Text    ${COMMANDE_ITEM_AMOUNT_INPUT}    text=${COMMANDE_ITEM_AMOUNT_VALUE}
    Click Element    ${COMMANDE_TVA1C}
 
    Sleep    2s
    Click Element    ${COMMANDE_ADDBUTTONC}                
    Wait Until Page Contains                 La commande a été créée avec succès   timeout=10s
    RETURN                                   ${Commande_ANumber}

Get Dynamic Commande Client Card Title Locator
    [Arguments]    ${commande_number}
    ${locator}=    Set Variable    xpath=//span[contains(text(),"${COMMANDE_CLIENT_OPTION_LACOSTE}")]
    RETURN         ${locator}

SEARCH FOR A COMMANDE CLIENT
    [Arguments]                               ${searched_commande} 
    Wait Until Page Contains                  Nouvelle commande
    Wait Until Element Is Visible             ${COMMANDE_CLIENT_SEARCH_BAR}            timeout=15s
    ${dynamic_locator}=    Get Dynamic Commande Client Card Title Locator              ${searched_commande} 
    Input Text                                ${COMMANDE_CLIENT_SEARCH_BAR}            ${searched_commande}  
    Sleep    2s
    Wait Until Element Is Visible             ${dynamic_locator}     timeout=15s
    Log    my commande number: ${searched_commande}    

APPLY FILTERS IN COMMANDE CLIENT PAGE
    [Arguments]                           ${commande_number}
    Wait Until Page Contains                  Nouvelle commande
    Wait Until Element Is Visible             ${COMMANDE_CLIENT_START_DATE_FILTER}     timeout=15s
    SELECT FILTER FROM A LIST             ${COMMANDE_CLIENT_START_DATE_FILTER}          ${COMMANDE_CLIENT_START_DATE_FILTER_VALUE}  
    Sleep    2s
    SELECT FILTER FROM A LIST             ${COMMANDE_CLIENT_END_DATE_FILTER}            ${COMMANDE_CLIENT_END_DATE_FILTER_VALUE}   