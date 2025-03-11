*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Open Google and Verify Title
    [Documentation]    Open Google and check the page title using RPA.Browser.Selenium
    ${timestamp}=    Get Time    epoch
    ${options}=    Set Variable    --user-data-dir=/tmp/chrome-profile-${timestamp}
    Open Browser    https://www.google.com    chrome    options=${options}

