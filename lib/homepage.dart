import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:semi_final/todoDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var mainUrl = "https://jsonplaceholder.typicode.com/todos";
  List todos = <dynamic>[];

  @override
  void initState(){
    super.initState();
    getTodos();
  }

  getTodos() async{
    var url = mainUrl;
    var response =await http.get(Uri.parse(url));

  setState(() {
    todos = convert.jsonDecode(response.body) as List<dynamic>;
  });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.code),
            Text("Semi Final Hands On")
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return InkWell(
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 3),
                child: Card(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  color: Colors.black,
                  child: ListTile(
                    title: Text(todos[index]['title'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400)
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          TodoDetails(todo: todos[index])));
                    },
                  )
                )
                ),
            );
          },)
    );
  }
}
