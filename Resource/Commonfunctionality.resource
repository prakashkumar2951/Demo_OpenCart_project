*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${BROWSER}      chrome
${URL}      https://demo.opencart.com/

*** Keywords ***
Launch Browser


        Append To Environment Variable    Path      ${EXECDIR}${/}driver
        Open Browser        browser=${BROWSER}
        Maximize Browser Window
        Set Selenium Implicit Wait    30s
        Set Screenshot Directory    ${EXECDIR}${/}screenshot
        Go To    url=https://demo.opencart.com/










