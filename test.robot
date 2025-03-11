*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Open Google and Verify Title
    [Documentation]    Open Google and check the page title using RPA.Browser.Selenium
    ${timestamp}=    Get Time    epoch
    ${options}=    Create List
    ...    --user-data-dir=/tmp/chrome-profile-${timestamp}
    ...    --no-sandbox
    ...    --disable-dev-shm-usage
    ...    --disable-gpu
    ...    --remote-debugging-port=9222
    Open Browser    https://www.google.com    chrome    arguments=${options}

