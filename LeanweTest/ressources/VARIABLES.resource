*** Variables ***
${Leanwe_URL}       https://staging.leanwe.com
${BROWSER}          chrome
${LOGIN_PAGE_FORM_USERNAME_INPUT}        xpath=//input[@name="email"]
${LOGIN_PAGE_FORM_PASSWORD_INPUT}        xpath=//input[@name="password"]
${sidebar_Xpath}                         xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]
${CONTRACT_ITEM}                         xpath://div[contains(text(),'Contrats')]
${LOGIN_BUTTON}                          xpath://span[contains(text(),'Se connecter')] 
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
${START_DATE_PICKER}                     xpath=//div[@cy-data="startDate_date"]//input
${START_DATE_DAY}                        xpath=//tbody/tr[2]/td[3]/button[1]/div[1]
${END_DATE_PICKER}                       xpath=//div[@cy-data="endDate_date"]//input
${END_DATE_DAY}                          xpath=//tbody/tr[2]/td[3]/button[1]/div[1]
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
${ACESS_CONTRACTS_Model_PAGE}            xpath=//div[contains(text(),'Gestion des Modèles')]
${New_Contract_Model_Button}             xpath=//span[contains(text(),'Nouveau Modèle')]
${ACESS_SUBCONTRACTOR_PAGE}            xpath=//div[contains(text(),'Les sous-traitants')]
${New_SUBCONTRACTOR_Button}             xpath=//Button[@cy-data="createNew_btn"] 
${SUBCONTRACTOR_SIREN}    xpath=//input[@cy-data="siren_field"]
${SUBCONTRACTOR_Raison_Social}    xpath=//input[@cy-data="socialReason_field"]
${SUBCONTRACTOR_Forme_juridique}    xpath=//input[@cy-data='legalForm_field']
${SUBCONTRACTOR_Adresse_siége_social}    xpath=//input[@cy-data="address_field"]
${SUBCONTRACTOR_Code_Postal}    xpath=//input[@cy-data="zipCode_field"]
${SUBCONTRACTOR_Ville}    xpath=//input[@cy-data="city_field"]
${SUBCONTRACTOR_Lieu_RCS}    xpath=//input[@cy-data="rcs_field"]
${SUBCONTRACTOR_Numero_RCS}    xpath=//input[@cy-data="rcsNumber_field"]
${SUBCONTRACTOR_Representant}    xpath=//input[@cy-data="representative_field"]
${SUBCONTRACTOR_Fonction}    xpath=//input[@cy-data="functionality_field"]
${SUBCONTRACTOR_Capital}    xpath=//input[@cy-data="capital_field"]
${SUBCONTRACTOR_Nom_Compte_Bancaire}    xpath=//input[@name="bank_account_name"]
${SUBCONTRACTOR_BIC}    xpath=//input[@name="bic"]
${SUBCONTRACTOR_IBAN}    xpath=//input[@name="iban"]
${SUBCONTRACTOR_Contact_Email}    xpath=//input[@name="reference"]
${SUBCONTRACTOR_Sauvgarde_Button}    xpath=//button[@cy-data="saveContractor_btn"]
${SUBCONTRACTOR_Type}    xpath=//body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]//span



# --------------------------------OFFER VARIABLES-----------------------------------------

${OFFER_SIDEBAR_ITEM}                     xpath=//div[contains(text(),'Offres')]
${NEW_OFFER_BTN}                          xpath=//button/span/span[contains(text(), 'Nouvelle Offre')]
${OFFER_ADD_MODAL_TITLE}                  xpath=//div/span[contains(text(), 'Créer une offre')]
# ${OFFER_TITLE_FIELD}                      xpath=//Input[@cy-data="title_field"]
${OFFER_TITLE_FIELD}                      xpath=//label[contains(text(), 'Titre')]/following-sibling::INPUT
${OFFER_COUNTRY_FIELD}                    xpath=//Input[@cy-data="country_field"]
${OFFER_CITY_FIELD}                       xpath=//Input[@cy-data="city_field"]
${MANAGER_SELECT_FIELD}                   xpath=//Input[@cy-data="manager_select"]
${MANAGER_SELECTED_OPTION}                xpath=//div[contains(text(),'John Doe')]
${OFFER_START_DATE}                       xpath=//label[contains(text(),"Date début")]/following-sibling::Input
${OFFER_START_DATE_DAY}                   xpath=//tbody/tr[2]/td[2]/button[1]/div[1]
${OFFER_END_DATE}                         xpath=//label[text()='Date fin']/following-sibling::input
${OFFER_END_DATE_DAY}                     xpath=(//tbody/tr[5]/td[4]/button[1]/div[1])[2]
${OFFER_DURATION_FIELD}                   xpath=//Input[@cy-data="duration_field"]
${OFFER_DURATION_UNIT}                    xpath=//Input[@cy-data="durationUnit_select"]
${OFFER_TJM_FIELD}                        xpath=//Input[@cy-data="salary_field"]
${OFFER_CURRENCY_SELECT}                  xpath=//Input[@cy-data="currency_select"]
${OFFER_LEVEL_EXP_FIELD}                  xpath=//Input[@cy-data="level_field"]
${OFFER_RECRUITE_PROCESS}                 xpath=//Input[@cy-data="process_select"]
${OFFER_SELECTED_PROCESS}                 xpath=//div[contains(text(),'Process_cadre')]
${OFFER_CURRENCY_REQUIREMENT}             xpath=//Input[@cy-data="requiredQuote_select"]
${OFFER_FREQUENCE_DAYS}                   xpath=//Input[@cy-data="frequence_select"]
${OFFER_FREQUENCE_DAYS_CHOICE}            xpath=//div[contains(text(),'Deux')]
${OFFER_PUBLIC_EMAIL_FIELD}               xpath=//Input[@cy-data="publicEmail_field"]
${OFFER_REFERENCE_FIELD}                  xpath=//Input[@cy-data="reference_field"]
${OFFER_URL_FIELD}                        xpath=//Input[@cy-data="url_field"]
${OFFER_COMPANY_TEXT_AREA}                xpath=(//div[@data-placeholder="Insérer du texte ici"])[1]
${OFFER_DESCRIPTION_TEXT_AREA}            xpath=(//div[@data-placeholder="Insérer du texte ici"])[2]
${OFFER_SEARCH_BAR}                       xpath=//input[@placeholder = "Rechercher..."]
${OFFER_CARD_TITLE}                       xpath=//span[contains(text(),'Offer_test_auto')]
${OFFER_SUCESS_NOTIFICATION}              Offre créée avec succès
${OFFER_CREATE_BTN}                       xpath=//Button[@cy-data="createOffer_btn"]

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

# --------------------------------------Resource Import--------------------------------------
${RESOURCE_IMPORT_ITEM}                    xpath=//body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]/div[1]/a[2]/div[2]
${UPLOAD_FILE_FIELD}                       xpath://body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${COLLABORATORS_TYPE}                      xpath=//body/div[@id='spark-app']/div[@id='app']/div[2]/div[1]/div[1]/div[1]
${Feuilledetemps_TYPE}                     xpath=//div[contains(text(),'Feuilles de temps')]
${RESOURCE_TYPE_FIELD}                     xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[3]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PATH_TO_COLLABORATORS_FILE}              C:/Users/SanaaBOULLOUZ/Downloads/employees (5).csv 
${NAME_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${NAME_VALUE}                              Nom
${PRENOM_FIELD}                            xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRENOM_VALUE}                            Prenom
${POST_TITLE_FIELD}                        xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${POST_TITLE_VALUE}                        Post
${TYPE_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${TYPE_VALUE}                              Type
${EMAIL_FIELD}                             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${EMAIL_VALUE}                             Email
${TJM}                                     xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[6]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${TJM_VALUE}                               tarif journalier moyen
${PHONE_FIELD}                             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[7]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PHONE_VALUE}                             phone
${CJM_FIELD}                               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[8]/div[2]/div[1]/div[1]/div[1]/div[1]
${RTT_FIELD}                               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CP_FIELD}                                xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ADRESSE_FIELD}                           xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[13]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ADRESSE_VALUE}                           adresse
${COUNTRY_FIELD}                           xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[14]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${COUNTRY_VALUE}                           Pays
${CITY_FIELD}                              xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[15]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CITY_VALUE}                              Ville
${REFERENCE_FIELD}                         xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[19]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${REFERENCE_VALUE}                         Reference
${IMPORT_BUTTON}                           xpath=//button[@cy-data="nextStep_btn"]
${IMPORT_SUCESS_NOTIFICATION}              Importation terminée.

# --------------------------------Internal Commands Variables---------------------------------
${ACESS_COMMANDS}            xpath=//div[contains(text(),'Commandes')]
${ACESS_INTERNAL-COMMANDS}            xpath=//div[contains(text(),'Commandes internes')]
${NEW_INTERNAL-COMMANDS}    xpath=//span[contains(text(),'Nouvelle commande')]
${COMMANDE_NUMBER}    xpath=//input[@cy-data="title_field"]
${COMMANDE_TYPE}    xpath=//Input[@cy-data="type_select"]
${COMMANDE_STARTDATE}    xpath=//div[@cy-data="startDate_date"]
${COMMANDE_ENDDATE}    xpath=//div[@cy-data="endDate_date"]
${COMMANDE_CLIENT1}    xpath=//input[@cy-data="client_autocomplete"]
${COMMANDE_CLIENT2}    xpath=//input[@cy-data="type_select"]
${COMMANDE_TITLE}    xpath=//label[contains(text(),'Titre')]/input[@cy-data="title_field"] 
${COMMANDE_HT}    xpath=//label[contains(text(),'HT')]/input[@cy-data="title_field"]
${COMMANDE_TVA}    xpath=//input[@cy-data="tva-select"]
${COMMANDE_TTC}    xpath=//label[contains(text(),'TTC')]/input[@cy-data="title_field"] 
${COMMANDE_ADDBUTTON}    xpath=//button[@cy-data="submitSale_btn"]

# --------------------------------Client Commands Variables---------------------------------
${ACESS_COMMANDS}            xpath=//div[contains(text(),'Commandes')]
${ACESS_CLIENT-COMMANDS}            xpath=//div[contains(text(),'Commandes Client')]
${NEW_CLIENT-COMMANDS}    xpath=//span[contains(text(),'Nouvelle commande')]
${COMMANDE_NUMBERC}    xpath=//input[@cy-data="order-number-field"]
${COMMANDE_TYPEC}    xpath=//Input[@cy-data="sale-type-select"]
${COMMANDE_STARTDATEC}    xpath=//div[@cy-data="sale-start-date"]
${COMMANDE_ENDDATEC}    xpath=//div[@cy-data="sale-end-date"]//input
${COMMANDE_CLIENT1C}    xpath=//input[@cy-data="client_autocomplete"]
${COMMANDE_CLIENT2C}    xpath=//input[@cy-data="type_select"]
${COMMANDE_TITLE1C}    xpath=//label[contains(text(),'Titre')]/input
${COMMANDE_HT1C}    xpath=//label[contains(text(),'HT')]/input
${COMMANDE_TVA1C}    xpath=//input[@cy-data="item-tax-amount-field"]
${COMMANDE_TTCC}    xpath=//label[contains(text(),'TTC')]/input 
${COMMANDE_ADDBUTTONC}    xpath=//button[@cy-data="save-client-sale-btn"]






# --------------------------------------Client Variables--------------------------------------
${ACESS_CLIENT_PAGE}            xpath=//div[contains(text(),'Clients')]
${CLIENT_NAME}    xpath=//Input[@cy-data="lastName_field"]
${CLIENT_FIRSTNAME}    xpath=//Input[@cy-data="firstName_field"]
${CLIENT_RAISON_SOCIALE}    xpath=//Input[@cy-data="companyName_field"]
${CLIENT_SECTEUR}    xpath=//Input[@cy-data="activityArea_field"]
${CLIENT_STATUSJ}    xpath=//Input[@cy-data="legalStatus_field"]
${CLIENT_TVA}    xpath=//Input[@cy-data="tva_field"]
${CLIENT_SIRET}    xpath=//Input[@cy-data="siret_field"]
${CLIENT_RCS}    xpath=//Input[@cy-data="rcs_field"]
${CLIENT_CODE}    xpath=//Input[@cy-data="code_field"]
${CLIENT_EMAIL}    xpath=//Input[@cy-data="email_field"]
${CLIENT_TEL}    xpath=//Input[@cy-data="phone_field"]
${CLIENT_FAX}    xpath=//Input[@cy-data="fax_field"]
${CLIENT_ADRESSE}    xpath=//Input[@cy-data="address_field"]
${CLIENT_CP}    xpath=//Input[@cy-data="zipCode_field"]
${CLIENT_VILLE}    xpath=//Input[@cy-data="city_field"]
${CLIENT_PAYS}    xpath=//Input[@cy-data="country_select"]
${CLIENT_COMMENT}    xpath=//textarea[@cy-data="comment_field"]
${CLIENT_FACT_EMAIL}    xpath=//Input[@cy-data="billing_contact_field"]
${CLIENT_MODE_REG}    xpath=//Input[@cy-data="payment_method_select"]
${CLIENT_COND_REG}    xpath=//Input[@cy-data="payment_terms_select"]
${CLIENT_VILLE_REG}    xpath=//Input[@cy-data="billing_city_field"]
${CLIENT_CP_REG}    xpath=//Input[@cy-data="billing_zip_code_field"]
${CLIENT_PAYS_REG}    xpath=//Input[@cy-data="billing_country_select"]
${CLIENT_ADD1_REG}    xpath=//Input[@cy-data="billing_address1_field"]
${CLIENT_ADD2_REG}    xpath=//Input[@cy-data="billing_address2_field"]

#-----------------Bank-transfer-variables------------------------------

${ACESS_Virement-bancaire}    xpath=//div[contains(text(),'Virements bancaires')]
${AddNew_Virement-bancaire}    xpath=//span[contains(text(),'Nouveau virement')]
${Facture_a_regler}    xpath=//i[contains(text(),'arrow_drop_down')]
${Text_Facture_a_regler}    xpath=//input[contains(@placeholder,"Trouver les factures à régler")]
${Validation_facture}    xpath=//body/div[@id='spark-app']/div[@id='app']/div[4]/div[1]/div[1]/div[1]
${Date_facturation}    element = document.querySelector('[cy-data="startDate_date"]').querySelector('input')
${Ajouter-VB}    xpath=//Button[@cy-data="submitSale_btn"]

#------------Factures-Variables-----------------------------------------------
${ACESS_Factures}    xpath=//div[contains(text(),'Factures')]
${AddNew_Factures-Groupe}    xpath=//span[contains(text(),'Regrouper les factures')]
${Facture_CLIENT1}    xpath=//input[@cy-data="client_autocomplete"]
${Facture_CLIENT2}    xpath=//i[contains(text(),'arrow_drop_down')]
${Ajouter-GroupeFacture}    xpath=//Button[@cy-data="submitInvoice_btn"]
${DOWNLOAD_DIR}    C:\Users\Ben Hadj Salah\Desktop\Crown  # Chemin du répertoire de téléchargement
${EXPORT_BUTTON_XPATH}    //button[@cy-data="createNew_btn" and contains(., 'Exporter')]
${EXPECTED_FILE_NAME}    client_invoice.xlsx  # Nom du fichier attendu


#--------------------commande-variables-------------------------------

${ACESS_Commande}    xpath=//div[contains(text(),'Commandes')]
${ACESS_CommandeClient}    xpath=//div[contains(text(),'Commandes Client')]
#${ACESS_CommandeClient}    xpath=//div[contains]




#----------------------Mission-Variables------------------------------------

${ACESS_Collaborateurs}    xpath=//div[contains(text(),'Collaborateurs')]
${ACESS_Missions}    xpath=//div[contains(text(),'Les missions')]
${Ajouter_Mission}    xpath=//Button[@cy-data="createNew_btn"]
${Clients_Mission}    xpath=//input[@placeholder='Sélectionnez un client']
${Projets_Mission}    xpath=//input[@cy-data="project_autocomplete"]
${Commandes_Mission}    xpath=//input[@cy-data="sale_order_autocomplete"]
${Prestations_Mission}    xpath=//input[@cy-data="requirement_autocomplete"]
${Commercial_Mission}    xpath=//input[@cy-data="account_manager_autocomplete"]
${Creer_Mission}    xpath=//Button[@cy-data="submitMission_btn"]
${Mission_START_DATE}    xpath=//label[text()='Date début']/following-sibling::input
${Mission_END_DATE}    xpath=//label[text()='Date de fin']/following-sibling::input
${Mission_TypeF}    xpath=//input[@cy-data="type_filter"]
${Mission_ClientF}    xpath=//input[@cy-data="client_autocomplete"]
${Mission_CommercialF}    xpath=//label[contains(text(),"Commercial")]/following-sibling::Input
${Mission_Statut}    xpath=//input[@cy-data="status_filter"]
${RESULTS_M}    xpath=//input[@cy-data="mission_card"]


#-------------Profile-------------------#
###PROFIL###
${BIRTH_PLACE}       Lyon
${CITY}              Lyon
${ADDRESS}           42 Rue de la République
${NATIONALITY}       Française
${POSTAL_CODE}       69000
${PHONE_NUMBER}    189898989
#-----------Documents-------------------#

${ACESS_Profil}    xpath=//div[contains(text(),'Mon profil')]
${NOM_DOCUMENT}     TEST AUTO DOC
${FICHIER_UPLOAD}   ${CURDIR}/test_pdf.pdf
${TYPE_DOCUMENT}    Passeport
${NOUVEAU_TYPE}    Autre
${NOUVEAU_NOM}     DOCUMENT MODIFIÉ TEST AUTO
${DOCUMENT_A_SUPPRIMER}=    Get Text    xpath=(//div[contains(@class,"document-name")])[1]















