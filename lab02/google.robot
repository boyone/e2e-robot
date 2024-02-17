*** Settings ***
Library    SeleniumLibrary

#*** Variables ***

*** Test Cases ***
ทดสอบการค้นหาบน Google
    Open browser    url=https://www.google.co.th/    browser=headlesschrome
    Input Text      id:APjFqb    text=ตรวจหวย
    Press Keys    None	RETURN
    Wait Until Page Contains    text=ตรวจ ผล รางวัล สลากกินแบ่ง รัฐบาล    
    Page Should Contain    text=ตรวจ ผล รางวัล สลากกินแบ่ง รัฐบาล
    #Sleep    5 seconds