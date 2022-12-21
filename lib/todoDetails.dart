import 'package:flutter/material.dart';

class TodoDetails extends StatelessWidget {
  final dynamic todo;
  const TodoDetails({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            const Icon(Icons.book),
            Text("Todo Detail ${todo['id']}")
          ],
        ),
      ),
      body: InkWell(
        child: Card(
          margin: const EdgeInsetsDirectional.only(start: 2),
          elevation: 100,
          shadowColor: Colors.pink,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: Colors.red)
          ),
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 40),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['userId']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight:
                    FontWeight.bold,
                    fontSize: 20)),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6),
                  child: Divider(
                    thickness: 2,
              )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['id']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6),
                  child: Divider(
                    thickness: 2,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['title']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                  child: Divider(
                    thickness: 2,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['completed']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
            ],
          )
          ),
        ),
      )
    );
  }
}
