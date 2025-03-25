*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Mission Create and Search
    Create New Mission
    Sleep    5s
    #Apply Date Filter    2024-11-01    2024-12-30
    #Apply Type Mission Filter    Forfaitaire
    #Apply Client Filter    Société de dév
    #Apply Statut Filter    Terminée
    #Verify Filter Results

    