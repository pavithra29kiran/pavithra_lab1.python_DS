Query10=   select sum(`orders`.ord_amount) as Amount 
                from `orders` inner join customer on `orders`.cus_id=customer.cus_id where customer.cus_gender='M';

cursorObject.execute(Query10)
output = cursorObject.fetchall()


print("Amount is",output);