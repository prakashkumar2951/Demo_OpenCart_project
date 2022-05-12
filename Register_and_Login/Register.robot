*** Settings ***
Documentation       This suite will handle register page.
...     test -TC_OH_1
Resource        ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup          Launch Browser

*** Test Cases ***
TC1
#    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
#    Open Browser      url=https://demo.opencart.com/   browser=chrome
#    Maximize Browser Window
    Click Element     xpath=//a[@class='dropdown-toggle']
    Click Element     link=Register
    Input Text        id=input-firstname       SP
    Input Text        id=input-lastname        FM
    Input Text        id=input-email           spfm1237@gmail.com
    Input Text        id=input-telephone       9116613190
    Input Password    id=input-password        spfm1916613
    Input Password    id=input-confirm         spfm1916613
    Click Element     name=newsletter
    Click Element     name=agree
    Click Element     xpath=//input[@type='submit']
    Click Element     link=Continue
    Element Should Contain    xpath=//i[text()=" Warning: E-Mail Address is already registered!"]     Warning: E-Mail Address is already registered!
