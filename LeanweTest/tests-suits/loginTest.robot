*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${Leanwe_URL}       https://staging.leanwe.com
${BROWSER}      chrome
${sidebar_Xpath}     xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]
${CMD_NUMBER}       xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CMD_TYPE}     xpath=//body[1]/div[1]/div[2]/div[4]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CMD_TYPE_DROPDOWN}     //div[contains(text(),'Régie')]
${START_DATE}       xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CALENDAR_START}      xpath=//body[1]/div[1]/div[2]/div[5]/div[1]/div[1]/div[1]/div[2]
${SELECTED_START_DATE}        2024-03-01
${END_DATE}     xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${CALENDAR_END}     xpath=//body[1]/div[1]/div[2]/div[6]/div[1]/div[1]/div[1]/div[2]
${SELECTED_END_DATE}        2024-06-30
${CLIENT}            xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/input[1]
${CLIENT_CMD}       xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${REQ_TITLE}        xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[7]/div[1]/div[1]/div[1]/div[1]/input[1]
${HT_AMOUNT}        xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[8]/div[1]/div[1]/div[1]/div[1]/input[1]
${TVA_AMOUNT}       xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[9]/div[1]/div[1]/div[1]/div[1]/input[1]
${ADD_BUTTON}       xpath=//body[1]/div[1]/div[2]/div[5]/div[1]/div[1]/div[3]/button[1]
*** Test Cases ***
verifier la page d'accueil de l'application
    Open Browser    ${Leanwe_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep     2s
    Wait Until Element Is Visible    xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
    input text       xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]       samih.arjan@yopmail.com
    input text       xpath=//input[@id='password']          secret2023
    click element    xpath=//span[contains(text(),'Se connecter')]
  

# Check the sidebar items and their links

#     Wait Until Element Is Visible           ${sidebar_Xpath}
#     ${sidebar_element}  Get WebElement      ${sidebar_Xpath}
#     Mouse Over                              ${sidebar_element}
#     Sleep   3s
#     click element   xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]/div[1]/a[5]/div[2]
#     sleep   2s

# Create a new internal command

#     click button        xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/header[1]/div[1]/button[1]
#     sleep   2s
#     Click element                   ${CMD_NUMBER}
#     Element Should Be Enabled       ${CMD_NUMBER}
#     input text                      ${CMD_NUMBER}         auto-1002
#     sleep   3s
#     Click element       xpath=//body[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
#     Click Element                   ${CMD_TYPE_DROPDOWN}
#     sleep   2s
#     Select date from Calendar
#     sleep   2s
#     Wait Until Page Contains Element    //body/div[@id='spark-app']/div[@id='app']/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/input[1]      timeout=30s
#     Input Text       //body/div[@id='spark-app']/div[@id='app']/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/input[1]      SARP
#     Sleep    2s
#     Click element    //button[@aria-label='Clear Client']
#     Sleep    1s
#     Click element   //body/div[@id='spark-app']/div[@id='app']/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]/input[1]
#     Sleep    1s
#     Click element   //div[contains(text(),'SARP')]
#     sleep   2s
#     Input Text      ${REQ_TITLE}        Besoin122
#     Input Text      ${HT_AMOUNT}        400
#     Input Text      ${TVA_AMOUNT}       20
#     Click Button                        css:[cy-data="submitSale_btn"]
#     sleep   3s
#     Wait Until Page Contains            La commande a été créée avec succès
#     Sleep   3s



##    execute javascript  window.scrollTo(0,document.body.scrollHeight)
##    scroll element into view    xpath://body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[2]/div[1]/aside[1]/div[2]/div[1]/a[13]/div[1]/*[1]
##    sleep   5s
#    FOR ${i}    IN    ${Sidebar_Items}
#        log to console ${i}
#    END

*** Keywords ***
Select date from Calendar
      Click element     //body/div[@id='spark-app']/div[@id='app']/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
        Sleep  1s
      Click element     //div[contains(text(),'10')]
        sleep  3s
      Click element     //body/div[@id='spark-app']/div[@id='app']/div[3]/div[1]/div[1]/div[2]/form[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
        Sleep  1s
      Click element    //body[1]/div[1]/div[2]/div[6]/div[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[5]/td[4]/button[1]/div[1]
        sleep    3s