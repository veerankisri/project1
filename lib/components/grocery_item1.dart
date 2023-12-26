import 'package:flutter/material.dart';


class groceryitem1 extends StatelessWidget {
final String itemName;
final double itemPrice;
final String imagePath;
final color;
final Function()? onPressed;


   groceryitem1({super.key,
  required this.itemName,
  required this.itemPrice,
  required this.imagePath,
  required this.color,
  required this.onPressed,
  
  
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath,
            height: 80,
            ),
            Text(itemName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('\$$itemPrice/kg',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),

                const SizedBox(
                  width: 20,
                ),
                
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5)

                  ),
                  padding: const EdgeInsets.all(0.5),
                  child: IconButton(
                    
                    onPressed: onPressed,
                     icon: const Icon(Icons.add,
                     color: Colors.white,)),
                ),
              ],
            )
            

          ],
        ),
      ),
    );
  }
}