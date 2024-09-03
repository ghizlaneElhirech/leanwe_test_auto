*** Variables ***
${Leanwe_URL}       https://staging.leanwe.com
${BROWSER}          chrome
${LOGIN_PAGE_FORM_USERNAME_INPUT}        xpath=//input[@name="email"]
${LOGIN_PAGE_FORM_PASSWORD_INPUT}        xpath=//input[@name="password"]
${sidebar_Xpath}                         xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]
${CONTRACT_ITEM}                         xpath=//body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]/div[1]/div[1]/div[1]/div[2]
${LOGIN_BUTTON}                          xpath://body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[1]/button[1] 
${DASHBOARD_TITLE_XPATH}                 xpath=//span[contains(text(),'Tableau de Bord')]
${ACESS_CONTRACTS_PAGE}                  xpath=//div[contains(text(),'Les Contrats')]
${CONTRACTS_TITLE_XPATH}                 xpath=//span[contains(text(),'Contrats')]
${CREATE_NEW_CONTRACT_BUTTON}            xpath=//span[contains(text(),'Nouveau Contrat')]
${CONTRACT_FORM_TITLE}                   xpath=//span[contains(text(),'Créer un contrat')]
${CONTRACT_REF_FIELD}                    xpath=//input[@cy-data="contractNumber_field"]
${COMPANY_NAME_DROPDOWN}                 xpath=//input[@cy-data="socialReason_autocomplete"]
${NEXT_BUTTON_CONTRACT}                  xpath=//span[contains(text(),'  Suivant ')]
${CLIENT_INPUT}                          xpath=//input[@cy-data="client_autocomplete"]
${SELECTED_CLIENT_DROPDOWN}              xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[2]
${MISSION_LOCATION_INPUT}                xpath=//input[@cy-data="missionLocation_field"]
${CONTRACT_OBJECT_FIELD}                 xpath=//input[@cy-data="offerName_autocomplete"]
${CONTRACT_OBJECT_DROPDOWN}              xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[1]
${START_DATE}                            xpath='//label[text()="Date de début"]/..'
${SELECTED_COMPANY_DROPDOWN}             xpath=xpath=//body/div[@id='spark-app']/div[@id='app']/div[2]/div[1]/div[1]/div[1]/div[1]
# ------------------------------------------PRJECT------------------------------
${PROJECT_SIDEBAR_ITEM}                  xpath=//div[contains(text(),'Projets')]
${CREATE_NEW_PROJECT_BUTTON}             xpath=//span[contains(text(),'Nouveau projet')]
${TITLE_FIELD}                           xpath=//input[@cy-data="title_field"]    
${PROJECT_TYPE_FIELD}                    xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${REGIT_OPTION}                          xpath=//div[contains(text(),'Régie')]
${CHARGE_FIELD}                          xpath=//input[@cy-data="charge_field"] 
${CHARGE_TYPE_SELECT}                    xpath=//input[@cy-data="chargeType_select"]
${DAILY_HOUR_OPTION}                     xpath=//div[contains(text(),'Jour/Homme')]
${CODE_FIELD}                            xpath=//input[@cy-data="code_field"]
${SELECTE_CLIENT_AUTOCOMPLETE}           xpath=//input[@cy-data="client_autocomplete"]
${START_DATE_PICKER}                     xpath=//label[text()='Date début']/following-sibling::input
${START_DATE_DAY}                        xpath=//tbody/tr[2]/td[3]/button[1]/div[1]
${END_DATE_PICKER}                       xpath=//label[text()='Date fin']/following-sibling::input
${END_DATE_DAY}                          xpath=(//tbody[1]/tr[5]/td[7]/button[1]/div[1])[2]
${ADD_PROJECT_BUTTON}                    xpath=//button//span[contains(text(), 'Ajouter')]
${SUCCESS_NOTIF_PROJECT}                 le projet a bien été enregistré
${PROJECT_SEARCH_BAR}                    xpath=//input[@placeholder="Titre du projet/Client"]
${PROJECT_NAME_TO_CHECK}                 xpath=//span[contains(@class, 'project-title text-center text-ellipsis')]
${EXPECTED_TITLE}                        Project_Auto_DEMO
${Filtred_project_title}                 xpath=//span[contains(text(), 'Project_Auto_TEN')]
${POPUP}                                 css:div."v-dialog v-dialog--active v-dialog--persistent v-dialog--scrollable"
# ------------------------------------------Contracts-------------------------------------------------
${START_DATE_PICKER}                     xpath=//label[text()='Date de début']/following-sibling::input
${END_DATE_PICKER}                       xpath=//label[text()='Date de fin']/following-sibling::input
${Start_date_contract}                   xpath=//tbody/tr[2]/td[2]/button[1]/div[1]
${Information_tarifaire}                 xpath=//input[@cy-data="applicant-0"]
${APLICANT_TJM_FIELD}                    xpath=//label[text() = 'TJM']/following-sibling::input
${APLICANT_CHARGE_FIELD}                 xpath=//label[text() = 'Charge']/following-sibling::input
${SELECTED_ARTICLE_1}                    xpath=//div[contains(text(),"Article 1 : Description de l'emploi")]
${SELECTED_ARTICLE_2}                    xpath=//div[contains(text(),"Article 2 : Durée de l'emploi")]
${SELECTED_ARTICLE_3}                    xpath=//div[contains(text(),"Article 3 :Rémunération")]
${SELECTED_ARTICLE_4}                    xpath=//div[contains(text(),"Article 4 : Confidentialité")]
@{CONTRACT_ARTICLES_XPATHS}              ${SELECTED_ARTICLE_1}      ${SELECTED_ARTICLE_2}    ${SELECTED_ARTICLE_3}     ${SELECTED_ARTICLE_4}
${SELECTED_TEMPLATE}                     xpath=//div[@cy-data="template_card"]
${CONTRACT_CREATE_BTN}                   xpath=//span[contains(text(),"créer")]
${SNACKBAR_SUCCESS}                      xpath=//div[contains(@class, "v-snack__wrapper")]
${CONTRACT_SUCESS_NOTIFICATION}          Le contrat a été créé avec succès.

# --------------------------------OFFER VARIABLES-----------------------------------------

${OFFER_SIDEBAR_ITEM}                     xpath=//div[contains(text(),'Offres')]
${NEW_OFFER_BTN}                          xpath=//button/span/span[contains(text(), 'Nouvelle Offre')]
${OFFER_ADD_MODAL_TITLE}                  xpath=//div/span[contains(text(), 'Créer une offre')]
# ${OFFER_TITLE_FIELD}                      xpath=//Input[@cy-data="title_field"]
${OFFER_TITLE_FIELD}                      xpath=//label[contains(text(), 'Titre')]/following-sibling::INPUT
${OFFER_NAME}                             TEST_AUTO_OFFRE
${OFFER_COUNTRY_FIELD}                    xpath=//Input[@cy-data="country_field"]
${OFFRE_COUNTRY}                          France
${OFFER_CITY_FIELD}                       xpath=//Input[@cy-data="city_field"]
${OFFRE_CITY}                             PARIS
${MANAGER_SELECT_FIELD}                   xpath=//Input[@cy-data="manager_select"]
${MANAGER_SELECTED_OPTION}                xpath=//div[contains(text(),'Veronica Dixon')]
${OFFER_START_DATE}                       xpath=//label[contains(text(),"Date début")]/following-sibling::Input
${OFFER_START_DATE_DAY}                   xpath=//tbody/tr[2]/td[2]/button[1]/div[1]
${OFFER_END_DATE}                         xpath=//label[text()='Date fin']/following-sibling::input
${OFFER_END_DATE_DAY}                     xpath=(//tbody/tr[5]/td[4]/button[1]/div[1])[2]
${OFFER_DURATION_FIELD}                   xpath=//Input[@cy-data="duration_field"]
${OFFER_DURATION_UNIT}                    xpath=//Input[@cy-data="durationUnit_select"]
${OFFER_TJM_FIELD}                        xpath=//Input[@cy-data="salary_field"]
${OFFRE_TJM}                              400
${OFFER_CURRENCY_SELECT}                  xpath=//Input[@cy-data="currency_select"]
${OFFER_LEVEL_EXP_FIELD}                  xpath=//Input[@cy-data="level_field"]
${OFFER_RECRUITE_PROCESS}                 xpath=//Input[@cy-data="process_select"]
${OFFER_SELECTED_PROCESS}                 xpath=//div[contains(text(),'Process_cadre')]
${OFFER_CURRENCY_REQUIREMENT}             xpath=//Input[@cy-data="requiredQuote_select"]
${OFFER_FREQUENCE_DAYS}                   xpath=//Input[@cy-data="frequence_select"]
${OFFER_FREQUENCE_DAYS_CHOICE}            xpath=//div[contains(text(),'Deux')]
${OFFER_PUBLIC_EMAIL_FIELD}               xpath=//Input[@cy-data="publicEmail_field"]
${OFFER_PUBLIC_EMAIL}                     company@yopmail.com
${OFFER_REFERENCE_FIELD}                  xpath=//Input[@cy-data="reference_field"]
${OFFER_REFRENCE}                         Reference_auto_0001
${OFFER_URL_FIELD}                        xpath=//Input[@cy-data="url_field"]
${OFFER_URL}                              https://staging.lean
${OFFER_COMPANY_TEXT_AREA}                xpath=(//div[@data-placeholder="Insérer du texte ici"])[1]
${OFFER_COMPANY_TEXT}                     This company is created to try out an automated script made qith robot framework
${OFFER_DESCRIPTION_TEXT_AREA}            xpath=(//div[@data-placeholder="Insérer du texte ici"])[2]
${OFFER_DESCRIPTION}                      This Job post is created to test the offers section in the plateform and check out if the offers are created as expected
${OFFER_SEARCH_BAR}                       xpath=//input[@placeholder = "Rechercher..."]
# ${OFFER_CARD_TITLE}                       xpath=//span[contains(text(),${CREATED_OFFER_NAME})]
${OFFER_SUCESS_NOTIFICATION}              Offre créée avec succès
${OFFER_CREATE_BTN}                       xpath=//Button[@cy-data="createOffer_btn"]
${GLOBAL_OFFER_NAME}  NONE
            #    ------------------Filters-------------------
${OFFER_MIN_TJM_FILTER}                   xpath=//label[text()= 'Min TJM']/following-sibling::input
${OFFER_MAX_TJM_FILTER}                   xpath=//label[text()= 'Max TJM']/following-sibling::input
${OFFER_MIN_MONTH_FILTER}                 xpath=//label[text()= 'Min Mois']/following-sibling::input
${OFFER_MAX_MONTH_FILTER}                 xpath=//label[text()= 'Max Mois']/following-sibling::input
${OFFER_COUNTRY_FILTER}                   xpath=//input[@placeholder="Pays"]
${OFFER_CITY_FILTER}                      xpath=//input[@placeholder="Ville"]
${OFFER_STATUS_FILTER}                    xpath=//input[@placeholder="Statut"]
${SELECTED_STATUS}                        xpath=//div/div[contains(text(),"Brouillon")]
${ARROW_BACK_OFFER}                       xpath=//main[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/header[1]/div[1]/button[1]/span[1]/i[1]
${MIN-TJM-ID}                             min_tjm
${Max-TJM-ID}                             max_tjm
${MIN-MONTH-ID}                           min_month
${MAX-MONTH-ID}                           max_month
${MIN_MONTHS}                             0
${MAX_MONTHS}                             33
${MAX_TJM}                                900
${OFFER_CARD_TITLE_LOCATOR}               xpath=//main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/a[1]/div[1]/div[1]/div[1]/span[1]

# --------------------------------Drag & Drop Applications------------------------------------

# ${OFFER_APPLICANT_CANDIDATURE}             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${OFFER_APPLICANT_CANDIDATURE}             xpath=//span[contains(text(),'omar talibi (CSFI)')]
${APPLICATION_ACCEPTED_SECTION}            xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]
${APPLICATION_REJECTED_SECTION}            xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]
${CANDIDATURE_BUTTON}                      xpath=//header/div[1]/div[3]/div[1]/button[2]/span[1]
${APPLICATION_PRE_ACCEPTANCE}              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]
${ATTEMPTS}           5
${LARGER_TIMEOUT}     6s
${CONFIRMATION_BOX_TITLE}                  xpath=//span[contains(text(),"Confirmation")]
${CONFIRME_APPLICATION_BUTTON}             xpath=(//div[3]/button[1])[3]

# ----------------------------------tIMESHEETS rEPORT ----------------------------------------------
${LOGIN_EMAIL}                               salim.jaabiri@yopmail.com  
${Password}                                  secret2023
${CRA_SIDEBAR_ITEM}                        xpath=//div[contains(text(),'CRA et Frais')]
${TIMESHEET_SIDEBAR_ITEM}                  xpath=//div[contains(text(),'Mes temps')]
${NEW_TIMESHEET_BTN}                       xpath=//button/span/span[contains(text(), 'nouvelle feuille de temps')]
${TIMESHEET_MONTH_FILTER}                  xpath=//input[contains(@placeholder,"Filtre par mois")]
${CURRENT_MONTH}                           xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[5]
${EXPECTED_MONTH}                          watch_later\nMai 2024
${ADD_TIMESHEET_LINE_BTN}                  xpath=//span[contains(text(), " Ajouter une ligne ")]
${TIMESHEET_PAGE_TITLE}                    Fiche de temps
${SELECT_CATEGORY_FIELD}                   xpath=//tbody/tr[1]/td[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]
${TYPE_SELECTION_FIELD}                    xpath=//tbody/tr[1]/td[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]
${CHECKBOX_CASE}                           xpath=//tbody/tr[1]/td[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${timesheet_day_2}                         xpath=//tbody/tr[1]/td[3]/div[1]
${timesheet_day_3}                         xpath=//tbody/tr[1]/td[4]/div[1]
${timesheet_day_9}                         xpath=//tbody/tr[1]/td[10]/div[1]
${timesheet_day_14}                        xpath=//tbody/tr[1]/td[15e]/div[1]

# --------------------------------------Resource Import/collab--------------------------------------
${RESOURCE_IMPORT_ITEM}                    xpath=//body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]/div[1]/a[2]/div[2]
${UPLOAD_FILE_FIELD}                       xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${RESOURCE_TYPE_FIELD}                     xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${API_URL}                                 https://staging-api.leanwe.com/login  # Replace with your actual API endpoint
${IMPORT_BUTTON}                           xpath=//button[@cy-data="nextStep_btn"]
${EMAIL-token}                             redouane@yopmail.com  
${PASSWORD-token}                          secret2023       

# ${PATH_TO_COLLABORATORS_FILE}              ${CURDIR}/employees-auto.csv          #${CURDIR}/ressources//employees-auto.csv 
# ${NAME_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${NAME_VALUE}                              Nom
# ${PRENOM_FIELD}                            xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${PRENOM_VALUE}                            Prenom
# ${POST_TITLE_FIELD}                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${POST_TITLE_VALUE}                        Post
# ${TYPE_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${TYPE_VALUE}                              Type
# ${EMAIL_FIELD}                             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${EMAIL_VALUE}                             Email
# ${TJM}                                     xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${TJM_VALUE}                               tarif journalier moyen
# ${PHONE_FIELD}                             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${PHONE_VALUE}                             phone
# ${CJM_FIELD}                               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]
# ${RTT_FIELD}                               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${CP_FIELD}                                xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${ADRESSE_FIELD}                           xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[13]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${ADRESSE_VALUE}                           adresse
# ${COUNTRY_FIELD}                           xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[14]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${COUNTRY_VALUE}                           Pays
# ${CITY_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[15]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${CITY_VALUE}                              Ville
# ${REFERENCE_FIELD}                         xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[19]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
# ${REFERENCE_VALUE}                         Reference
# ${IMPORT_BUTTON}                           xpath=//button[@cy-data="nextStep_btn"]
# ${IMPORT_SUCESS_NOTIFICATION}              Importation terminée.
# ${BASE_URL}                                https://staging-api.leanwe.com/api/v1/esns/d11d8e1d-5874-4eda-9f6e-05eefddd09b7
# ${AUTH_TOKEN}                              your-auth-token  # Replace with the actual token if needed
# ${UNIQUE_DOMAIN}                           guerrillamail.com  # unique domain
# ${UNIQUE_Prefix}                           Importeed
# ${AUTH_ENDPOINT}                           /login                  # Replace with your authentication endpoint

# --------------------------------------------------Resource Import/subcontractors--------------------------

${SUBCONTRACTORS_TYPE}                    xpath=//div[contains(text(), "Sous-traitants")]
${RESOURCE_NAME_FIELD}                    xpath=//input[@placeholder="Nom de resource"]
${PATH_TO_SUBCONTRACTORS_FILE}            C:/Users/SanaaBOULLOUZ/Documents/subcontractors.CSV
${SIREN_FIELD}                            xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SIREN_VALUE}                            siren
${COMPANY_NAME_FIELD}                     xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${COMPANY_NAME_VALUE}                     raison
${LEGAL_FORM_FIELD}                       xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${LEGAL_FORM_VALUE}                       legal_form
${ADDRESS_FIELD}                          xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ADDRESS_VALUE}                          address
${ZIP_CODE_FIELD}                         xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ZIP_CODE_VALUE}                         zip_code
${CITY_NAME_FIELD}                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CITY_NAME_VALUE}                        ville
${RCS_PLACE_FIELD}                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${RCS_PLACE_VALUE}                        rcs
${RCS_NUMBER_FIELD}                       xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${RCS_NUMBER_VALUE}                       rcs_number
${REPRESENTATIVE_FIELD}                   xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${REPRESENTATIVE_VALUE}                   representative
${FONCTION_FIELD}                         xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${FONCTION_VALUE}                         fonction
${CAPITAL_FIELD}                          xpath=//div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[11]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CAPITAL_VALUE}                          capital
${BANK_ACCOUNT_FIELD}                     xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[12]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${BANK_ACCOUNT_VALUE}                     bank
${BIC_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[13]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${BIC_VALUE}                              bic
${IBAN_FIELD}                             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[14]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${IBAN_VALUE}                             iban
${CONTACT_FIELD}                          xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[15]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CONTACT_VALUE}                          contacts

# ------------------------------------------------ClientsImport---------------------------------------------------------------------
${CLIENT_TYPE}                            xpath=//div/div/div[contains(text(), "Clients")]
${PATH_TO_CLIENTS_CSV_FILE}               C:/Users/SanaaBOULLOUZ/Documents/Clients(1).csv
${CLIENT_REFERENCE_FIELD}                 xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_REFERENCE_VALUE}                 reference
${CLIENT_COMPANY_NAME}                    xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_COMPANY_NAME_VALUE}              company_name
${CLIENT_CODE_FIELD}                      xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_CODE_VALUE}                      code
${ACTIVITY_FIELD}                         xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ACTIVITY_VALUE}                         activity_area
${LEGAL_STATUS_FIELD}                     xpath=//form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${LEGAL_STATUS_VALUE}                     legal_status
${TVA_TAX_FIELD}                          xpath=//form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${TVA_TAX_VALUE}                          tva_ic
${SIRET_FIELD}                            xpath=//form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SIRET_VALUE}                            siret
${CLIENT_RCS_FIELD}                       xpath=//form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_RCS_VALUE}                       rcs
${CLIENT_NAME}                            xpath=//form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_NAME_VALUE}                      first_name
${CLIENT_LASTNAME}                        xpath=//form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_LASTNAME_VALUE}                  last_name
${CLIENT_EMAIL}                           xpath=//form[1]/div[11]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_EMAIL_VALUE}                     email
${CLIENT_PHONE}                           xpath=//form[1]/div[12]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_PHONE_VALUE}                     phone
${CLIENT_FAX}                             xpath=//form[1]/div[13]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_FAX_VALUE}                       fax
${CLIENT_ADDRESS}                         xpath=//form[1]/div[14]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_ADDRESS_VALUE}                   address
${CLIENT_ZIP_CODE}                        xpath=//form[1]/div[15]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_ZIP_CODE_VALUE}                  zip_code                        
${CLIENT_CITY}                            xpath=//form[1]/div[16]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_CITY_VALUE}                      city
${CLIENT_PAYS}                            xpath=//form[1]/div[17]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_PAYS_VALUE}                      country
${CLIENT_PAYMENT_METHODE}                 xpath=//form[1]/div[18]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_PAYMENT_METHODE_VAL}             payment_method
${CLIENT_PAYMENT_MODE}                    xpath=//form[1]/div[19]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_PAYMENT_MODE_VAL}                payment_terms
${CLIENT_ADDRESS_FACTURATION}             xpath=//form[1]/div[20]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_ADDRESS_FACTURATION_VAL}         billing_address1
${CLIENT_ADDRESS_FACTURATION2}            xpath=//form[1]/div[21]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_ADDRESS_FACTURATION2_VAL}        billing_address2
${CLIENT_ZIP_CODE_FCT}                    xpath=//form[1]/div[22]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_ZIP_CODE_FCT_VAL}                billing_zip_code
${CLIENT_CITY_FCT}                        xpath=//form[1]/div[23]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_CITY_FCT_VAL}                    billing_city
${CLIENT_COUNTRY_FCT}                     xpath=//form[1]/div[24]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_COUNTRY_FCT_VAL}                 billing_country
${CLIENT_CONTACT}                         xpath=//form[1]/div[25]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_CONTACT_VALUE}                   billing_contact
${CLIENT_COMMENT}                         xpath=//form[1]/div[26]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_COMMENT_VALUE}                   comments

# -----------------------------------------------------------PROJECTS IMPORT--------------------------------------------
${PROJECT_TYPE}                           xpath=//div/div/div[contains(text(), "Projets")]
${PATH_TO_PROJECT_CSV_FILE}               C:/Users/SanaaBOULLOUZ/Documents/projects-leanwe.csv
${PROJECT_TITLE_FIELD}                    xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJECT_TITLE_VALUE}                    title
${CHARGE_TYPE_FIELD}                      xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CHARGE_TYPE_VALUE}                      charge_type
${PROJ_IMPORT_CHARGE_FIELD}               xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJ_IMPORT_CHARGE_VALUE}               charge_value
${PROJ_START_DATE_FIELD}                  xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJ_START_DATE_VALUE}                  start_date
${PROJ_END_DATE_FIELD}                    xpath=//form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJ_END_DATE_VALUE}                    end_date
${PROJECT_REFERENCE_FIELD}                xpath=//form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJECT_REFERENCE_VALUE}                reference_project
${PROJ_CLIENT_REFERENCE_FIELD}            xpath=//form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PROJ_CLIENT_REFERENCE_VALUE}            reference_id

# ------------------------------------------PRODUCTS IMPORT---------------------------------------------------------------------

${PRODUCT_TYPE}                           xpath=//div/div/div[contains(text(), "Produits")]
${PRODUCT_RESOURCE_NAME_FIELD}            xpath=//input[@placeholder="Nom de resource"]
${PATH_TO_PRODUCTS_CSV_FILE}              C:/Users/SanaaBOULLOUZ/Documents/Products_auto.csv
${PRODUCT_TITLE_FIELD}                    xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_TITLE_VALUE}                    Title
${PRODUCT_REFERENCE_FIELD}                xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_REFERENCE_VALUE}                reference
${PRODUCT_DESCRIPTION_FIELD}              xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_DESCRIPTION_VALUE}              description
${PRODUCT_AMOUNT_FIELD}                   xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_AMOUNT_VALUE}                   amount

# -------------------------------------PRESTATIONS IMPORT-----------------------------------------------------------------------
${PRESTATION_TYPE}                        xpath=//div/div/div[contains(text(), "Préstations")]
${PATH_TO_PRESTATIONS_CSV_FILE}           C:/Users/SanaaBOULLOUZ/Documents/Prestation_auto.csv
${PRESTATION_TITLE}                       xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_TITLE_VALUE}                 title    
${PRESTATION_TYPE_FIELD}                  xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_TYPE_VALUE}                  type     
${PRESTATION_SALE_REFERENCE}              xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_SALE_REFERENCE_VAL}          sale_order_reference
${PRESTATION_AMOUNT}                      xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_AMOUNT_VALUE}                amount      
${PRESTATION_COLLABORATOR}                xpath=//form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_COLLABORATOR_VALUE}          collaborator     
${PRESTATION_PRODUCT_REF}                 xpath=//form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_PRODUCT_REF_VALUE}           product_reference      
${PRESTATION_TJM}                         xpath=//form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_TJM_VALUE}                   tjm     
${PRESTATION_REFERENCE}                   xpath=//form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRESTATION_REFERENCE_VALUE}             reference       

# ---------------------------------Commandes---------------------------------------------------------------------------------
${SALES_TYPE}                            xpath=//div/div/div[contains(text(), "Commandes")]
${PATH_TO_SALES_CSV_FILE}                C:/Users/SanaaBOULLOUZ/Documents/sales_auto.csv
${SALE_REFERENCE}                        xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_REFERENCE_VALUE}                  reference  
${SALE_REFERENCE_CLIENT}                 xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_REFERENCE_CLIENT_VAL}             client_reference    
${SALE_REFERENCE_PROJET}                 xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_REFERENCE_PROJET_VAL}             project_reference   
${SALE_TITLE}                            xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_TITLE_VALUE}                      title      
${SALE_STATUS}                           xpath=//form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_STATUS_VALUE}                     statut      
${SALE_TYPE}                             xpath=//form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_TYPE_VALUE}                       type    
${SALE_NUMBER}                           xpath=//form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_NUMBER_VALUE}                     order_number     
${SALE_AMOUNT}                           xpath=//form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_AMOUNT_VALUE}                     pretax_amount      
${SALE_TVA}                              xpath=//form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_TVA_VALUE}                        tax_amount
${SALE_TTC}                              xpath=//form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_TTC_VALUE}                        gross_amount    
${SALE_START_DATE}                       xpath=//form[1]/div[11]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_START_DATE_VALUE}                 start_date    
${SALE_END_DATE}                         xpath=//form[1]/div[12]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${SALE_END_DATE_VALUE}                   end_date

# ---------------------------------------------------Purchase--------------------------------------------------------
${GLOBAL_PURCHASE_ITEM}                   xpath=(//div[contains(text(),"Achats")])[1]
${PURCHASE_SIDEBAR_ITEM}                  xpath=(//div[contains(text(),"Mes Achats")])[1]
${PURCHASE_NEW_BUTTON}                    xpath=//button[@cy-data="createNew_btn"]
${PURCHASE_TITLE_FIELD}                   xpath=//input[@cy-data="purchase_invoice_title_field"]
${PURCHASE_PAYMENT_MODE}                  xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CHECQUE_PAYMENT_MODE}                   xpath=//div/div[contains(text(),"Chèque")]
${ESPECE_PAYMENT_MODE}                    xpath=//div/div[contains(text(),"Espèces")]
${PURCHASE_PAYMENT_TYPE}                  xpath=//form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_SEMESTER_TYPE}                 xpath=//div/div[contains(text(),"Semestriel")]
${PURCHASE_CLIENT_COMPANY}                xpath=//Input[@cy-data="client_autocomplete"]
${SELECTED_CLIENT_COMPANY}                 CSF
${PURCHASE_BUSINESS_UNIT}                 xpath=//Input[@cy-data="businessUnit_autocomplete"]
${SELECTED_BU}                            digitale
${PURCHASE_CATEGORY_FIELD}                xpath=//form[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/input[1]
${SELECTED_CATEGORY}                      Exemple
${PURCHASE_START_DATE}                    xpath=//form[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CHOSEN_START_DATE}                      xpath=(//table[1]/tbody[1]/tr[1]/td[2]/button[1])[1]
${PURCHASE_END_DATE}                      xpath=//form[1]/div[1]/div[8]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CHOSEN_END_DATE}                        xpath=(//table[1]/tbody[1]/tr[5]/td[4]/button[1])[2]
${PURCHASE_PRETAX_AMOUNT}                 xpath=//form[1]/div[1]/div[9]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_TARIF}                         700
${PURCHASE_TAX_AMOUNT}                    xpath=//form[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_TVA}                           20
${PURCHASE_ADD_BUTTON}                    xpath=//Button[@cy-data="submitSale_btn"]
${PURCHASE_SEARCH_BAR}                    xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_START_DATE_FILTER}             xpath=//input[@placeholder="Date début"]
${PURCHASE_END_DATE_FILTER}               xpath=//input[@placeholder="Date fin"]
${PURCHASE_STATUS_FILTER}                 xpath=//input[@placeholder="Statut"]
${PURCHASE_FNP_STATUS}                    xpath=//body[1]/div[1]/div[2]/div[5]/div[1]/div[1]/div[1]
${PURCHASE_TYPE_FILTER}                   xpath=//input[@placeholder="Type"]
${PURCHASE_CHOSEN_TYPE_FILTER}            xpath=//body[1]/div[1]/div[2]/div[6]/div[1]/div[3]/div[1]/div[1]
${PURCHASE_CATEGORY_FILTER}               xpath=//input[@placeholder="Catégorie"]
${PURCHASE_CATEGORY_CHOSEN_FILTER}        xpath=//div[contains(text(),"Exemple")]
${PURCHASE_TITLE}                         PURCHASE_AUTO
${PURCHASE_CARD_TITLE_LOCATOR}            xpath=//main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/a[1]/div[1]/div[1]/div[1]/span[1]


