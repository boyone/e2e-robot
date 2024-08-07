*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Search 001
    Open Browser    url=https://www.google.co.th/    browser=headlesschrome
    Input Text    name=q    text=มังคุด
    Press Keys    None     RETURN
    Wait Until Page Contains    text=แนะนำ 4 พันธุ์ทุเรียนไทย ปลูกส่งออก รุ่งแน่นอน!