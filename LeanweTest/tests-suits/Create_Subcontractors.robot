*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Sucontractors Create and Search
    Search Subcontractor By Type
    ${Subcontractortitle}=    Create a new Subcontactor
    Search new Subcontractor    PO_String=${Subcontractortitle}
        