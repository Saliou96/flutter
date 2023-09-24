import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Add task"),
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(hintText: 'Title'),
          ),
          SizedBox(height: 20),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(hintText: 'Description'),
            keyboardType: TextInputType.multiline,
            minLines: 4,
            maxLines: 10,
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                SubmitData();
              },
              child: Text("Submit"))
        ],
      ),
    );
  }

  Future<void> SubmitData() async {
    final title = titleController.text;
    final description = descriptionController.text;
    final url = "https://api.nstack.in/v1/todos";
    final body = {
      "title": title,
      "description": description,
      "is_completed": false
    };
    final uri = Uri.parse(url);
    final res = await http.post(uri,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});

    if (res.statusCode == 201) {
      titleController.text = '';
      descriptionController.text = '';
      successMessage("New task added!");
    }
    else{
      errorMessage("please complete all fields!");
    }
  }

  void successMessage( String message) {
    final snackBar = SnackBar(content: Text(message),backgroundColor: Colors.green,);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

    void errorMessage( String message) {
    final snackBar = SnackBar(content: Text(message),backgroundColor: Colors.red,);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
