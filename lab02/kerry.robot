*** Settings ***
Library    SeleniumLibrary

#*** Variables ***

*** Test Cases ***
ทดสอบการติดตามสถานะสินค้า กรณี 1 หมายเลขพัสดุ
    Open Browser    url=https://th.kerryexpress.com/en/track/    browser=gc
    #http: & https: มีผล
    #Wait Until Element Is Visible    xpath://*[@class:form-control tracking-input ke-placeholder-color]   5
    Wait Until Element Is Visible    xpath:/html/body/kett-root/kett-search-form/div/div/div/form/div/div[1]/input
    Click Element    xpath:/html/body/kett-root/kett-search-form/div/div/div/form/div/div[1]/input
    #Click Element    xpath://*[@class:form-control tracking-input ke-placeholder-color]
    #Input Text    xpath:/html/body/kett-root/kett-search-form/div/div/div/form/div/div[1]/input    SHP5382735879
    #Press Keys    None	RETURN
    Sleep    1.5 seconds

    