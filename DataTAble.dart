import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DataTable',
      home:HomePage(),
    );
  }

}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
      child: DataTable(columns: [
        DataColumn(label: Text("Name"),),
        DataColumn(label: Text("Age"),),
        DataColumn(label: Text("Roll"))
      ], rows: [
        DataRow(cells: [
          DataCell(Text("Rafin")),
          DataCell(Text("22")),
          DataCell(Text("Students")),
        ]),
        DataRow(cells: [
          DataCell(Text("Asif")),
          DataCell(Text("2")),
          DataCell(Text("Students")),
        ]),
        DataRow(cells: [
          DataCell(Text("Rafia")),
          DataCell(Text("3")),
          DataCell(Text("Students")),
        ]),

      ]),
      ),
    );
  }
}