Query9=  select customer.cus_name ,customer.cus_gender 
               from customer where customer.cus_name like 'A%' or customer.cus_name like '%A';

cursorObject.execute(Query9)
output = cursorObject.fetchall()
   
    
output_df = pd.DataFrame(output, columns=['CUS_NAME','CUS_GENDER'])
output_df