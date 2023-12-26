import 'package:flutter/material.dart';
import 'package:project1/components/homepage.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      

      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 120,left: 80,right: 80,bottom: 40),
          child: Image.asset('lib/images/real2.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(left :25.0,right: 25,top: 25,bottom: 10),
          child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Fresh',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
          
              ),
              textAlign: TextAlign.center,),
          
              SizedBox(width: 15,),
              
               Text('groceries',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),),
          
              SizedBox(width: 15,),
          
              
               Text('to your',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
            ],

            
          ),

        ),
         Text('doorstep.',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),

              Spacer(),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Text('Start Shopping',
                  style: TextStyle(
                    color: Colors.white,
                
                  ),),
                  
                ),
              ),

              Spacer(),

              Text('Fresh items everyday',
              style: TextStyle(
                fontSize: 16,
               color: Colors.grey,
              ),),
              Spacer(),
        ],
      ),
      //Fresh Groceries at your door step,


      //logo

      

      //get started


      //fresh items everyday
    );
  }
}