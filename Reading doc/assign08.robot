*** Variables ***
&{AGGREGATION_CONFIG}    data_sources=[bank_accounts, investment_portfolios]    rules=Create Dictionary sum=amount    output_format=csv

*** Test Cases ***
Test Financial Data Aggregation
    Load Financial Data Configuration    &{AGGREGATION_CONFIG}
#ตั้งค่าการรวมข้อมูลทางการเงินก่อน
    Aggregate Financial Data    &{AGGREGATION_CONFIG}    True
#รวมข้อมูลทางการเงินตามกฎที่กำหนดและเลือกให้รวมยอดรวมในผลลัพธ์สุดท้าย


#เป็นเครื่องมือที่มีประโยชน์สำหรับการรวมข้อมูลทางการเงินจากหลายแหล่ง โดยใช้กฎการรวมที่กำหนดไว้ล่วงหน้า และสามารถเลือกได้ว่าต้องการรวมยอดรวมในผลลัพธ์หรือไม่ ช่วยให้การวิเคราะห์ข้อมูลทางการเงินมีความชัดเจนและเป็นระบบมากขึ้น

#Ex : บริษัทต้องการรวบรวมข้อมูลทางการเงินจากแหล่งข้อมูลหลายแหล่ง เช่น บัญชีธนาคาร, การลงทุน, และยอดขาย เพื่อทำรายงานสรุปผลลัพธ์ทางการเงินประจำเดือน
#data_sources: แหล่งข้อมูลที่ใช้ในการรวบรวมข้อมูล เช่น บัญชีธนาคาร, การลงทุน, และยอดขาย
#rules: กฎการรวมรวมข้อมูล เช่น การหาผลรวม (sum) ของยอดเงินและจำนวนการลงทุน, การคำนวณค่าเฉลี่ย (average) ของผลตอบแทนการลงทุน
#output_format: รูปแบบของผลลัพธ์ เช่น JSON