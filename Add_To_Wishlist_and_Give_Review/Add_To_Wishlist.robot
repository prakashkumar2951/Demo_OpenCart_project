*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    Path           E:\\drivers\\chromedriver_win32
    Open Browser      url=https://demo.opencart.com/   browser=chrome
    Maximize Browser Window
    Click Element     xpath=//a[@class='dropdown-toggle']
    Click Element     link=Login
    Input Text        id=input-email           spfm1235@gmail.com
    Input Password    id=input-password        spfm1916613
    Click Element     xpath=//input[@value='Login']
    Click Element     link=Desktops
    Click Element     link=Show All Desktops
    Click Element     link=Apple Cinema 30"
    Click Element     xpath=//button[@class='btn btn-default']
    Click Element     id=wishlist-total
    Click Element     xpath=//a[@class='btn btn-danger']
    Click Element     link=Continue








