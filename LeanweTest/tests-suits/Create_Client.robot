*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Client Create and Export
    Create New Client
    Export Client
    

    