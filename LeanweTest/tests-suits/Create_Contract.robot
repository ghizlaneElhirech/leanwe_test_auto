*** Settings ***
Library   SeleniumLibrary
Library   Collections
Resource    ../ressources/helpers.resource


*** Variables ***


*** Test Cases ***
Create a New Contract
    LOG IN AS SUPPORT
    Wait Until Page Contains Element          ${DASHBOARD_TITLE_XPATH}         timeout=5s
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CONTRACT_ITEM}                  timeout=2s
    click Element                             ${CONTRACT_ITEM}
    Click Element                             ${ACESS_CONTRACTS_PAGE}
    Wait Until Element Is Visible             ${CREATE_NEW_CONTRACT_BUTTON}
    Click Element                             ${CREATE_NEW_CONTRACT_BUTTON}
    CONTRACT SUBCONTRACTOR STEP
    Sleep    5s
    Click Element                             ${NEXT_BUTTON_CONTRACT}
    CONTRACT CLIENT DETAILS STEP
    Click Element                             ${NEXT_BUTTON_CONTRACT}
    CONTRACT APPLICANT DETAILS  
    Select Contract Articles
    Click Element                             ${NEXT_BUTTON_CONTRACT}
    SELECT CONTRACT TEMPLATE
    Click Element                             ${CONTRACT_CREATE_BTN} 
    Wait Until Element Is Visible             ${SNACKBAR_SUCCESS} 
    Element Should Contain                    ${SNACKBAR_SUCCESS}            ${CONTRACT_SUCESS_NOTIFICATION}
    Sleep    3s