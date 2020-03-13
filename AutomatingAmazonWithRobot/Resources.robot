*** Settings ***
Documentation     Import all resourse files and libraries 
Library           SeleniumLibrary
Library           FakerLibrary    locale=en_US
Resource         ./Keywords.robot
Resource         ./CommonVariables.robot
