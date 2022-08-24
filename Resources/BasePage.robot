***Settings***
Documentation           This is the main page for the project
Library                 SeleniumLibrary
Library                 FakerLibrary
Library                 DateTime 
Library                 BuiltIn
Library                 String

Resource                Pages/Common/ActionsPage.robot
Resource                Pages/Common/ComponentsPage.robot
Resource                Pages/checkboxPage.robot
Resource                Pages/dropdownPage.robot
Resource                Pages/homePage.robot
Resource                Pages/loginPage.robot

Variables               locators.py



***Variables***
${BASEURL}                          https://training-wheels-protocol.${CONCATE}.com
${CONCATE}                          herokuapp
${BROWSER}                          ${browserName}         # from locators.py
@{LIST_OF_BROSERS}                  chrome    firefox    edge
${LONGTIMEOUT}                      60
${TIMEOUT}                          30
${BROWSER_WIDTH}                    1440   
${BROWSER_HEIGHT}                   900
${FRAME}                            css:iframe#Simulator

# ${env}=    uat
# &{url_dict}=    qa=http://way2automation.com    uat=http://google.com
# open browser    ${url_dict.${env}}    ${browser}

***Keywords***
Start Session
    Open Browser                    about:blank         ${BROWSER}
    Set Browser Implicit Wait       ${TIMEOUT}
    Set Selenium Timeout            ${TIMEOUT}
    Set window size                 ${BROWSER_WIDTH}    ${BROWSER_HEIGHT}
    Go To                           ${BASEURL}
    ${PageTitle}=                   SeleniumLibrary.Get Title
    Log                             ${PageTitle}


Close Session
    Capture Page Screenshot
    Close Browser

