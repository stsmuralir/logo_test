*** Settings ***
Library    RPA.Browser.Selenium
Library           Collections
Library           OperatingSystem
Library           String

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.google.com
${PROFILE_PATH}   /home/jenkins/chrome-profiles

*** Test Cases ***
Open Google and Verify Title
    [Setup]    Setup Environment
    Open Browser    ${URL}    ${BROWSER}    options=${CHROME_OPTIONS}
    ${title}=    Get Title
    Log    Title: ${title}
    Should Be Equal As Strings    ${title}    Google
    [Teardown]    Close Browser

*** Keywords ***
Setup Environment
    # Ensure profile directory exists
    Create Directory    ${PROFILE_PATH}    recursive=True
    # Fix permissions for Docker if needed
    Run Keyword And Ignore Error    Run Process    chown -R jenkins:jenkins ${PROFILE_PATH}

    # Kill stale Chrome processes before starting
    Run Keyword And Ignore Error    Run Process    pkill -9 chrome

    # Generate unique profile path
    ${timestamp}=    Get Time    epoch
    ${random}=       Evaluate    random.randint(1000, 9999)    modules=random
    ${profile}=      Set Variable    ${PROFILE_PATH}/profile-${timestamp}-${random}

    # Build Chrome options
    ${CHROME_OPTIONS}=    Set Variable
    ...    --user-data-dir=${profile}
    ...    --no-sandbox
    ...    --disable-dev-shm-usage
    ...    --disable-extensions
    ...    --disable-gpu
    ...    --remote-debugging-port=9222
    ...    --headless=new
