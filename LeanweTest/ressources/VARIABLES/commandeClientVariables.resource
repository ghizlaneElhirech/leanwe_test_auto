*** Variables ***

${GLOBAL_COMMANDE_CLIENT_ITEM}                   xpath=(//div[contains(text(),"Achats")])[1]
${COMMANDE_CLIENT_SIDEBAR_ITEM}                  xpath=(//div[contains(text(),"Commandes Client")])[1]
${NEW_CLIENT-COMMANDS}                           xpath=//span[contains(text(),'Nouvelle commande')]
${COMMANDE_NUMBERC}                              xpath=//input[@cy-data="order-number-field"]
${COMMANDE_TYPEC}                                xpath=//Input[@cy-data="sale-type-select"]
${COMMANDE_CLIENT1C}                             xpath=//input[@cy-data="client_autocomplete"]
${COMMANDE_TVA1C}                                xpath=//input[@cy-data="item-tax-amount-field"]
${COMMANDE_ADDBUTTONC}                           xpath=//button[@cy-data="save-client-sale-btn"]
${COMMANDE_TYPE_FORFAITAIRE_OPTION}              xpath=//div[contains(text(),'Forfaitaire')]
${COMMANDE_SALE_START_DATE_PICKER}               xpath=//*[@cy-data="sale-start-date"]
${COMMANDE_SALE_END_DATE_PICKER}                 xpath=//*[@cy-data="sale-end-date"]
${COMMANDE_SALE_START_DATE_VALUE}                2025-11-01
${COMMANDE_SALE_END_DATE_VALUE}                  2025-12-30
${COMMANDE_CLIENT_OPTION_LACOSTE}                LACOSTE
${COMMANDE_ITEM_TITLE_INPUT}                     xpath=//div[@class='col col-6']//label[contains(text(), 'Titre')]/ancestor::div[@class='col col-6']//input
${COMMANDE_ITEM_AMOUNT_INPUT}                    xpath=//div[@class='col col-6']//label[contains(text(), 'Montant HT')]/ancestor::div[@class='col col-6']//input
${COMMANDE_ITEM_AMOUNT_VALUE}                    500
${COMMANDE_TVA_OPTION_20}                        xpath=//div[contains(text(),'20%')]
${COMMANDE_CLIENT_SEARCH_BAR}                    xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]
${COMMANDE_CLIENT_START_DATE_FILTER}             xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${COMMANDE_CLIENT_START_DATE_FILTER_VALUE}       xpath=(//table[1]/tbody[1]/tr[2]/td[2]/button[1])[1]
${COMMANDE_CLIENT_END_DATE_FILTER}               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${COMMANDE_CLIENT_END_DATE_FILTER_VALUE}         xpath=(//table[1]/tbody[1]/tr[2]/td[2]/button[1])[2]
${COMMANDE_CLIENT_CARD_TITLE_LOCATOR}             xpath=//span[contains(@class, 'commande-title')]