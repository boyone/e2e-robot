*** Settings ***
Library    SeleniumLibrary
Resource    ./resource.resource
Test Template    สั่งซื้อสินค้า

*** Variables ***
${URL}    http://192.168.3.115:3000/product/list
${BROWSER}    gc

*** Test Cases ***
ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    Bicycle    product-card-name-1    Balance Training Bicycle
    ...    product-detail-point    43 Points    
    ...    Balance Training Bicycle    product-1-point
    ...    พงศกร    รุ่งเรืองทรัพย์    
    ...    189/413 หมู่ 2    สมุทรปราการ
    ...    เมืองสมุทรปราการ    แพรกษาใหม่
    ...    10280    0909127991
    ...    shipping-method-1-card

ทดสอบ สั่งซื้อสินค้า 43 Piece dinner Set จัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    dinner
    ...    product-card-name-2    43 Piece dinner Set
    ...    product-detail-point    4 Points
    ...    43 Piece dinner Set
    ...    product-2-point
    ...    พงศกร    รุ่งเรืองทรัพย์    
    ...    189/413 หมู่ 2    สมุทรปราการ
    ...    เมืองสมุทรปราการ    แพรกษาใหม่
    ...    10280    0909127991
    ...    shipping-method-1-card

