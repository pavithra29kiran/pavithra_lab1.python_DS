Query8=  select supplier.supp_id,supplier.supp_name,customer.cus_name,rating.rat_ratstars 
               from rating inner join supplier on rating.supp_id=supplier.supp_id 
               inner join customer on rating.cus_id=customer.cus_id order by rating.rat_ratstars desc limit 3;

cursorObject.execute(Query8)
output = cursorObject.fetchall()


output_df = pd.DataFrame(output, columns=['SUPP_ID','SUPP_NAME','CUS_NAME','RAT_RATSTARS'])
output_df