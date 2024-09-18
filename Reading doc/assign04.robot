*** Variables ***
${PIPELINE_CONFIG}    Create Dictionary    stages=Extract Data,Transform Data,Load Data    input_format=csv    output_format=json

*** Test Cases ***
Test Data Pipeline Processing
    Load Pipeline Configuration
#ตั้งค่าการกำหนดค่า pipeline ที่มีขั้นตอนต่างๆ
    Process Data Pipeline    ${PIPELINE_CONFIG}    True
#ช่วยให้สามารถจัดการและดำเนินการกับ pipeline ของข้อมูลที่มีหลายขั้นตอน เช่น การดึงข้อมูล (Extract), การเปลี่ยนแปลงข้อมูล (Transform), และการโหลดข้อมูล (Load)

#เป็นเครื่องมือที่ช่วยในการจัดการกับ pipeline ของข้อมูลที่มีหลายขั้นตอน โดยสามารถตั้งค่าขั้นตอนการทำงานและรูปแบบข้อมูลได้อย่างยืดหยุ่น พร้อมทั้งเลือกว่าจะประมวลผลขนานหรือไม่. การใช้งานนี้ช่วยให้กระบวนการประมวลผลข้อมูลเป็นไปอย่างมีประสิทธิภาพและสามารถควบคุมได้ง่าย

#Ex : คุณต้องการประมวลผลข้อมูลการขายจากหลายแหล่งข้อมูลเพื่อสร้างรายงานสรุปยอดขายและแนวโน้ม. ข้อมูลที่ได้จะถูกใช้ในการวิเคราะห์เชิงกลยุทธ์ของบริษัท
#PIPELINE_CONFIG: การตั้งค่า Data Pipeline ประกอบด้วยขั้นตอน (stages) เช่น การดึงข้อมูล, การแปลงข้อมูล, และการโหลดข้อมูล
#input_format: รูปแบบของข้อมูลนำเข้า
#output_format: รูปแบบของข้อมูลที่ออก
#execute_in_parallel:   True;ตั้งค่าให้ประมวลผลขั้นตอนในโหมดคู่ขนาน
#                       False;ตั้งค่าให้ประมวลผลขั้นตอนในโหมดที่เป็นลำดับ (sequential)