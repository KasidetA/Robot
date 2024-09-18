*** Variables ***
${CONFIG}    &{query_params}    Create Dictionary    data_source=sql_db    filter_criteria=date_range    sort_order=asc

*** Test Cases ***
Test Fetch Report Data
    Set Global Configuration
#ใช้เพื่อหลีกเลี่ยงข้อมูลที่ผิดพลาด
    ${return_format}    Set Variable    json
    Fetch Report Data    ${CONFIG}    ${return_format}
#ทำให้สามารถดึงข้อมูลจากแหล่งข้อมูลต่าง ๆ เช่น ฐานข้อมูล, API, หรือไฟล์ ได้ตามข้อกำหนดที่ระบุ เช่น ตัวกรอง, ช่วงเวลา, และลำดับการจัดเรียง

#Ex : คุณต้องดึงข้อมูลยอดขายรายเดือนจากฐานข้อมูล SQL เพื่อสร้างรายงานยอดขายสำหรับการประชุม
#Set Global Configuration: กำหนดค่าพื้นฐานสำหรับการดึงข้อมูล
#Fetch Report Data: ดึงข้อมูลจากฐานข้อมูลตามพารามิเตอร์ที่กำหนด (เช่น ฐานข้อมูล SQL, filter criteria, sorting order)
#Test Case: เรียกใช้ Fetch Report Data เพื่อนำข้อมูลรายงานยอดขายจากฐานข้อมูล SQL และบันทึกในรูปแบบ JSON