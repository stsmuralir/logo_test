*** Settings ***
Library    RPA.Browser.Selenium
Library           Collections
Library           OperatingSystem
Library           String

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Open Google and Verify Title
    open browser  https://www.google.com/  Edge
