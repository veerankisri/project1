import 'package:flutter/material.dart';
import 'package:project1/components/cart_model1.dart';
import 'package:provider/provider.dart';







class bill_page extends StatelessWidget {
  const bill_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        backgroundColor: Colors.deepPurple,
        
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Bill',
            style: TextStyle(
              color: Colors.white,
            ),textAlign: TextAlign.center,),
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
         icon: const Icon(Icons.arrow_back,
        color: Colors.white,) ),
      ),

    body :  Column(
      children: [
        Consumer<cartItems1>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                itemCount: value.cart1.length,
                padding: const EdgeInsets.all(12.0),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: ListTile(
                        leading: Image.asset(value.cart1[index][2]),
                          title: Text(value.cart1[index][0]),
                          subtitle: Text('\$${value.cart1[index][1]}'),
                          trailing: IconButton(

                            icon: const Icon(Icons.cancel),
                           onPressed: () => Provider.of<cartItems1>(context, listen: false).removeItemFromCart(index),),
                        ),
                    ),
                  );
              },),

              
            );
            
        },

        
        
        ),
        Consumer<cartItems1>(builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(8),
                ),
              
                padding: const EdgeInsets.all(24),
                         
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Total Price',
                        style: TextStyle(
                          color: Color.fromARGB(255, 195, 226, 196),
                        ),),
                        const SizedBox(
                          height: 4,
                        ),
                        Text('\$${value.CalculateInfo()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade100),
                           borderRadius: BorderRadius.circular(12)
                      ),
                      padding: const EdgeInsets.all(12),
                      
                      child: const Row(
                        children: [
                          Text('Pay Now',
                          style: TextStyle(
                            color: Colors.white
                          ),),

                          Icon(Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.white,)
                        ],
                      ))
                  ],
                ),
                
              ),
            );
            
        },

        
        
        ),

       Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')), 
                
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cancel',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ) ),
              ),

              Spacer(),


               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')), 
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Submit',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ) ),
               ),

             ],
           ),
           SizedBox(
            height: 10,
           ),


               
        
        
      ],
    ),

    
    );

  }
}