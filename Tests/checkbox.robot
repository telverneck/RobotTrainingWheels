*** Settings ***
Documentation       Checkbox Page
Resource            ../Resources/BasePage.robot 

Suite Setup         Start Session 
Suite Teardown      Close Session


*** Test Cases ***
Scenario1 - Test1    [Tags]    check
    Go To page       Checkboxes       checkboxes
    Check selected options
    Unselect default options
    Select all options available