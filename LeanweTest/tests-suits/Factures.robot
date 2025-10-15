*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Facture group Create
    Create new Facture groupe
    Vérifier Le Téléchargement Du Fichier

    