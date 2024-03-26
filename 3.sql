Query4= select `orders`.*,product.pro_name 
               from `orders` ,product_details,product 
               where `orders`.cus_id=2 and `orders`.prod_id=product_details.prod_id and product_details.pro_id=product.pro_id;

cursorObject.execute(Query4)
output = cursorObject.fetchall()


output_df = pd.DataFrame(output, columns=['ORD_ID','ORD_AMOUNT','ORD_DATE','CUS_ID','PROD_ID','PRO_NAME'])
output_df