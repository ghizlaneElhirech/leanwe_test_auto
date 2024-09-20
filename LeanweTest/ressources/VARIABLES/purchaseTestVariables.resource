*** Variables ***

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
${CHOSEN_END_DATE}                        xpath=//body[1]/div[1]/div[2]/div[6]/div[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[6]/button[1]/div[1]
${PURCHASE_PRETAX_AMOUNT}                 xpath=//form[1]/div[1]/div[9]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_TARIF}                         700
${PURCHASE_TAX_AMOUNT}                    xpath=//form[1]/div[1]/div[10]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_TVA}                           20
${PURCHASE_ADD_BUTTON}                    xpath=//Button[@cy-data="submitSale_btn"]
${PURCHASE_SEARCH_BAR}                    xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]
${PURCHASE_START_DATE_FILTER}             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_END_DATE_FILTER}               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_STATUS_FILTER}                 xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_FNP_STATUS}                    xpath=//div[contains(text(),"FNP")]
${PURCHASE_TYPE_FILTER}                   xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_CHOSEN_TYPE_FILTER}            xpath=//div/div[contains(text(),"Semestriel")]
${PURCHASE_CATEGORY_FILTER}               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PURCHASE_CATEGORY_CHOSEN_FILTER}        xpath=//div[contains(text(),"Exemple")]
${PURCHASE_TITLE}                         PURCHASE_AUTO
${PURCHASE_CARD_TITLE_LOCATOR}            xpath=//main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/a[1]/div[1]/div[1]/div[1]/span[1]