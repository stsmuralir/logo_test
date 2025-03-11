*** Settings ***
Library    RPA.Browser.Selenium

*** Test Cases ***
Open Headless Firefox and Verify Title
    Open Browser    https://www.example.com    browser=firefox    options=add_argument("-headless")

    ${title}=    Get Title
    Log    Title is: ${title}
    Should Be Equal As Strings    ${title}    Google
    Close Browser
