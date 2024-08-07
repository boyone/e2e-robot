*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ทดสอบเช็คเลขพัสดุเคอรี่ เอ็กซ์เพรส กรณี 1 หมายเลขพัสดุ
    Open Browser    url=https://th.kerryexpress.com/th/track/    browser=chrome
    
    Wait Until Keyword Succeeds    15 times    200ms    Click Element    xpath://*[@class="form-control tracking-input ke-placeholder-color"]
    
    # Wait Until Keyword Succeeds    15 times    200ms    Input Text    xpath://*[@placeholder='ตรวจพัสดุได้สูงสุด 30 เลขหมายในคราวเดียว ด้วยการเว้นวรรค หรือใส่เครื่องหมาย ","']     SHP5382735879
    Input Text    xpath://*[@placeholder='ตรวจพัสดุได้สูงสุด 30 เลขหมายในคราวเดียว ด้วยการเว้นวรรค หรือใส่เครื่องหมาย ","']     SHP5382735879
    
    Click Button    ติดตาม
    Wait Until Page Contains    ผลการค้นหาทั้งหมด 1 รายการ

    # Wait Until Element Is Enabled    xpath://*[@class="form-control tracking-input ke-placeholder-color"]    4s
    # Click Element    xpath://*[@class="form-control tracking-input ke-placeholder-color"]
    # Wait Until Keyword Succeeds    40 times    200ms    Click Element    xpath://*[@placeholder='ตรวจพัสดุได้สูงสุด 30 เลขหมายในคราวเดียว ด้วยการเว้นวรรค หรือใส่เครื่องหมาย ","']
    # Wait Until Keyword Succeeds    15 times    200ms    Input Text    xpath://input    text=SHP5382735879
