*** Variables ***
&{ACCESS_CONFIG}    roles=[admin, user, guest]    rules=Create Dictionary admin=all_access    user=limited_access    guest=view_only    default_access=guest

*** Test Cases ***
Test Access Control Configuration
    Define User Roles    admin
#กำหนดบทบาทผู้ใช้
    Load Access Rules    &{rules}
#โหลดกฎการเข้าถึงที่กำหนดไว้
    Configure Access Control    &{ACCESS_CONFIG}    True
#ตั้งค่าการควบคุมการเข้าถึงและนำไปใช้


#เป็น keyword ที่ใช้สำหรับการตั้งค่าการควบคุมการเข้าถึงในระบบ โดยการกำหนดบทบาท (roles) และกฎการเข้าถึง (access rules) เพื่อควบคุมสิทธิ์ในการเข้าถึงข้อมูลและฟังก์ชันต่าง ๆ ของระบบ

#Ex : บริษัทซอฟต์แวร์ต้องการจัดการสิทธิ์การเข้าถึงของผู้ใช้ภายในระบบ โดยมีหลายบทบาท เช่น ผู้ดูแลระบบ (admin), ผู้ใช้ (user), และแขก (guest) ซึ่งต้องการตั้งค่าการเข้าถึงสำหรับแต่ละบทบาท
#roles: รายการบทบาทที่กำหนดการเข้าถึงในระบบ
#rules: กฎการเข้าถึงสำหรับแต่ละบทบาท เช่น ผู้ดูแลระบบสามารถแก้ไขข้อมูลได้ทั้งหมด, ผู้ใช้ไม่สามารถแก้ไขข้อมูลได้, และแขกมีการเข้าถึงที่จำกัด
#default_access: บทบาทเริ่มต้นสำหรับผู้ที่ไม่ได้ระบุไว้