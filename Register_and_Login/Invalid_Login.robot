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
#    Input Text        id=input-email           spfm1235@gmail.com
#    Input Password    id=input-password        spfm191661
#    Click Element     xpath=//input[@value='Login']
#    Element Text Should Be      xpath=//div[@class='alert alert-danger alert-dismissible']      Warning: No match for E-Mail Address and/or Password.

*** Settings ***

Documentation       This suite will handle invalid credentials.

...     test - TC_02

Resource        ../Resource/Commonfunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Invalid Credentials

Library     DataDriver      file=../test_data/Check.xlsx      sheet_name=Invalid Credentials

*** Test Cases ***
TC1
*** Keywords ***
Invalid Credentials

     Click Element     xpath=//a[@class='dropdown-toggle']
     Click Element     link=Login

     [Arguments]     ${username}     ${password}    ${expected_error}

     Input Text    id=input-email    ${username}
     Input Password    id=input-password    ${password}
     Click Element    xpath=//input[@value='Login']
     Page Should Contain     ${expected_error}