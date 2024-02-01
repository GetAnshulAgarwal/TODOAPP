import 'package:flutter/material.dart';
import 'package:todoapp/util/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",
                ),
              ),
              //button -> save + cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //save button
                  MyButton(text: "Save", onPressed: onSave),

                  const SizedBox(width: 9),

                  //cancel button
                  MyButton(text: "Cancel", onPressed: onCancel),
                ],
              )
            ],
          ),
        ));
  }
}
