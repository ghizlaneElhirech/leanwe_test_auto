*** Settings ***
Library      SeleniumLibrary
Library      Collections
Library    DateTime
Library           OperatingSystem
Library    String
Library    XML
Resource     VARIABLES.resource


*** Variables ***
${date_format}    %Y-%m-%d %H:%M:%S

*** Keywords ***
LOG IN AS SUPPORT
    Open Browser    ${Leanwe_URL}            ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible            ${LOGIN_PAGE_FORM_USERNAME_INPUT}
    Wait Until Element Is Visible            ${LOGIN_PAGE_FORM_PASSWORD_INPUT}
    input text                               ${LOGIN_PAGE_FORM_USERNAME_INPUT}      redouane@yopmail.com
    input text                               ${LOGIN_PAGE_FORM_PASSWORD_INPUT}      secret2023
    click element                            ${LOGIN_BUTTON}

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
    Input Text                                ${CONTRACT_REF_FIELD}            C-0008    
    Click Element                             ${COMPANY_NAME_DROPDOWN}          
    Input Text                                ${COMPANY_NAME_DROPDOWN}          CSFI        
    Sleep    2s
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

SELECT OFFER FROM SIDEBAR 
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}               timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${OFFER_SIDEBAR_ITEM}                  timeout=2s
    click Element                             ${OFFER_SIDEBAR_ITEM}
CLICK THE ADD NEW BUTTON 
    Wait Until Element Is Visible             ${NEW_OFFER_BTN}
    Click Element                             ${NEW_OFFER_BTN}

FILL OUT THE OFFER CREATION FORM 
    Wait Until Element Is Visible            ${OFFER_TITLE_FIELD}                    timeout=4s    
    Wait Until Element Is Enabled             ${OFFER_TITLE_FIELD} 
    Click Element                             ${OFFER_TITLE_FIELD}             
    Input Text                                ${OFFER_TITLE_FIELD}                    Offer_test_Demo     
    Input Text                                ${OFFER_COUNTRY_FIELD}                  france  
    Press Keys    none    ARROW_DOWN
    Press Keys    none    ENTER    
    Input Text                                ${OFFER_CITY_FIELD}                      Paris
    Click Element                             ${MANAGER_SELECT_FIELD}    
    Wait Until Element Is Visible             ${MANAGER_SELECTED_OPTION}                                
    Click Element                             ${MANAGER_SELECTED_OPTION}   
    Click Element                             ${OFFER_START_DATE} 
    Wait Until Element Is Visible             ${OFFER_START_DATE_DAY} 
    Click Element                             ${OFFER_START_DATE_DAY}  
    Click Element                             ${OFFER_END_DATE}
    Wait Until Element Is Visible             ${OFFER_END_DATE_DAY}   
    Click Element                             ${OFFER_END_DATE_DAY}
    Input Text                                ${OFFER_TJM_FIELD}                    500    
    Input Text                                ${OFFER_LEVEL_EXP_FIELD}                4    
    Click Element                             ${OFFER_RECRUITE_PROCESS}
    Wait Until Element Is Visible             ${OFFER_SELECTED_PROCESS}  
    Click Element                             ${OFFER_SELECTED_PROCESS}  
    Click Element                             ${OFFER_FREQUENCE_DAYS}    
    Wait Until Element Is Visible             ${OFFER_FREQUENCE_DAYS_CHOICE}
    Click Element                             ${OFFER_FREQUENCE_DAYS_CHOICE}
    Input Text                                ${OFFER_PUBLIC_EMAIL_FIELD}            hiring_auto@yopmail.com
    Input Text                                ${OFFER_REFERENCE_FIELD}               Reference_auto_0001
    Input Text                                ${OFFER_URL_FIELD}                     https://staging.lean
    Input Text                                ${OFFER_COMPANY_TEXT_AREA}             This company is created to try out an automated script made qith robot framework
    Input Text                                ${OFFER_DESCRIPTION_TEXT_AREA}         This Job post is created to test the offers section in the plateform and check out if the offers are created as expected

SUBMIT THE OFFER FORM 
    Click Element                             ${OFFER_CREATE_BTN}

CHECK THE DISPLAY OF SUCCESS NOTIFICATION 
    Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
    Element Should Contain                    ${SNACKBAR_SUCCESS}                ${OFFER_SUCESS_NOTIFICATION}
FILTER BY NEW OFFER
    [Arguments]                               ${searched_offer} 
    Wait Until Element Is Visible             ${OFFER_SEARCH_BAR}            timeout=15s
    Input Text                                ${OFFER_SEARCH_BAR}            ${searched_offer} 
    Wait Until Element Is Visible             ${OFFER_CARD_TITLE} 
    Click Element                             ${OFFER_CARD_TITLE} 

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

# ----------------------------------IMPORTCOLLABORATOR------------------------------------
NAVIGATE TO RESOURCE IMPORT PAGE 
    Wait Until Element Is Visible             ${sidebar_Xpath}
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Sleep   2s
    click element                             ${RESOURCE_IMPORT_ITEM}
    sleep   2s
    Wait Until Page Contains                  Importation de resources

SELECT THE RESOURCE TYPE 
    [Arguments]                              ${CHOSEN_TYPE}
    click element                            ${RESOURCE_TYPE_FIELD} 
    sleep   3s
    click element                            ${CHOSEN_TYPE}
    sleep   2s

UPLOAD FILE 
    [Arguments]                             ${FILE_NAME}
    Choose File                             ${UPLOAD_FILE_FIELD}                ${FILE_NAME}

MAPPING FUNCTION
    [Arguments]                             ${FIELD}                            ${CSV_TITLE}
    Input Text                              ${FIELD}                            ${CSV_TITLE}
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
CLICK THE IMPORT BUTTON 
    Wait Until Element Is Visible             ${IMPORT_BUTTON}
    Click Element                             ${IMPORT_BUTTON}   

WAIT FOR THE IMPORT PROCESS TO FINISH SUCCESFULLY 
    Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
    Element Should Contain                    ${SNACKBAR_SUCCESS}               ${IMPORT_SUCESS_NOTIFICATION}
    Wait Until Page Contains                   Processus en cours 
    Wait Until Keyword Succeeds   5      5     Page Should Contain               Aucun processus d'importation n'est actuellement en cours.

Create a New Contract Model
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Scroll Element Into View    ${ACESS_CONTRACTS_Model_PAGE}
    Wait Until page Contains Element        ${ACESS_CONTRACTS_Model_PAGE}        timeout=5s
    Set Focus To Element        ${ACESS_CONTRACTS_Model_PAGE}     
    Click Element                           ${ACESS_CONTRACTS_Model_PAGE}
    Sleep    5s             
    Click Element                ${New_Contract_Model_Button}
    Sleep    3s
    ${current_datetime}=    Get Current Date    result_format=${date_format}
    ${ModelContracttitle}=    Set Variable    Model_De_Test_Khalil-${current_datetime}
    Input Text    xpath=//input[@placeholder='Saisir un nom' and @type='text']   text= ${ModelContracttitle}
    Click Element    xpath=//span[contains(text(), 'Créer')]
    Sleep    5s
    Page Should Contain  ${ModelContracttitle}
    [Return]    ${ModelContracttitle}    

Search Contract Model
    [Arguments]    ${ModelContracttitle}
    Input Text    xpath=//input[@type='text' and @placeholder="Rechercher"]   text= ${ModelContracttitle}
    ##Click Element    xpath=//body/div[@id='spark-app']/div[@id='app']/div[2]/div[1]/div[3]/main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/a[1]
    ${ResearchResult}=    Get Text    xpath=//*[@id="scrolling-container"]/div/div/a/div/div[1]/div[2]/span/span/span
    Log To Console    ${ResearchResult}
    Log To Console    ${ModelContracttitle}
    Element Text Should Be    xpath=//*[@id="scrolling-container"]/div/div/a/div/div[1]/div[2]/span/span/span    ${ModelContracttitle}    # robotcode: ignore


Create a new Subcontactor
    Click Button                ${New_SUBCONTRACTOR_Button}
    Sleep    3s
    ${PO_Number}    Generate Random String    9    0123456789
    ${PO_String}    Generate Random String    8    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    Input Text    ${SUBCONTRACTOR_SIREN}    text=${PO_Number}
    Click Element    ${SUBCONTRACTOR_Raison_Social}    
    Sleep    3s
    Input Text    ${SUBCONTRACTOR_Raison_Social}    text=${PO_String}
    Input Text    ${SUBCONTRACTOR_Forme_juridique}    text=test
    Sleep    1s
    Input Text    ${SUBCONTRACTOR_Adresse_siége_social}    text=LEVALLOIS PERRET
    Input Text    ${SUBCONTRACTOR_Code_Postal}    text=92300
    Input Text    ${SUBCONTRACTOR_Ville}    text=Paris
    Input Text    ${SUBCONTRACTOR_Lieu_RCS}    text=Nanterre
    Input Text    ${SUBCONTRACTOR_Numero_RCS}    text=${PO_Number}
    Input Text    ${SUBCONTRACTOR_Representant}    text=Redouane
    Input Text    ${SUBCONTRACTOR_Fonction}    text=CEO
    Input Text    ${SUBCONTRACTOR_Capital}    text=100000
    Input Text    ${SUBCONTRACTOR_Nom_Compte_Bancaire}    text=Inventiv
    Input Text    ${SUBCONTRACTOR_BIC}    text=CRMYFRPP
    Input Text    ${SUBCONTRACTOR_IBAN}    text=FR123 6465747 09M78 6677854324
    Input Text    ${SUBCONTRACTOR_Contact_Email}    text=khalil_test@yopmail.com
    Click Button    ${SUBCONTRACTOR_Sauvgarde_Button}
    Sleep    5s 
    [Return]    ${PO_String}
    Log To Console    ${PO_String}

Search new Subcontractor
    [Arguments]    ${PO_String}
    Input Text    xpath=//input[@name="subContractorKeyWord"]   text=${PO_String}
    Sleep    2s
    ${ResearchResult}=    Get Text    xpath=//span[@class="subcontractor-name"]
    Log To Console    ${ResearchResult}
    Log To Console    ${PO_String}
    
    Element Text Should Be   xpath=//span[@class="subcontractor-name"]    ${PO_String}    # robotcode: ignore

Search Subcontractor By Type
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Scroll Element Into View    ${ACESS_SUBCONTRACTOR_PAGE}
    Wait Until page Contains Element        ${ACESS_SUBCONTRACTOR_PAGE}        timeout=5s
    Set Focus To Element        ${ACESS_SUBCONTRACTOR_PAGE}     
    Click Element                           ${ACESS_SUBCONTRACTOR_PAGE}
    Sleep    5s             
    Click Element    xpath=//i[contains(text(),'arrow_drop_down')]
    Click Element    xpath=//div[contains(text(),'Interne')]
    Sleep    5s
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Externe
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Indépendant
    Sleep    3s
    Click Element    xpath=//i[contains(text(),'arrow_drop_down')]
    Click Element    xpath=//div[contains(text(),'Externe')]
    Sleep    3s
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Interne
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Indépendant
    Sleep    3s
    Click Element    xpath=//i[contains(text(),'arrow_drop_down')]
    Click Element    xpath=//div[contains(text(),'Indépendant')]
    Sleep    3s
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Externe
    Element Should Not Contain    ${SUBCONTRACTOR_Type}    text=Interne
    Sleep    3s
    Click Button    xpath=//button[contains(text(),'clear')]
    Sleep    3s


Create new internal command
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Scroll Element Into View    ${ACESS_COMMANDS}
    Wait Until page Contains Element        ${ACESS_COMMANDS}        timeout=5s
    Set Focus To Element        ${ACESS_COMMANDS}   
    Click Element                           ${ACESS_COMMANDS}
    sleep    3s
    Click Element    ${ACESS_INTERNAL-COMMANDS}
    Sleep    5s
    Click Element    ${NEW_INTERNAL-COMMANDS}
    Sleep    2s
    ${Commande_ANumber}    Generate Random String    6    0123456789
    ${Al_String}    Generate Random String    3    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    ${inputs}=    Get WebElements    xpath=//input[@cy-data="type_select"]
    ${inputs1}=    Get WebElements    xpath=//input[@cy-data="title_field"]
    Input Text    ${COMMANDE_NUMBER}    text=${Commande_ANumber}
    Sleep    2s
    Click Element    ${COMMANDE_TYPE}
    Click Element    xpath=//div[contains(text(),'Forfaitaire')]
# Première méthode - Via update:model
    Wait Until Element Is Visible    xpath=//*[@cy-data='startDate_date']    timeout=10s
    ${js1}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="startDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2025-11-01');
    Execute JavaScript    ${js1}
    Sleep    2s

    # Troisième méthode - Update complet
    ${js3}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="endDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2025-12-30');
    Execute JavaScript    ${js3}
    Sleep    2s

    # Si besoin de vérifier que la valeur a bien été mise à jour
    ${js_verify}=    Catenate    SEPARATOR=\n
    ...    return document.querySelector('[cy-data="startDate_date"] input').value;
    ${value}=    Execute JavaScript    ${js_verify}
    Should Be Equal    ${value}    2025-11-01

    Sleep    3s
    Click Element    ${COMMANDE_CLIENT1}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'LACOSTE')]
    Sleep    3s
    Click Element    ${inputs[1]}
    Sleep    3s
    Click Element    xpath=//div[contains(text(),'CLC-002')]
    Sleep    3s
    Input Text    ${inputs1[1]}    text=test-${Al_String}
    Input Text    ${inputs1[2]}    text=500
    Input Text    ${inputs1[3]}    text=500
    Sleep    3s
    Click Element    ${COMMANDE_ADDBUTTON}                
    Sleep    5s


Create New Client
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Scroll Element Into View    ${ACESS_CLIENT_PAGE}
    Wait Until page Contains Element        ${ACESS_CLIENT_PAGE}        timeout=5s
    Set Focus To Element        ${ACESS_CLIENT_PAGE}    
    Click Element                           ${ACESS_CLIENT_PAGE}
    Sleep    5s
    Click Element    xpath=//button[@cy-data="createNew_btn"]
    Sleep    3s
    ${PO_String}    Generate Random String    8    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    ${PO_Number}    Generate Random String    11    0123456789
    ${PO_Number_SIRET}    Generate Random String    14    0123456789
    ${PO_Number_RCS}    Generate Random String    9    0123456789
    ${PO_Number_Tel}    Generate Random String    8    0123456789
    Input Text    ${CLIENT_NAME}    text=Khalil
    Input Text    ${CLIENT_FIRSTNAME}    text=BHS
    Input Text    ${CLIENT_RAISON_SOCIALE}    text=${PO_String}
    Input Text    ${CLIENT_SECTEUR}    text=informatique
    Input Text    ${CLIENT_STATUSJ}    text=SARL
    Input Text    ${CLIENT_TVA}    text=FR ${PO_Number} 
    Input Text    ${CLIENT_SIRET}    text=${PO_Number_SIRET}
    Input Text    ${CLIENT_RCS}    text=${PO_Number_RCS}
    Input Text    ${CLIENT_CODE}    text=141Z2
    Input Text    ${CLIENT_EMAIL}    text=${PO_String}@yopmail.com
    Input Text    ${CLIENT_TEL}    text=06${PO_Number_Tel}
    Input Text    ${CLIENT_FAX}    text=01${PO_Number_Tel}
    Input Text    ${CLIENT_ADRESSE}    text=1 avenue de paris
    Input Text    ${CLIENT_CP}    text=92000
    Input Text    ${CLIENT_VILLE}    text=Nanterre
    Input Text    ${CLIENT_PAYS}    text=France    
    Input Text    ${CLIENT_COMMENT}    text=test
    Input Text    ${CLIENT_FACT_EMAIL}    text=${PO_String}@yopmail.com
    Sleep    3s
    Click Element    ${CLIENT_COND_REG} 
    Click Element    xpath=//div[contains(text(),'45j à partir de la date de la facture')]
    Input Text    ${CLIENT_VILLE_REG}    text=Nanterre
    Input Text    ${CLIENT_CP_REG}    text=92000
    Input Text    ${CLIENT_PAYS_REG}    text=France
    Input Text    ${CLIENT_ADD1_REG}    text=1 avenue de paris
    Execute JavaScript    document.querySelector('[cy-data="submitClient_btn"]').click()
    Sleep    3s
    [Return]    ${PO_String}
    Log To Console    ${PO_String}

#Search Client By Name


#############################################

#Bank-transfers
Create New Bank Transfers
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${ACESS_Virement-bancaire}                  timeout=2s
    click Element                             ${ACESS_Virement-bancaire}
    Sleep    3s
    Click Element                             ${AddNew_Virement-bancaire}
    Sleep    3s
    Click Element    ${Facture_a_regler}
    Input Text    ${Text_Facture_a_regler}    text=test_aiu
    Sleep    3s
    Click Element    ${Validation_facture}
    Sleep    3s
    Click Element    xpath=//label[contains(text(),'Factures à régler')]
    Sleep    3s
    Execute JavaScript    return document.querySelector('[cy-data="startDate_date"]').querySelector('input').value = '2025-11-23';
    Execute JavaScript    return document.querySelector('[cy-data="startDate_date"]').querySelector('input').dispatchEvent(new Event('input'));
    Sleep    3s
    Click Element    ${Ajouter-VB} 
    Sleep    3s 

# Regroup Factures
Create new Facture groupe
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${ACESS_Factures}                 timeout=2s
    click Element                             ${ACESS_Factures}
    Sleep    3s
    Click Element    ${AddNew_Factures-Groupe}
    Sleep    3s

    # Première méthode - Via update:model
    Wait Until Element Is Visible    xpath=//*[@cy-data='startDate_date']    timeout=10s
    ${js1}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="startDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2024-11-01');
    Execute JavaScript    ${js1}
    Sleep    2s

    # Deuxième méthode - Via le composant parent
    ${js2}=    Catenate    SEPARATOR=\n
   ...    const datePicker = document.querySelector('[cy-data="dueDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2024-12-10');
    Execute JavaScript    ${js2}
    Sleep    2s

    # Troisième méthode - Update complet
    ${js3}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="endDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2024-12-30');
    Execute JavaScript    ${js3}
    Sleep    2s

    # Si besoin de vérifier que la valeur a bien été mise à jour
    ${js_verify}=    Catenate    SEPARATOR=\n
    ...    return document.querySelector('[cy-data="startDate_date"] input').value;
    ${value}=    Execute JavaScript    ${js_verify}
    Should Be Equal    ${value}    2024-11-01

    Click Element    xpath=//*[@cy-data='client_autocomplete']
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'ALLIANZ')]
    Sleep    3s
    Click Element    xpath=//input[@cy-data="invoices_multiselect"]
    Sleep    3s
    ${checkboxs}=    Get WebElements    xpath=//div[@class="v-simple-checkbox"]
    Click Element    ${checkboxs[0]}
    Sleep    1s
    Click Element    ${checkboxs[1]}
    Sleep    1s
    Click Button  xpath=//*[@cy-data='submitInvoice_btn']
    Sleep    3s


Vérifier Le Téléchargement Du Fichier
    # Cliquer sur le bouton "Exporter les factures"
    Click Element    ${EXPORT_BUTTON_XPATH}
    
    Sleep    5s
    
    # Vérifier si le fichier a été téléchargé
    File Should Exist    ${DOWNLOAD_DIR}/${EXPECTED_FILE_NAME}


Create New Order
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${ACESS_Virement-bancaire}                  timeout=2s
    click Element                             ${ACESS_Virement-bancaire}
    Sleep    3s
    Click Element                             ${AddNew_Virement-bancaire}
    Sleep    3s
    Click Element    ${Facture_a_regler}
    Input Text    ${Text_Facture_a_regler}    text=test_aiu
    Sleep    3s
    Click Element    ${Validation_facture}
    Sleep    3s
    Click Element    xpath=//label[contains(text(),'Factures à régler')]
    Sleep    3s
    Execute JavaScript    return document.querySelector('[cy-data="startDate_date"]').querySelector('input').value = '2025-11-23';
    Execute JavaScript    return document.querySelector('[cy-data="startDate_date"]').querySelector('input').dispatchEvent(new Event('input'));
    Sleep    3s
    Click Element    ${Ajouter-VB} 
    Sleep    3s

#----------------------Mission---------------------------------------

Create New Mission
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${ACESS_Collaborateurs}                  timeout=2s
    click Element                             ${ACESS_Collaborateurs}
    Sleep    3s
    Click Element                             ${ACESS_Missions}
    Sleep    3s
    Click Element                             ${Ajouter_Mission}
    Sleep    3s
    Click Element    ${Clients_Mission}     
    Sleep    4s
    Wait Until Element Is Visible    xpath=//div[contains(text(),'LACOSTE')]
    Execute JavaScript    var element = document.evaluate("//div[@class='w-100 d-flex flex-column col']//div[contains(text(),'LACOSTE')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; if (element) { element.click(); }
    Sleep    3s
    Click Element    ${Projets_Mission}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'Lacoste_project')]
    Sleep    3s
    Click Element    ${Commandes_Mission}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'cmd-item1')]
    Sleep    3s
    Click Element    ${Prestations_Mission}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'UX')]
    Sleep    3s
    Click Element    ${Commercial_Mission}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'Hadry GASSAMA')]
    Sleep    3s
    Click Element    ${Creer_Mission}  

Apply Date Filter
    [Arguments]    ${date_debut}    ${date_fin}
    Input Text    ${Mission_START_DATE}    ${date_debut}
    Input Text    ${Mission_END_DATE}      ${date_fin}
    Press Keys    ${Mission_END_DATE}      RETURN
    Sleep    2s    

Apply Type Mission Filter
    [Arguments]    ${type_mission}
    Wait Until Element Is Visible    ${Mission_TypeF}
    Select From List By Value    ${Mission_TypeF}    ${type_mission}
    Sleep    2s

Apply Client Filter
    [Arguments]    ${client}
    Input Text    ${Mission_ClientF}    ${client}
    Press Keys    ${Mission_ClientF}    RETURN
    Sleep    2s

Apply Commercial Filter
    [Arguments]    ${commercial}
    Input Text    ${Mission_CommercialF}    ${commercial}
    Press Keys    ${Mission_CommercialF}    RETURN
    Sleep    2s

Apply Statut Filter
    [Arguments]    ${statut}
    Select From List By Value    ${Mission_Statut}    ${statut}
    Sleep    2s

Verify Filter Results
    ${results}=    Get Text    ${RESULTS_M}
    Should Contain    ${results}    "Société de dév"
    Should Contain    ${results}    "Terminée"
    ${date_debut}=    Get Text    ${Mission_START_DATE}
    ${date_fin}=      Get Text    ${Mission_END_DATE}
    ${current_date}=   Get Text    ${RESULTS}
    Should Be True    ${current_date} >= ${date_debut}    
    Should Be True    ${current_date} <= ${date_fin}

      

Create new client command
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Scroll Element Into View    ${ACESS_COMMANDS}
    Wait Until page Contains Element        ${ACESS_COMMANDS}        timeout=5s
    Set Focus To Element        ${ACESS_COMMANDS}   
    Click Element                           ${ACESS_COMMANDS}
    sleep    3s
    Click Element    ${ACESS_CLIENT-COMMANDS}
    Sleep    5s
    Click Element    ${NEW_CLIENT-COMMANDS}
    Sleep    2s
    ${Commande_ANumber}    Generate Random String    6    0123456789
    ${Al_String}    Generate Random String    3    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    Input Text    ${COMMANDE_NUMBER}    text=${Commande_ANumber}
    Sleep    2s
    Click Element    ${COMMANDE_TYPE}
    Click Element    xpath=//div[contains(text(),'Forfaitaire')]
 # Première méthode - Via update:model
    Wait Until Element Is Visible    xpath=//*[@cy-data='startDate_date']    timeout=10s
    ${js1}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="startDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2025-11-01');
    Execute JavaScript    ${js1}
    Sleep    2s

    # Troisième méthode - Update complet
    ${js3}=    Catenate    SEPARATOR=\n
    ...    const datePicker = document.querySelector('[cy-data="endDate_date"]').__vue__;
    ...    datePicker.$emit('update:model', '2025-12-30');
    Execute JavaScript    ${js3}
    Sleep    2s

    # Si besoin de vérifier que la valeur a bien été mise à jour
    ${js_verify}=    Catenate    SEPARATOR=\n
    ...    return document.querySelector('[cy-data="startDate_date"] input').value;
    ${value}=    Execute JavaScript    ${js_verify}
    Should Be Equal    ${value}    2025-11-01

    sleep    3s
    Click Element    ${COMMANDE_CLIENT1}
    Sleep    4s
    Click Element    xpath=//div[contains(text(),'LACOSTE')]
    Sleep    3s
    Input Text    xpath=//div[@class='col col-6']//label[contains(text(), 'Titre')]/ancestor::div[@class='col col-6']//input    text=${Al_String}
    Input Text    xpath=//div[@class='col col-6']//label[contains(text(), 'Montant HT')]/ancestor::div[@class='col col-6']//input    text=500
    Input Text    xpath=//div[@class='col col-6']//label[contains(text(), 'TVA')]/ancestor::div[@class='col col-6']//input    text=500
    Sleep    3s
    Click Element    ${COMMANDE_ADDBUTTON}                
    Sleep    5s

    

    






