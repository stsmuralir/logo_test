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
    open browser  https://www.google.com/  Edge
