***Variables
${btn_login}    css:.btn-login 


***Keywords

Go To page  
    [Arguments]     ${text}     ${url}
    Given that I open the "Training Wheels Protocol"
    When I open "${text}" 
    Then I must see the "${url}" URL


that I open the "${text}"
    Go to               ${BASE_URL}
    Title Should Be     ${text}

I open "${LINK}" 
    Click Element                       xpath://a[contains(text(),"${LINK}")]
    
I must see the login page
    Wait Until Element Is Visible       ${btn_login} 

I must see the "${url}" URL
    Wait Until Location Contains      ${url}   
    
I should do something