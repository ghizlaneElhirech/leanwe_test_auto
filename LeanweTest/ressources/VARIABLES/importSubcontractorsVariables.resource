*** Variables ***
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
${SUBCONTRACTOR_ENDPOINT}                 /subcontractors
${UNIQUE_PREFIX}                          imported