*** Variables ***
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
${OFFER_END_DATE_DAY}                     xpath=(//table[1]/tbody[1]/tr[5]/td[1]/button[1])[2]
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
${OFFER_SEARCH_BAR}                       xpath=//input[@placeholder = "Rechercher"]
# ${OFFER_CARD_TITLE}                       xpath=//span[contains(text(),${CREATED_OFFER_NAME})]
${OFFER_SUCESS_NOTIFICATION}              Offre créée avec succès
${OFFER_CREATE_BTN}                       xpath=//Button[@cy-data="createOffer_btn"]
${GLOBAL_OFFER_NAME}  NONE
            #    ------------------Filters-------------------
${OFFER_MIN_TJM_FILTER}                   xpath=//input[@id='min_tjm']
${OFFER_MAX_TJM_FILTER}                   xpath=//input[@id='max_tjm']
${OFFER_MIN_MONTH_FILTER}                 xpath=//input[@id='min_month']
${OFFER_MAX_MONTH_FILTER}                 xpath=//input[@id='max_month']
${OFFER_COUNTRY_FILTER}                   xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/input[1]
${OFFER_CITY_FILTER}                      xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/input[1]
${OFFER_STATUS_FILTER}                    xpath=//input[@cy-data="offerStatus_select"]
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