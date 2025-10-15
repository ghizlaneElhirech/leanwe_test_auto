*** Variables ***
 
${TIMESHEET_TYPE}                          xpath=/html/body/div/div[2]/div[2]/div/div[8]/div/div
${PATH_TO_TIMESHEETS_FILE}                 ${CURDIR}/timesheets 2.csv          #${CURDIR}/ressources//employees-auto.csv 
${REFERENCE_COMMANDE_FIELD}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div[1]/div[1]
${REFERENCE_COMMANDE_VALUE}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div[2]/div/div[13]/div/div
${COLLABORATOR_FIELD}                      xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div[1]/div[1]
${COLLABORATOR_VALUE}                      xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div[2]/div/div[1]/div/div
${TYPE_ACTIVITY_FIELD}                     xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div/div[1]/div[1]/div[1]/input
${TYPE_ACTIVITY_VALUE}                     xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div[2]/div/div[7]/div/div
${TYPE_ACTIVITY_NAME_FIELD}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div/div[1]/div[1]/div[1]/input
${TYPE_ACTIVITY_NAME_VALUE}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div[2]/div/div[8]/div/div
${DATE_FIELD}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[5]/div[2]/div/div/div[1]/div[1]/div[1]/input
${DATE_VALUE}                              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[5]/div[2]/div/div[2]/div/div[4]/div/div
${PERIOD_FIELD}                            xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[6]/div[2]/div/div/div[1]
${PERIOD_VALUE}                            xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[6]/div[2]/div/div[2]/div/div[9]/div/div
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
