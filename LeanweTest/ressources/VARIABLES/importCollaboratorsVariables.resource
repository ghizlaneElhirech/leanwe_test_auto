*** Variables ***

${COLLABORATORS_TYPE}                      xpath=//body/div[@id='spark-app']/div[@id='app']/div[2]/div[1]/div[1]/div[1]
${PATH_TO_COLLABORATORS_FILE}              ${CURDIR}/employees-auto.csv          #${CURDIR}/ressources//employees-auto.csv 
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
${IMPORT_SUCESS_NOTIFICATION}              Importation terminée.
${API_URL}                                 https://staging-api.leanwe.com/login  # Replace with your actual API endpoint
${BASE_URL}                                https://staging-api.leanwe.com/api/v1/esns/d11d8e1d-5874-4eda-9f6e-05eefddd09b7
${AUTH_TOKEN}                              your-auth-token  # Replace with the actual token if needed
${UNIQUE_DOMAIN}                           guerrillamail.com  # unique domain
${UNIQUE_Prefix}                           Importeed
${AUTH_ENDPOINT}                           /login                  # Replace with your authentication endpoint      
${TOKEN}                                   None
${EMPLOYEES_ENDPOINT}                     /employees