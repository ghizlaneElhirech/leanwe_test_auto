*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../ressources/helpers.resource

*** Variables ***


*** Test Cases ***
Create a New Project
    LOG IN AS SUPPORT
    SELECT PROJECT FROM THE SIDEBAR 
    CLICK ADD NEW PROJECT BUTTON
    FILL OUT THE PROJECT CREATION FORM
    SUBMIT THE CREATION FORM

Check the existence of Created project
    Sleep    3s
    Search for project by filter



