Query6= select category.* 
               from `orders` inner join product_details on `orders`.prod_id=product_details.prod_id 
               inner join product on product.pro_id=product_details.pro_id 
               inner join category on category.cat_id=product.cat_id having min(`orders`.ord_amount);

cursorObject.execute(Query6)
output = cursorObject.fetchall()


output_df = pd.DataFrame(output, columns=['CAT_ID','CAT_NAME'])
output_df