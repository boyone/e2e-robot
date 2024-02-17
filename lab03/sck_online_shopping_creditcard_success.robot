*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://localhost
${BROWSER}    gc

*** Test Cases ***
ทดสอบ สั่งซื้อสินค้าจัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    ค้นหาสินค้าด้วย คำค้นหา Bicycle
    ตรวจสอบผลการค้นหา Balance Training Bicycle
    เลือกดูสินค้า Balance Training Bicycle
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle
    เพิ่ม Balance Training Bicycle ลงตะกร้า
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle ในตะกร้า
    เพิ่มจำนวน Balance Training Bicycle ที่สั่งซื้อเป็น 2 ชิ้น 
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle ในตะกร้า ต้องเท่ากับ 86 แต้ม
    ใส่ที่อยู่จัดส่งสินค้า
    เลือกวิธีจัดส่งสินค้าเป็น Kerry
    ตรวจสอบค่าจัดส่งสินค้าของ Kerry เท่ากันกับ 50.00 บาท
    ตรวจสอบราคารวมที่ต้องชำระเงิน ต้องเท่ากันกับ 8,679.20 บาท
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle ในตะกร้า ต้องเท่ากับ 86 แต้ม

*** Keywords ***
ค้นหาสินค้าด้วย คำค้นหา Bicycle
    Open Browser    url=${URL}    browser=${BROWSER}
    Input Text    id:txtSearch    Bicycle
    Click Element    id:btnSearch    

ตรวจสอบผลการค้นหา Balance Training Bicycle 
    Element Should Contain    id=(รอพี่นัทมาใส่)    Balance Training Bicycle 
    
       

