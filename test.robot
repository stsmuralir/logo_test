*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Open Google and Verify Title
    [Documentation]    Open Google and check the page title using RPA.Browser.Selenium
    Open Browser    https://www.google.com    chrome
    Title Should Be    Google
    Close Browser
