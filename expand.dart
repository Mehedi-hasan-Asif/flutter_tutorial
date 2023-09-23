import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: <Widget>
          [
            
              
               Container(
            child: Center(
              child: Text(
                'First widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
             color: Colors.blue,
            height: 100,
            width: 200,
          ),
           
              
             
              
            
            
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                color: Colors.orange,
                
              ),
            )
           

          ],
        ),
      ),
    ),
   );
  }

}