import 'package:flutter/material.dart';
import 'package:project1/components/cart_model1.dart';
import 'package:project1/components/grocery_item1.dart';
import 'package:project1/thirdpage.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.deepPurple,
        
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Choose Vegetables',
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

      
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        const SizedBox(
          height: 48,
        ),

       
           
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 24.0),
           child: Text('Daily',
                   style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
         ), 

          const Padding(
           padding: EdgeInsets.symmetric(horizontal: 24.0),
           child: Text('Grocery Items',
                   style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
         ),
            
            const SizedBox(
              height: 15,
            ),

             Padding(
               padding: const EdgeInsets.only(left : 24.0),
               child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Text('Vegetables',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                  
                    ),),
                    
                  ),
             ),

           Expanded(
            child: Consumer<cartItems1>(builder: (context, value, child) {
              return  GridView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: value.shopItems1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.2) , 
              itemBuilder:(context, index) {
                return groceryitem1(
                  itemName: value.shopItems1[index][0],
                  itemPrice: value.shopItems1[index][1],
                  imagePath: value.shopItems1[index][2],
                  color: value.shopItems1[index][3],
                  onPressed: () {
                    Provider.of<cartItems1>(context, listen: false).addItemToCart(index);
                  },




                );
              },);
            },)
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

              const Spacer(),


               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const thirdpage(),)), 
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Next',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ) ),
               ),

             ],
           ),
           const SizedBox(
            height: 10,
           ),

           

               
        
          


        ],
      )
      );
      
    
  }
}