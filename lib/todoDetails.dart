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
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['userId']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight:
                    FontWeight.bold,
                    fontSize: 20)),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                  child: Divider(
                    thickness: 1,
              )),
              Align(
                alignment: Alignment.topLeft,
                child: Text("${todo['id']}", style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                  child: Divider(
                    thickness: 1,
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
                    thickness: 1,
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
