*** Variables ***

${PRODUCT_TYPE}                           xpath=//div/div/div[contains(text(), "Produits")]
${PRODUCT_RESOURCE_NAME_FIELD}            xpath=//input[@placeholder="Nom de resource"]
${PATH_TO_PRODUCTS_CSV_FILE}              ${CURDIR}/Products_auto.csv
${PRODUCT_TITLE_FIELD}                    xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div/div[1]
${PRODUCT_TITLE_VALUE}                    xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[1]/div[2]/div/div[2]/div/div[1]/div/div
${PRODUCT_REFERENCE_FIELD}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div/div[1]
${PRODUCT_REFERENCE_VALUE}                xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[2]/div[2]/div/div[2]/div/div[2]/div/div
${PRODUCT_DESCRIPTION_FIELD}              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div[1]/div[1]
${PRODUCT_DESCRIPTION_VALUE}              xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[3]/div[2]/div/div[2]/div/div[3]/div/div
${PRODUCT_AMOUNT_FIELD}                   xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div/div[1]
${PRODUCT_AMOUNT_VALUE}                   xpath=/html/body/div/div[2]/div[1]/div[1]/div[3]/main/div/div[1]/div/div[1]/div/div[2]/div[2]/div[3]/div[1]/div/div/div[2]/div/div/div[2]/form/div[4]/div[2]/div/div[2]/div/div[4]/div/div
${PRODUCT_ENDPOINT}                        /products
${UNIQUE_PRODUCT_PREFIX}                  importProd