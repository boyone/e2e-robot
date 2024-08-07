*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://192.168.3.115:3000/product/list
${BROWSER}    gc

*** Test Cases ***
ทดสอบ สั่งซื้อสินค้าจัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    ค้นหาสินค้าด้วย คำค้นหา Bicycle
    ตรวจสอบผลการค้นหา Balance Training Bicycle
    เลือกดูสินค้า Balance Training Bicycle
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle
    เพิ่ม Balance Training Bicycle ลงตะกร้า
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle ในตะกร้า
    ใส่ที่อยู่จัดส่งสินค้า
    เลือกวิธีจัดส่งสินค้าเป็น Kerry
    ตรวจสอบค่าจัดส่งสินค้าของ Kerry เท่ากันกับ 50.00 บาท
    เลือกช่องทางการชำระเงินแบบ VISA Credit Card
    ตรวจสอบราคารวมที่ต้องชำระเงิน ต้องเท่ากันกับ 8,679.20 บาท
    ยืนยัน OTP
    ตรวจสอบหมายเลขพัสดุ
    ยืนยันการส่งการแจ้งเตือนด้วย email และ เบอร์โทรศัพท์












*** Keywords ***
ค้นหาสินค้าด้วย คำค้นหา Bicycle
    Open Browser    url=${URL}    browser=${BROWSER}
    Input Text    id:search-product-input    Bicycle
    Click Element    id:search-product-btn    

ตรวจสอบผลการค้นหา Balance Training Bicycle
    Wait Until Element Is Visible    id:product-card-name-1
    Element Should Contain    id:product-card-name-1    Balance Training Bicycle 
    
เลือกดูสินค้า Balance Training Bicycle
    Click Element    id:product-card-name-1

ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle
    Wait Until Element Is Visible    id:product-detail-point
    Element Text Should Be    id:product-detail-point    43 Points

เพิ่ม Balance Training Bicycle ลงตะกร้า
    Click Button    id:product-detail-add-to-cart-btn

ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ Balance Training Bicycle ในตะกร้า
    Click Button    id:header-menu-cart-btn
    Wait Until Element Is Visible    id:product-1-point
    # Element Text Should Be    id:product-1-point    43 Points

ใส่ที่อยู่จัดส่งสินค้า
    Click Link    id:shopping-cart-checkout-btn
    Input Text    id:shipping-form-first-name-input    พงศกร
    Input Text    id:shipping-form-last-name-input    รุ่งเรืองทรัพย์
    Input Text    id:shipping-form-address-input    189/413 หมู่ 2
    Select From List By Label    id:shipping-form-province-select    สมุทรปราการ
    Select From List By Label    id:shipping-form-district-select    เมืองสมุทรปราการ
    Select From List By Label    id:shipping-form-sub-district-select    แพรกษาใหม่
    Element Attribute Value Should Be    id:shipping-form-zipcode-input    value    10280 
    Input Text    id:shipping-form-mobile-input    0909127991

เลือกวิธีจัดส่งสินค้าเป็น Kerry
    Click Element    id:shipping-method-1-card

ตรวจสอบค่าจัดส่งสินค้าของ Kerry เท่ากันกับ 50.00 บาท
    Element Text Should Be    id:shipping-method-1-fee    ฿50.00

เลือกช่องทางการชำระเงินแบบ VISA Credit Card
    Click Element    id:payment-credit-input
    Input Text    id:payment-credit-form-fullname-input
    ...    พงศกร รุ่งเรืองทรัพย์
    Input Text    id:payment-credit-form-card-number-input
    ...    4719700591590995
    Input Text    id:payment-credit-form-expiry-input
    ...    0226
    Input Text    id:payment-credit-form-cvv-input
    ...    752

ตรวจสอบราคารวมที่ต้องชำระเงิน ต้องเท่ากันกับ 8,679.20 บาท
    Element Should Be Visible    id:order-summary-total-payment-price

ยืนยัน OTP
    Click Button    id:payment-now-btn
    Wait Until Element Is Visible    id:otp-input
    Click Button    Request OTP
    Input Text    id:otp-input    124532
    Click Button    PAY NOW

ตรวจสอบหมายเลขพัสดุ
    Wait Until Element Is Visible    id:order-success-tracking-id
    Element Should Contain    id:order-success-tracking-id    KR-
    ${tracking-id}=    Get Text    id:order-success-tracking-id
    Should Match Regexp    ${tracking-id}    ^KR-\\d{9}$

ยืนยันการส่งการแจ้งเตือนด้วย email และ เบอร์โทรศัพท์
    Input Text    id:notification-form-email-input    ponsakorn@gmail.com
    Input Text    id:notification-form-mobile-input    0909127991
    Click Button     id:send-notification-btn
    Handle Alert
    Location Should Be    ${URL}