*** Variables ***

${COLLABORATORS_TYPE}                      xpath=//body/div[@id='spark-app']/div[@id='app']/div[2]/div[1]/div[1]/div[1]
${PATH_TO_COLLABORATORS_FILE}              ${CURDIR}/employees-auto.csv          #${CURDIR}/ressources//employees-auto.csv 
${NAME_FIELD}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div[1]/div[1]
${NAME_VALUE}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div[2]/div/div[2]/div/div
${PRENOM_FIELD}                            xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div/div[1]
${PRENOM_VALUE}                            xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div[2]/div/div[1]/div/div
${POST_TITLE_FIELD}                        xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div/div[1]/div[1]/div[1]/input
${POST_TITLE_VALUE}                        xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div[2]/div/div[10]/div/div
${TYPE_FIELD}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div/div[1]/div[1]/div[1]/input
${TYPE_VALUE}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div[2]/div/div[3]/div/div
${EMAIL_FIELD}                             xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[5]/div[2]/div/div/div[1]/div[1]/div[1]/input
${EMAIL_VALUE}                             xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[5]/div[2]/div/div[2]/div/div[11]/div
${TJM}                                     xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[6]/div[2]/div/div[1]/div[1]/div[1]/div[1]/input
${TJM_VALUE}                               xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[6]/div[2]/div/div[2]/div/div[8]/div
${PHONE_FIELD}                             xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[7]/div[2]/div/div/div[1]/div[1]/div[1]/input
${PHONE_VALUE}                             xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[7]/div[2]/div/div[2]/div/div[4]/div/div
${CJM_FIELD}                               xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[8]/div[2]/div/div/div[1]/div[1]/div[1]/input
${RTT_FIELD}                               xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[9]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${CP_FIELD}                                xpath=//main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[10]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${ADRESSE_FIELD}                           xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[14]/div[2]/div/div/div[1]/div[1]/div[1]/input
${ADRESSE_VALUE}                           xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[14]/div[2]/div/div[2]/div/div[5]/div
${COUNTRY_FIELD}                           xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[15]/div[2]/div/div/div[1]/div[1]/div[1]/input
${COUNTRY_VALUE}                           xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[15]/div[2]/div/div[2]/div/div[6]/div/div
${CITY_FIELD}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[16]/div[2]/div/div/div[1]/div[1]/div[1]/input
${CITY_VALUE}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[16]/div[2]/div/div[2]/div/div[7]/div/div
${REFERENCE_FIELD}                         xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[20]/div[2]/div/div/div[1]/div[1]/div[1]/input
${REFERENCE_VALUE}                         xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[20]/div[2]/div/div[2]/div/div[9]/div/div
${IMPORT_SUCESS_NOTIFICATION}              Importation terminée.
${SNACKBAR_SUCCESS}                        xpath=/html/body/div/div[1]/div/div[1]

${AUTH_TOKEN}                              your-auth-token  # Replace with the actual token if needed
${UNIQUE_DOMAIN}                           guerrillamail.com  # unique domain
${UNIQUE_Prefix}                           Importeed
${AUTH_ENDPOINT}                           /login                  # Replace with your authentication endpoint      
${EMPLOYEES_ENDPOINT}                      /employees
${BASE_URL}                                https://staging-api.leanwe.com/api/v1/esns/d11d8e1d-5874-4eda-9f6e-05eefddd09b7
${AUTH_ENDPOINT}                           /auth/login            # confirm with dev team if correct
${EMPLOYEES_ENDPOINT}                      /employees
${API_URL}                                 /login
${EMAIL-token}                             redouane@yopmail.com
${PASSWORD-token}                          secret2023
${UNIQUE_DOMAIN}                           guerrillamail.com
${TOKEN}                                   None
