*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown

*** Test Cases ***
Scenario1: Open Page
    [Documentation]    Test Example
    [Tags]        doing
    Check Page Header

*** Keywords ***
Check Page Header
    ${title}=    Get Title
    ${title}=    ActionsPage.Text To Lower Case    ${title}
    Log         ${title}
