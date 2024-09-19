*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary 
Library      Collections
Library      DateTime
Resource     ../VARIABLES/GlobalVariables.resource
Resource     ../VARIABLES/importProductsVariables.resource
Resource     GlobalHelpers.resource


*** Keywords ***
ASSOCIATION OF COLUMNS PRODUCTS
    MAPPING FUNCTION                ${PRODUCT_TITLE_FIELD}                        ${PRODUCT_TITLE_VALUE} 
    MAPPING FUNCTION                ${PRODUCT_REFERENCE_FIELD}                    ${PRODUCT_REFERENCE_VALUE}
    MAPPING FUNCTION                ${PRODUCT_DESCRIPTION_FIELD}                  ${PRODUCT_DESCRIPTION_VALUE}
    MAPPING FUNCTION                ${PRODUCT_AMOUNT_FIELD}                       ${PRODUCT_AMOUNT_VALUE}


Clean Up Imported Data
    [Documentation]  This keyword deletes previously imported collaborator data
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${PRODUCT_ENDPOINT}
    ${response}=  GET  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  200
    ${products}=  Evaluate  [item for item in $response.json()['data'] if item['title'].startswith('${UNIQUE_PRODUCT_PREFIX}')]  json
    FOR  ${product}  IN  @{products}
        ${product_id}=  Set Variable  ${product['uuid']}
        DELETE product  ${product_id}
    END

DELETE PRODUCT
    [Arguments]  ${product_id}
    ${headers}=  Create Dictionary  Authorization=Bearer ${TOKEN}
    ${url}=  Set Variable  ${BASE_URL}${PRODUCT_ENDPOINT}/${product_id}
    ${response}=  DELETE  ${url}  headers=${headers}
    Log  ${response.status_code}
    Log  ${response.text}
    Should Be Equal As Strings  ${response.status_code}  204