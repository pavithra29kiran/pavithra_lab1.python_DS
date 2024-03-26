Query7=   select product.pro_id,product.pro_name 
               from `orders` inner join product_details on product_details.prod_id=`orders`.prod_id 
               inner join product on product.pro_id=product_details.pro_id where `orders`.ord_date>"2021-10-05";

cursorObject.execute(Query7)
output = cursorObject.fetchall()


output_df = pd.DataFrame(output, columns=['PRO_ID','PRO_NAME'])
output_df