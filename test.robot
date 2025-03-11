*** Settings ***
Library    RPA.Browser.Selenium



*** Test Cases ***
Open Firefox in Headless Mode and Verify Title
    Open Browser    https://www.google.com    firefox    options=add_argument("--headless")
    ${title}=    Get Title
    Log    Title is: ${title}
    Should Be Equal As Strings    ${title}    Google
    maximize browser window
    ${width}=    Execute JavaScript    return window.innerWidth;
    ${height}=    Execute JavaScript    return window.innerHeight;
    Log To Console    Browser Resolution: ${width} x ${height}
    Close Browser
