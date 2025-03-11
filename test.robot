*** Settings ***
Library    RPA.Browser.Selenium



*** Test Cases ***
Open Firefox in Headless Mode and Verify Title
    Open Browser    https://www.google.com    firefox 
    ${title}=    Get Title
    Log    Title is: ${title}
    Should Be Equal As Strings    ${title}    Google
    Close Browser
