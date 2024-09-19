*** Variables ***

${PRODUCT_TYPE}                           xpath=//div/div/div[contains(text(), "Produits")]
${PRODUCT_RESOURCE_NAME_FIELD}            xpath=//input[@placeholder="Nom de resource"]
${PATH_TO_PRODUCTS_CSV_FILE}              ${CURDIR}/Products_auto.csv
${PRODUCT_TITLE_FIELD}                    xpath=//form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_TITLE_VALUE}                    Title
${PRODUCT_REFERENCE_FIELD}                xpath=//form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_REFERENCE_VALUE}                reference
${PRODUCT_DESCRIPTION_FIELD}              xpath=//form[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_DESCRIPTION_VALUE}              description
${PRODUCT_AMOUNT_FIELD}                   xpath=//form[1]/div[4]/div[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${PRODUCT_AMOUNT_VALUE}                   amount
${PRODUCT_ENDPOINT}                        /products
${UNIQUE_PRODUCT_PREFIX}                  importProd