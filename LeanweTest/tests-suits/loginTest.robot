*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Leanwe_URL}       https://staging.leanwe.com
${BROWSER}          chrome

# XPaths
${EMAIL_INPUT}      xpath=//body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${PASSWORD_INPUT}   xpath=//input[@id='input-20']
${LOGIN_BUTTON}     xpath=//body/div[@id='spark-app']/div[@id='app']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/button[1]

*** Test Cases ***
verifier la page d'accueil de l'application
    Open Browser    ${Leanwe_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

    # Input email
    Wait Until Element Is Visible  ${EMAIL_INPUT}  timeout=10s
    Input Text  ${EMAIL_INPUT}  samih.arjan@yopmail.com

    # Input password
    Wait Until Element Is Visible  ${PASSWORD_INPUT}  timeout=10s
    Input Text  ${PASSWORD_INPUT}  secret2023

    # Click login button
    Wait Until Element Is Visible  ${LOGIN_BUTTON}  timeout=10s
    Click Element  ${LOGIN_BUTTON}

    Sleep   3s
    # Add more steps as needed

    # Close the browser at the end of the test
    Close Browser