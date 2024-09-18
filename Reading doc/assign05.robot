*** Variables ***
${CUSTOMER_DATA}    Create Dictionary
    personal_info=Create Dictionary    name=John Doe    email=john.doe@example.com    phone=1234567890
    account_info=Create Dictionary    account_id=AB1234    balance=1000.00    status=active
    preferences=Create List    email_notifications    sms_alerts

*** Test Cases ***
TC001
    ${customer_data}=    Get Customer Data
#ฟังก์ชันที่ดึงข้อมูลลูกค้าจากแหล่งข้อมูล.
    Generate Customer Profile    ${customer_data}    pdf
#สร้างโปรไฟล์ลูกค้าจากข้อมูลที่ดึงมาและส่งออกในรูปแบบ PDF


#เป็นเครื่องมือที่ช่วยในการจัดการและสร้างโปรไฟล์ลูกค้าจากข้อมูลที่ซับซ้อน โดยสามารถเลือกได้ว่าจะสร้างโปรไฟล์ในรูปแบบใด เช่น PDF, JSON, หรือ HTML. การใช้งานนี้ช่วยให้การจัดการและการนำเสนอข้อมูลลูกค้าเป็นไปอย่างมีประสิทธิภาพและตรงตามความต้องการ

#Ex : คุณต้องการสร้างโปรไฟล์ลูกค้าสำหรับการเก็บข้อมูลในระบบภายใน และต้องการส่งออกโปรไฟล์ในรูปแบบ PDF
#ข้อมูลลูกค้าที่ต้องการสร้างโปรไฟล์
#รูปแบบของโปรไฟล์ที่ต้องการ