*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library    DateTime
Library           OperatingSystem
Resource    ../ressources/helpers.resource



*** Test Cases ***
Contract Model Create and Search
    ${ModelContracttitle}=    Create a New Contract Model
    Search Contract Model    ModelContracttitle=${ModelContracttitle}
    