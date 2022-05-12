#*** Settings ***
#Library     SeleniumLibrary
#Library     OperatingSystem
#
#
#*** Test Cases ***
#TC1
#    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
#    Open Browser      url=https://demo.opencart.com/   browser=chrome
#    Maximize Browser Window
#    Click Element     xpath=//a[@class='dropdown-toggle']
#    Click Element     link=Login
#    Input Text        id=input-email           spfm1237@gmail.com
#    Input Password    id=input-password        spfm1916613
#    Click Element     xpath=//input[@value='Login']
*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_01

Resource        ../Resource/Commonfunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Valid Credentials

Library     DataDriver      file=../test_data/Check.xlsx      sheet_name=Valid Credentials

*** Test Cases ***
TC1
*** Keywords ***
Valid Credentials

     Click Element     xpath=//a[@class='dropdown-toggle']
     Click Element     link=Login

     [Arguments]     ${username}     ${password}    ${expected_value}

     Input Text    id=input-email    ${username}
     Input Password    id=input-password    ${password}
     Click Element    xpath=//input[@value='Login']
     Page Should Contain     ${expected_value}


