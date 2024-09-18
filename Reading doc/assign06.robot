*** Variables ***
&{API_RESPONSE}    status=200    headers={'Content-Type': 'application/json'}    body={'key': 'value'}

*** Test Cases ***
Test API Response Validation
    Load API Validation Rules
#คำสั่งที่โหลด schema(โครงสร้างข้อมูล) หรือ validation rules ล่วงหน้าเพื่อใช้ในการตรวจสอบ API response.
    Validate API Response    &{API_RESPONSE}    200    True
#สามารถตรวจสอบว่า response ที่ได้รับจาก API มีค่า HTTP status code ถูกต้องตามที่คาดหวัง (เช่น 200 หรือ 404)

#เป็นเครื่องมือที่มีประโยชน์ในการช่วยตรวจสอบความถูกต้องของข้อมูลที่ได้รับจาก API response ทำให้การรับส่งข้อมูลระหว่างระบบเป็นไปอย่างราบรื่นและลดความเสี่ยงจากการใช้ข้อมูลที่ไม่ถูกต้อง

#Ex : บริษัทมีระบบ API ที่รับข้อมูลการลงทะเบียนผู้ใช้ใหม่ และต้องการตรวจสอบว่าการตอบสนองจาก API นั้นถูกต้องตามที่คาดหวังหรือไม่
#api_response: ข้อมูลการตอบสนองจาก API ซึ่งประกอบด้วย headers, body, และ status code
#response_code: ค่าที่คาดหวังของ HTTP status code เช่น 200 สำหรับการลงทะเบียนสำเร็จ