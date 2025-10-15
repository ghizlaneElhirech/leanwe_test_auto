*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Commande Client Create and Search
    Create new client command

    