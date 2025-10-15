*** Settings ***
Library   SeleniumLibrary
Library   Collections
Resource    ../ressources/helpers.resource


*** Variables ***


*** Test Cases ***
FILL IN A TIMESHEET
    LOG IN AS COLLABORATOR  ${Leanwe_URL}     ${BROWSER}    ${LOGIN_EMAIL}    ${Password}
    NAVIGATE TO TIMESHEET PAGE
    Wait Until Element Is Visible    ${NEW_TIMESHEET_BTN}
    SELECT THE TIMESHEET MONTH
    ACCESS TIMESHEETS PAGE AND ADD NEW LINE
    FILL OUT THE TIMESHEET FORM

*** Keywords ***
NAVIGATE TO TIMESHEET PAGE
    Wait Until Page Contains    Tableau de Bord
    ${sidebar_element}  Get WebElement        ${sidebar_Xpath}
    Mouse Over                                ${sidebar_element}
    Wait Until Page Contains Element          ${CRA_SIDEBAR_ITEM}                  timeout=2s
    click Element                             ${CRA_SIDEBAR_ITEM}
    Wait Until Element Is Visible             ${TIMESHEET_SIDEBAR_ITEM}
    click Element                             ${TIMESHEET_SIDEBAR_ITEM}
    Mouse Out                                 ${sidebar_element}

SELECT THE TIMESHEET MONTH
    Click Element                   ${TIMESHEET_MONTH_FILTER}   
    Wait Until Element Is Visible   xpath=//body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]           timeout=13s   
    Click Element                   xpath=//body[1]/div[1]/div[2]/div[2]/div[1]/div[5]/div[1]/div[1]
    Wait Until Element Is Visible    xpath=//main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]
    Wait Until Element Is Visible        xpath=//div[@class="leanwe-card timesheet-card h-100"]     
    Click Element                        xpath=//div[@class="leanwe-card timesheet-card h-100"]
ACCESS TIMESHEETS PAGE AND ADD NEW LINE
    Wait Until Page Contains             ${TIMESHEET_PAGE_TITLE}
    Wait Until Element Is Visible        ${ADD_TIMESHEET_LINE_BTN} 
    Click Element                        ${ADD_TIMESHEET_LINE_BTN} 

FILL OUT THE TIMESHEET FORM
    Wait Until Element Is Visible        ${SELECT_CATEGORY_FIELD}
    Click Element                        ${SELECT_CATEGORY_FIELD}
    Wait Until Element Is Visible        xpath=//div[contains(text(),"Projet")]  
    Click Element                        xpath=//div[contains(text(),"Projet")]                        
    Click Element                        ${TYPE_SELECTION_FIELD}
    Press Keys         none      ARROW_DOWN
    Press Keys         none       ENTER                 
    sleep     5s

    # IF    $var_in_py_expr1 == $var_in_py_expr2
    #     Call Keyword
    # ELSE
        
    # END