import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Date",
    home: HomePage(),
   );
  }

}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(2000), 
      lastDate: DateTime(2025)
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: MaterialButton(onPressed:_showDatePicker,
        child:const Padding(padding:EdgeInsets.all(20.0),
        child:Text('Choose Data',style: TextStyle(color: Colors.white,fontSize: 20),)
        ),
        color: Colors.purple,
        
        ),
        
      ),
    );
  }
}