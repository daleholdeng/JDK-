import 'package:flutter/material.dart';

class MyDropdownTextField extends StatefulWidget {
  const MyDropdownTextField({Key? key}) : super(key: key);


  @override
  State<MyDropdownTextField> createState() => _MyDropdownTextFieldState();
}

class _MyDropdownTextFieldState extends State<MyDropdownTextField> {
  String DropdownValue = 'User Type';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          value: DropdownValue,
          icon: Icon(Icons.supervised_user_circle_outlined),
          style: const TextStyle(
            color: Colors.black
          ),
          underline: Container(
            height: 10,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              DropdownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
                value: 'Trainee',
                child: Text('Trainee'),),
            DropdownMenuItem<String>(
              value: 'Manager',
              child: Text('Manager'),),
            DropdownMenuItem<String>(
              value: 'Human Resources',
              child: Text('Human Resources'),),
          ],

      )
    );
  }
}