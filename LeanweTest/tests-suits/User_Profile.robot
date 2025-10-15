*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Create User Document
    [Documentation]    Vérifie qu'un utilisateur peut ajouter un nouveau document dans son profil.
    LOG IN AS SUPPORT
    Go To Profile Page
    Open Documents Tab
    Click Add Document
    Fill Document Form
    Submit Document Form
    Verify Document In List
    Go back to main page

Edit Existing User Document
    [Documentation]    Vérifie qu'un utilisateur peut modifier le type et le nom d’un document dans le profil.
    Go To Profile Page
    Open Documents Tab
    Click Edit On First Document
   Modify Document Fields
    Submit Document Update
    Verify Document Updated
    Go back to main page

Delete Existing User Document
    [Documentation]    Vérifie que l'utilisateur peut supprimer un document existant depuis le profil.
    Go To Profile Page
    Open Documents Tab
    Click Delete On First Document
    Confirm Document Deletion
    Verify Document Removed

Download and Delete attached file from document
    [Documentation]  Verify that the download button is visible and the file can be downloaded
    Open Documents Tab
    Click on the attached file button of the document
    Verify that the download button is visible
    Click on the download button
    Click on the delete button
    Confirm Document Deletion
    Close the attached files popup
    Sleep    10s

Check User Contracts Display
    [Documentation]    Vérifie que si aucun contrat n'est disponible, un message d'information est affiché, sinon les détails des contrats sont bien visibles.
    Go To Contracts Tab
    ${no_contract}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//div[contains(text(), "Vous n'avez aucun contrat")]    timeout=3s

    Run Keyword If    '${no_contract}' == 'True'    
...    Log    Aucun contrat affiché, message de confirmation présent.
...    ELSE    Run Keywords
...    Verify At Least One Contract Listed
...    AND    Verify First Contract Contains Reference Type And Dates
    Sleep    4s
    Go back to main page

Update And Verify Personal Information
    [Documentation]    Vérifie que l'utilisateur peut modifier ses informations personnelles (lieu de naissance, ville, adresse, nationalité, code postal, date de naissance) et que les modifications sont correctement affichées après sauvegarde.
    Go To Profile Page
    Click Modify Button
    Sleep    3s
    Update Profile Fields
    Save Profile Changes
    Sleep    7s
    Expand Personal Information Section
    Compare Displayed Profile Data
    