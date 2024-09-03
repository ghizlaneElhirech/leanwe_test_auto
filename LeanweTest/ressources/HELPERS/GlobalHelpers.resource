*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/offerTestVariables.resource


*** Keywords ***
LOG IN AS SUPPORT
    Open Browser    ${Leanwe_URL}            ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible            ${LOGIN_PAGE_FORM_USERNAME_INPUT}
    Wait Until Element Is Visible            ${LOGIN_PAGE_FORM_PASSWORD_INPUT}
    input text                               ${LOGIN_PAGE_FORM_USERNAME_INPUT}      redouane@yopmail.com
    input text                               ${LOGIN_PAGE_FORM_PASSWORD_INPUT}      secret2023
    click element                            ${LOGIN_BUTTON}

Open Browser And Login
    LOG IN AS SUPPORT

Close Browser
    Close All Browsers

Scroll Down
    Execute JavaScript            window.scrollBy(0, 200)
Scroll The Hieght of scroll
    Execute JavaScript            window.scrollTo(0, document.body.scrollHeight)

FILL OUT SUBCONTRACTOR STEP
    Input Text    locator    text
# ------------------------------------------PROJECTS-------------------------------------
SELECT PROJECT FROM THE SIDEBAR   
    Wait Until Page Contains Element         ${DASHBOARD_TITLE_XPATH}             timeout=5s
    ${sidebar_element}  Get WebElement       ${sidebar_Xpath}
    Mouse Over                               ${sidebar_element}
    Scroll Down
    Wait Until Element Is Visible            ${PROJECT_SIDEBAR_ITEM}
    Click Element                            ${PROJECT_SIDEBAR_ITEM}
CLICK ADD NEW PROJECT BUTTON 
    Wait Until Element Is Visible            ${CREATE_NEW_PROJECT_BUTTON}          timeout=10s
    Click Element                            ${CREATE_NEW_PROJECT_BUTTON}
FILL OUT THE PROJECT CREATION FORM 
    Wait Until Element Is Visible            ${TITLE_FIELD}
    Click Element                            ${TITLE_FIELD}
    Input Text                               ${TITLE_FIELD}                        Project_Auto_DEMO
    Click Element                            ${PROJECT_TYPE_FIELD}
    Click Element                            ${REGIT_OPTION}
    Input Text                               ${CHARGE_FIELD}                        3
    Wait Until Element Is Visible            ${CHARGE_TYPE_SELECT}
    Click Element                            ${CHARGE_TYPE_SELECT}
    Wait Until Element Is Visible            ${DAILY_HOUR_OPTION}                   timeout=4s
    Click Element                            ${DAILY_HOUR_OPTION}    
    Input Text                               ${CODE_FIELD}                          XXX-00117
    Input Text                               ${SELECTE_CLIENT_AUTOCOMPLETE}         Near SRA INFORMATIQUE     
    Sleep        3s
    Press Keys        none       ARROW_DOWN            
    Press Keys        none       ENTER   
    Wait Until Element Is Visible            ${START_DATE_PICKER} 
    Click Element                            ${START_DATE_PICKER}     
    Scroll The Hieght of scroll
    Wait Until Element Is Visible            ${START_DATE_DAY}                      timeout=6s
    Click Element                            ${START_DATE_DAY}
    Click Element                            ${END_DATE_PICKER}
    Scroll The Hieght of scroll
    Wait Until Element Is Visible            ${END_DATE_PICKER}                     timeout=2s
    Wait Until Element Is Visible            ${END_DATE_DAY}
    Click Element                            ${END_DATE_DAY}
SUBMIT THE CREATION FORM 
    Click Element                            ${ADD_PROJECT_BUTTON}

SCROLL DOWN THE POPUP 
    Execute JavaScript    document.querySelector('${POPUP}').scrollTop = document.querySelector('${POPUP}').scrollHeight;

Search for project by filter

    Wait Until Element Is Visible            ${PROJECT_SEARCH_BAR}                   timeout=8s
    Input Text                               ${PROJECT_SEARCH_BAR}                   ${EXPECTED_TITLE}        timeout=7s
    Wait Until Page Contains Element         ${Filtred_project_title} 

# ------------------------------------Contract------------------------------------------------
CONTRACT SUBCONTRACTOR STEP
    Wait Until Element Is Visible             ${CONTRACT_REF_FIELD}             
    Click Element                             ${CONTRACT_REF_FIELD}
    Input Text                                ${CONTRACT_REF_FIELD}            REF_AUTO_0008    
    Click Element                             ${COMPANY_NAME_DROPDOWN}          
    Input Text                                ${COMPANY_NAME_DROPDOWN}          CS        
    Sleep    2s
    Press Keys    none    ARROW_DOWN
    Press Keys    none    ENTER  
CONTRACT CLIENT DETAILS STEP
    Wait Until Element Is Visible             ${CLIENT_INPUT}
    Click Element                             ${CLIENT_INPUT}  
    Input Text                                ${CLIENT_INPUT}        AL
    Sleep    2s  
    Press Keys    none    ARROW_DOWN
    Press Keys    none    ENTER  
    Input Text                                ${MISSION_LOCATION_INPUT}     France  
    Click Element                             ${CONTRACT_OBJECT_FIELD}
    Wait Until Element Is Visible             ${CONTRACT_OBJECT_DROPDOWN}
    Click Element                             ${CONTRACT_OBJECT_DROPDOWN}
    Wait Until Element Is Visible             ${START_DATE_PICKER} 
    Click Element                             ${START_DATE_PICKER} 
    Wait Until Element Is Visible             ${Start_date_contract}            timeout=4s
    Click Element                             ${Start_date_contract} 
    Wait Until Element Is Visible             ${END_DATE_PICKER}          timeout=3s
    Click Element                             ${END_DATE_PICKER} 
    Wait Until Element Is Visible             ${END_DATE_DAY}           timeout=4s
    Click Element                             ${END_DATE_DAY} 
Select aplicant checkbox
    ${element}=    Get WebElement    ${Information_tarifaire}
    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${element}

CONTRACT APPLICANT DETAILS
    Wait Until Element Is Enabled             ${Information_tarifaire}    timeout=10s
    sleep     2s
    Select aplicant checkbox    
    Wait Until Element Is Visible             ${APLICANT_TJM_FIELD} 
    Input Text                                ${APLICANT_TJM_FIELD}             500
    Wait Until Element Is Visible             ${APLICANT_CHARGE_FIELD} 
    Input Text                                ${APLICANT_CHARGE_FIELD}             4
    Click Element                             ${NEXT_BUTTON_CONTRACT}

Select Contract Articles
    Wait Until Element Is Visible             ${SELECTED_ARTICLE_1}
    FOR    ${xpath}    IN    @{CONTRACT_ARTICLES_XPATHS}
        Click Element        ${xpath}   
    END
SELECT CONTRACT TEMPLATE
    Wait Until Element Is Visible              ${SELECTED_TEMPLATE}
    Click Element                              ${SELECTED_TEMPLATE}
# --------------------------------------------OFFERS---------------------------------

# SELECT OFFER FROM SIDEBAR 
#     SELECT ITEM FROM SIDEBAR                    ${OFFER_SIDEBAR_ITEM}
# CLICK THE ADD NEW OFFER BUTTON 
#     Wait Until Element Is Visible             ${NEW_OFFER_BTN}
#     Click Element                             ${NEW_OFFER_BTN}

# FILL OUT THE OFFER CREATION FORM 
#     Wait Until Element Is Visible             ${OFFER_TITLE_FIELD}                    timeout=4s  
#     ${current_datetime}=    Get Current Date     result_format=%Y%m%d%H%M%S
#     ${FULL_OFFER_NAME}=    Set Variable       ${OFFER_NAME}_${current_datetime}  
#     Wait Until Element Is Enabled             ${OFFER_TITLE_FIELD}                    timeout=10s
#     Click Element                             ${OFFER_TITLE_FIELD}             
#     Input Text                                ${OFFER_TITLE_FIELD}                    ${FULL_OFFER_NAME}   
#     Input Text                                ${OFFER_COUNTRY_FIELD}                  ${OFFRE_COUNTRY} 
#     Press Keys    none    ARROW_DOWN
#     Press Keys    none    ENTER    
#     Input Text                                ${OFFER_CITY_FIELD}                     ${OFFRE_CITY}
#     Click Element                             ${MANAGER_SELECT_FIELD}    
#     Wait Until Element Is Visible             ${MANAGER_SELECTED_OPTION}              timeout=7s                            
#     Click Element                             ${MANAGER_SELECTED_OPTION}   
#     Click Element                             ${OFFER_START_DATE} 
#     Wait Until Element Is Visible             ${OFFER_START_DATE_DAY} 
#     Click Element                             ${OFFER_START_DATE_DAY}  
#     Click Element                             ${OFFER_END_DATE}
#     Wait Until Element Is Visible             ${OFFER_END_DATE_DAY}   
#     Click Element                             ${OFFER_END_DATE_DAY}
#     Input Text                                ${OFFER_TJM_FIELD}                      ${OFFRE_TJM}   
#     Input Text                                ${OFFER_LEVEL_EXP_FIELD}                4    
#     Click Element                             ${OFFER_RECRUITE_PROCESS}
#     Wait Until Element Is Visible             ${OFFER_SELECTED_PROCESS}  
#     Click Element                             ${OFFER_SELECTED_PROCESS}  
#     Click Element                             ${OFFER_FREQUENCE_DAYS}    
#     Wait Until Element Is Visible             ${OFFER_FREQUENCE_DAYS_CHOICE}
#     Click Element                             ${OFFER_FREQUENCE_DAYS_CHOICE}
#     Input Text                                ${OFFER_PUBLIC_EMAIL_FIELD}            ${OFFER_PUBLIC_EMAIL}
#     Input Text                                ${OFFER_REFERENCE_FIELD}               ${OFFER_REFRENCE}
#     Input Text                                ${OFFER_COMPANY_TEXT_AREA}             ${OFFER_COMPANY_TEXT}
#     Input Text                                ${OFFER_DESCRIPTION_TEXT_AREA}         ${OFFER_DESCRIPTION}
#     RETURN                                    ${FULL_OFFER_NAME}

# SUBMIT THE OFFER FORM 
#     Click Element                             ${OFFER_CREATE_BTN}

# CHECK THE DISPLAY OF SUCCESS NOTIFICATION 
#     Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
#     Element Should Contain                    ${SNACKBAR_SUCCESS}                ${OFFER_SUCESS_NOTIFICATION}

# Get Dynamic Offer Card Title Locator
#     [Arguments]    ${offer_name}
#     ${locator}=    Set Variable    xpath=//span[contains(text(),"${offer_name}")]
#     RETURN     ${locator}
# SEARSH FOR NEW OFFER
#     [Arguments]                               ${searched_offer} 
#     Wait Until Page Contains                  Nouvelle Offre
#     Wait Until Element Is Visible             ${OFFER_SEARCH_BAR}            timeout=15s
#     ${dynamic_locator}=    Get Dynamic Offer Card Title Locator              ${searched_offer}
#     Input Text                                ${OFFER_SEARCH_BAR}            ${searched_offer} 
#     Wait Until Element Is Visible             ${dynamic_locator} 
#     Log    my title: ${searched_offer} 

# EMPTY THE OFFER SEARCH BAR
#     Wait Until Element Is Visible             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
#     Clear Element Text                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
# FILL IN A FIELD WITH JS
#     [Arguments]                           ${FIELD_ID}   ${NEW_VAL}
#     Wait Until Element Is Visible         id=${FIELD_ID}
#     Execute JavaScript    var field = document.getElementById('${FIELD_ID}'); field.value = ${NEW_VAL}; field.dispatchEvent(new Event('input'));
    
# Apply Filters And Verify Results
#     [Arguments]                           ${offer_name}
#     FILL IN A FIELD WITH JS               ${Max-TJM-ID}                            ${MAX_TJM}
#     Input Text                            ${OFFER_MIN_TJM_FILTER}                  ${OFFRE_TJM}
#     FILL IN A FIELD WITH JS               ${MAX-MONTH-ID}                          ${MAX_MONTHS}
#     Input Text                            ${OFFER_MIN_MONTH_FILTER}                ${MIN_MONTHS}
#     Click Element                         ${OFFER_COUNTRY_FILTER}                  
#     Input Text                            ${OFFER_COUNTRY_FILTER}                  ${OFFRE_COUNTRY}
#     Press Keys    none                      ARROW_DOWN
#     Press Keys    none                       ENTER
#     Input Text                            ${OFFER_CITY_FILTER}                     ${OFFRE_CITY}
#     Click Element                         ${OFFER_STATUS_FILTER}                  
#     Wait Until Element Is Visible         ${SELECTED_STATUS}   
#     Click Element                         ${SELECTED_STATUS}
#     Wait Until Element Is Visible         ${OFFER_CARD_TITLE_LOCATOR}
#     sleep  3s
#     ${card_title_text}=    Get Text       ${OFFER_CARD_TITLE_LOCATOR}
#     Should Be Equal As Strings            ${card_title_text}                 ${offer_name}
#     # Wait Until Page Contains         ${offer_name}
    

CUSTOMED_DRAG_DROP
    [Arguments]     ${src}           ${intermediate}          ${tgt}
    Wait Until Keyword Succeeds      ${ATTEMPTS}     ${LARGER_TIMEOUT}      Mouse Down   ${src}
    Wait Until Keyword Succeeds      ${ATTEMPTS}     ${LARGER_TIMEOUT}      Mouse Over   ${intermediate}
    Wait Until Keyword Succeeds      ${ATTEMPTS}     ${LARGER_TIMEOUT}      Mouse Over   ${tgt}
    Wait Until Keyword Succeeds      ${ATTEMPTS}     ${LARGER_TIMEOUT}      Mouse Up     ${tgt}

LOG IN AS COLLABORATOR
    [Arguments]     ${URL}                    ${BROWSER_NAME}      ${USERNAME}     ${PASSWORD}
    Open Browser    ${URL}                    ${BROWSER_NAME} 
    Maximize Browser Window
    Wait Until Element Is Visible             ${LOGIN_PAGE_FORM_USERNAME_INPUT}
    Wait Until Element Is Visible             ${LOGIN_PAGE_FORM_PASSWORD_INPUT}
    input text                                ${LOGIN_PAGE_FORM_USERNAME_INPUT}      ${USERNAME}
    input text                                ${LOGIN_PAGE_FORM_PASSWORD_INPUT}      ${PASSWORD}
    click element                             ${LOGIN_BUTTON}

# --------------------------------------------COLLABORATORS---------------------------------
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

# ----------------------------------IMPORTCOLLABORATOR------------------------------------
NAVIGATE TO RESOURCE IMPORT PAGE 
    Wait Until Element Is Visible             ${sidebar_Xpath}
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Element Is Visible             ${RESOURCE_IMPORT_ITEM}
    click element                             ${RESOURCE_IMPORT_ITEM}
    Wait Until Page Contains                  Importation de resources

SELECT THE RESOURCE TYPE 
    [Arguments]                              ${CHOSEN_TYPE}
    Wait Until Element Is Visible            ${RESOURCE_TYPE_FIELD}
    click element                            ${RESOURCE_TYPE_FIELD}
    Wait Until Element Is Visible            ${CHOSEN_TYPE}
    click element                            ${CHOSEN_TYPE}
    # sleep   2s
SELECT SALE AS RESOURCE TYPE
    Wait Until Element Is Visible            ${RESOURCE_TYPE_FIELD}
    click element                            ${RESOURCE_TYPE_FIELD} 
    FOR    ${i}    IN RANGE    0    7    1
        Press Keys        none       ARROW_DOWN                 
    END
    Press Keys            none       ENTER              

UPLOAD FILE 
    [Arguments]                             ${FILE_NAME}
    Choose File                             ${UPLOAD_FILE_FIELD}                ${FILE_NAME}

MAPPING FUNCTION
    [Arguments]                             ${FIELD}                            ${CSV_TITLE}
    Input Text                              ${FIELD}                            ${CSV_TITLE}
ASSOCIATION OF COLUMNS SUBCONTRACTORS 
    MAPPING FUNCTION                ${SIREN_FIELD}                              ${SIREN_VALUE}
    MAPPING FUNCTION                ${COMPANY_NAME_FIELD}                       ${COMPANY_NAME_VALUE}
    MAPPING FUNCTION                ${LEGAL_FORM_FIELD}                         ${LEGAL_FORM_VALUE}
    MAPPING FUNCTION                ${ADDRESS_FIELD}                            ${ADDRESS_VALUE}
    MAPPING FUNCTION                ${ZIP_CODE_FIELD}                           ${ZIP_CODE_VALUE} 
    MAPPING FUNCTION                ${CITY_NAME_FIELD}                          ${CITY_NAME_VALUE} 
    MAPPING FUNCTION                ${RCS_PLACE_FIELD}                          ${RCS_PLACE_VALUE}
    MAPPING FUNCTION                ${RCS_NUMBER_FIELD}                         ${RCS_NUMBER_VALUE}
    MAPPING FUNCTION                ${REPRESENTATIVE_FIELD}                     ${REPRESENTATIVE_VALUE}
    MAPPING FUNCTION                ${FONCTION_FIELD}                           ${FONCTION_VALUE}
    MAPPING FUNCTION                ${CAPITAL_FIELD}                            ${CAPITAL_VALUE}
    MAPPING FUNCTION                ${BANK_ACCOUNT_FIELD}                       ${BANK_ACCOUNT_VALUE}
    MAPPING FUNCTION                ${BIC_FIELD}                                ${BIC_VALUE}
    MAPPING FUNCTION                ${IBAN_FIELD}                               ${IBAN_VALUE}
    MAPPING FUNCTION                ${CONTACT_FIELD}                            ${CONTACT_VALUE}

ASSOCIATION OF COLUMNS COLLABORATORS
    MAPPING FUNCTION                ${NAME_FIELD}                               ${NAME_VALUE}
    MAPPING FUNCTION                ${PRENOM_FIELD}                             ${PRENOM_VALUE}
    MAPPING FUNCTION                ${POST_TITLE_FIELD}                         ${POST_TITLE_VALUE}
    MAPPING FUNCTION                ${TYPE_FIELD}                               ${TYPE_VALUE}
    MAPPING FUNCTION                ${EMAIL_FIELD}                              ${EMAIL_VALUE} 
    MAPPING FUNCTION                ${TJM}                                      ${TJM_VALUE} 
    MAPPING FUNCTION                ${PHONE_FIELD}                              ${PHONE_VALUE}
    MAPPING FUNCTION                ${ADRESSE_FIELD}                            ${ADRESSE_VALUE}
    MAPPING FUNCTION                ${COUNTRY_FIELD}                            ${COUNTRY_VALUE}
    MAPPING FUNCTION                ${CITY_FIELD}                               ${CITY_VALUE}
    MAPPING FUNCTION                ${REFERENCE_FIELD}                          ${REFERENCE_VALUE}

ASSOCIATION OF COLUMNS CLIENTS
    MAPPING FUNCTION                ${CLIENT_REFERENCE_FIELD}                   ${CLIENT_REFERENCE_VALUE}
    MAPPING FUNCTION                ${CLIENT_COMPANY_NAME}                      ${CLIENT_COMPANY_NAME_VALUE}
    MAPPING FUNCTION                ${CLIENT_CODE_FIELD}                        ${CLIENT_CODE_VALUE}
    MAPPING FUNCTION                ${ACTIVITY_FIELD}                           ${ACTIVITY_VALUE}
    MAPPING FUNCTION                ${LEGAL_STATUS_FIELD}                       ${LEGAL_STATUS_VALUE}
    MAPPING FUNCTION                ${TVA_TAX_FIELD}                            ${TVA_TAX_VALUE}
    MAPPING FUNCTION                ${SIRET_FIELD}                              ${SIRET_VALUE}
    MAPPING FUNCTION                ${CLIENT_RCS_FIELD}                         ${CLIENT_RCS_VALUE}
    MAPPING FUNCTION                ${CLIENT_NAME}                              ${CLIENT_NAME_VALUE}
    MAPPING FUNCTION                ${CLIENT_LASTNAME}                          ${CLIENT_LASTNAME_VALUE}
    MAPPING FUNCTION                ${CLIENT_EMAIL}                             ${CLIENT_EMAIL_VALUE} 
    MAPPING FUNCTION                ${CLIENT_PHONE}                             ${CLIENT_PHONE_VALUE}
    MAPPING FUNCTION                ${CLIENT_FAX}                               ${CLIENT_FAX_VALUE}
    MAPPING FUNCTION                ${CLIENT_ADDRESS}                           ${CLIENT_ADDRESS_VALUE}
    MAPPING FUNCTION                ${CLIENT_ZIP_CODE}                          ${CLIENT_ZIP_CODE_VALUE}
    MAPPING FUNCTION                ${CLIENT_CITY}                              ${CLIENT_CITY_VALUE} 
    MAPPING FUNCTION                ${CLIENT_PAYS}                              ${CLIENT_PAYS_VALUE}
    MAPPING FUNCTION                ${CLIENT_PAYMENT_METHODE}                   ${CLIENT_PAYMENT_METHODE_VAL}
    MAPPING FUNCTION                ${CLIENT_PAYMENT_MODE}                      ${CLIENT_PAYMENT_MODE_VAL}
    MAPPING FUNCTION                ${CLIENT_ADDRESS_FACTURATION}               ${CLIENT_ADDRESS_FACTURATION_VAL}
    MAPPING FUNCTION                ${CLIENT_ADDRESS_FACTURATION2}              ${CLIENT_ADDRESS_FACTURATION2_VAL}
    MAPPING FUNCTION                ${CLIENT_ZIP_CODE_FCT}                      ${CLIENT_ZIP_CODE_FCT_VAL}
    MAPPING FUNCTION                ${CLIENT_CITY_FCT}                          ${CLIENT_CITY_FCT_VAL} 
    MAPPING FUNCTION                ${CLIENT_COUNTRY_FCT}                       ${CLIENT_COUNTRY_FCT_VAL}
    MAPPING FUNCTION                ${CLIENT_CONTACT}                           ${CLIENT_CONTACT_VALUE} 
    MAPPING FUNCTION                ${CLIENT_COMMENT}                           ${CLIENT_COMMENT_VALUE}

ASSOCIATION OF COLUMNS PROJECTS
    MAPPING FUNCTION                ${PROJECT_TITLE_FIELD}                       ${PROJECT_TITLE_VALUE}
    MAPPING FUNCTION                ${CHARGE_TYPE_FIELD}                         ${CHARGE_TYPE_VALUE}
    MAPPING FUNCTION                ${PROJ_IMPORT_CHARGE_FIELD}                  ${PROJ_IMPORT_CHARGE_VALUE}
    MAPPING FUNCTION                ${PROJ_START_DATE_FIELD}                     ${PROJ_START_DATE_VALUE}
    MAPPING FUNCTION                ${PROJ_END_DATE_FIELD}                       ${PROJ_END_DATE_VALUE}
    MAPPING FUNCTION                ${PROJECT_REFERENCE_FIELD}                   ${PROJECT_REFERENCE_VALUE}
    MAPPING FUNCTION                ${PROJ_CLIENT_REFERENCE_FIELD}               ${PROJ_CLIENT_REFERENCE_VALUE}

ASSOCIATION OF COLUMNS PRODUCTS
    MAPPING FUNCTION                ${PRODUCT_TITLE_FIELD}                        ${PRODUCT_TITLE_VALUE} 
    MAPPING FUNCTION                ${PRODUCT_REFERENCE_FIELD}                    ${PRODUCT_REFERENCE_VALUE}
    MAPPING FUNCTION                ${PRODUCT_DESCRIPTION_FIELD}                  ${PRODUCT_DESCRIPTION_VALUE}
    MAPPING FUNCTION                ${PRODUCT_AMOUNT_FIELD}                       ${PRODUCT_AMOUNT_VALUE}

ASSOCIATION OF COLUMNS PRESTATIONS
    MAPPING FUNCTION                ${PRESTATION_TITLE}                           ${PRESTATION_TITLE_VALUE}
    MAPPING FUNCTION                ${PRESTATION_TYPE_FIELD}                      ${PRESTATION_TYPE_VALUE}
    MAPPING FUNCTION                ${PRESTATION_SALE_REFERENCE}                  ${PRESTATION_SALE_REFERENCE_VAL}
    MAPPING FUNCTION                ${PRESTATION_AMOUNT}                          ${PRESTATION_AMOUNT_VALUE}
    MAPPING FUNCTION                ${PRESTATION_COLLABORATOR}                    ${PRESTATION_COLLABORATOR_VALUE}
    MAPPING FUNCTION                ${PRESTATION_PRODUCT_REF}                     ${PRESTATION_PRODUCT_REF_VALUE}
    MAPPING FUNCTION                ${PRESTATION_TJM}                             ${PRESTATION_TJM_VALUE}
    MAPPING FUNCTION                ${PRESTATION_REFERENCE}                       ${PRESTATION_REFERENCE_VALUE}

ASSOCIATION OF COLUMNS SALES   
    MAPPING FUNCTION                ${SALE_REFERENCE}                              ${SALE_REFERENCE_VALUE}
    MAPPING FUNCTION                ${SALE_REFERENCE_CLIENT}                       ${SALE_REFERENCE_CLIENT_VAL}                 
    MAPPING FUNCTION                ${SALE_REFERENCE_PROJET}                       ${SALE_REFERENCE_PROJET_VAL}
    MAPPING FUNCTION                ${SALE_TITLE}                                  ${SALE_TITLE_VALUE} 
    MAPPING FUNCTION                ${SALE_STATUS}                                 ${SALE_STATUS_VALUE}
    MAPPING FUNCTION                ${SALE_TYPE}                                   ${SALE_TYPE_VALUE}
    MAPPING FUNCTION                ${SALE_NUMBER}                                 ${SALE_NUMBER_VALUE}
    MAPPING FUNCTION                ${SALE_AMOUNT}                                 ${SALE_AMOUNT_VALUE}
    MAPPING FUNCTION                ${SALE_TVA}                                    ${SALE_TVA_VALUE}
    MAPPING FUNCTION                ${SALE_TTC}                                    ${SALE_TTC_VALUE}
    MAPPING FUNCTION                ${SALE_START_DATE}                             ${SALE_START_DATE_VALUE}
    MAPPING FUNCTION                ${SALE_END_DATE}                               ${SALE_END_DATE_VALUE}
CLICK THE IMPORT BUTTON 
    Wait Until Element Is Visible             ${IMPORT_BUTTON}
    Click Element                             ${IMPORT_BUTTON}   

WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESSFULLY 
    Wait Until Page Contains                   Processus en cours 
    Wait Until Keyword Succeeds   7      7     Page Should Contain               Aucun processus d'importation n'est actuellement en cours.
    Wait Until Keyword Succeeds   7      7     Wait Until Page Contains             Importation terminée.  
    # Element Should Contain                     ${SNACKBAR_SUCCESS}                       ${IMPORT_SUCESS_NOTIFICATION}
    Wait Until Keyword Succeeds   7      7     Page Should Contain               Aucun processus d'importation n'est actuellement en cours.



# --------------------------------------------------------------Purchase-------------------------------------------------------

SELECT ITEM FROM SIDEBAR 
    [Arguments]                               ${SIDEBAR_ITEM_TITLE}
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}               timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${SIDEBAR_ITEM_TITLE}                  timeout=2s
    click Element                             ${SIDEBAR_ITEM_TITLE}
    RETURN                                    ${sidebar_element}
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
    Wait Until Element Is Visible            ${CHOSEN_END_DATE}
    Click Element                            ${CHOSEN_END_DATE}
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

SELECT FILTER FROM A LIST 
    [Arguments]                           ${FILTER_FILED}         ${SELECTED_FILTER}
    Click Element                         ${FILTER_FILED} 
    Wait Until Element Is Visible         ${SELECTED_FILTER}
    Click Element                         ${SELECTED_FILTER}
APPLY FILTERS IN PURCHASE PAGE
    [Arguments]                           ${purchase_name}
    SELECT FILTER FROM A LIST             ${PURCHASE_START_DATE_FILTER}          ${CHOSEN_START_DATE}
    SELECT FILTER FROM A LIST             ${PURCHASE_END_DATE_FILTER}            ${CHOSEN_END_DATE}
    SELECT FILTER FROM A LIST             ${PURCHASE_STATUS_FILTER}              ${PURCHASE_FNP_STATUS}
    SELECT FILTER FROM A LIST             ${PURCHASE_TYPE_FILTER}                ${PURCHASE_CHOSEN_TYPE_FILTER}
    SELECT FILTER FROM A LIST             ${PURCHASE_CATEGORY_FILTER}            ${PURCHASE_CATEGORY_CHOSEN_FILTER}
    Wait Until Element Is Visible         ${PURCHASE_CARD_TITLE_LOCATOR}
    ${card_title_text}=    Get Text       ${PURCHASE_CARD_TITLE_LOCATOR}
    Should Be Equal As Strings            ${card_title_text}                 ${purchase_name} 

# ----------------------------CLEAN UP DATA

Authenticate User
    [Documentation]  This keyword authenticates the user and retrieves the token
    ${headers}=  Create Dictionary  Accept=application/json  Content-Type=application/json
    ${payload}=  Create Dictionary  email=${EMAIL-token}  password=${PASSWORD-token}
    ${response}=  POST  ${API_URL}  headers=${headers}  json=${payload}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  200
    ${token}=  Set Variable  ${response.json()['token']}
    Set Global Variable  ${TOKEN}  ${token}
Clean Up Imported Data
    [Documentation]  This keyword deletes previously imported collaborator data
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${EMPLOYEES_ENDPOINT}?search=${UNIQUE_PREFIX}
    ${response}=  GET  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  200
    ${collaborators}=  Evaluate  [item for item in $response.json()['data']['data']]  json
    FOR  ${collaborator}  IN  @{collaborators}
        ${collaborator_id}=  Set Variable  ${collaborator['uuid']}
        DELETE Collaborator  ${collaborator_id}
    END

DELETE Collaborator
    [Arguments]  ${collaborator_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${EMPLOYEES_ENDPOINT}/${collaborator_id}/for_tests
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  201
    
                      