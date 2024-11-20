import 'package:flutter/material.dart';
import 'package:jdk_tracker/Database/database_service.dart';
import '../Components/MyButton.dart';
import '../Components/MyTextField.dart';
import '../Pages/home_page.dart';

import '../Components/MyDropdownTextfield.dart';
import '../models/task.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage ({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final DatabaseService _databaseService = DatabaseService.instance;
  List<String> items = ['Trainee', 'Manager'];
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final managerController = TextEditingController();
  final manageremailController = TextEditingController();
  final deptController = TextEditingController();
  final userTypeController = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  final FocusNode focusNode5 = FocusNode();
  final FocusNode focusNode6 = FocusNode();
  final FocusNode focusNode7 = FocusNode();

@override
Widget build(BuildContext context) {

  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF)
          ),
        ),
        toolbarHeight: 70,
        title: Text(
          'Registration Page',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF009FE0),
              fontSize: 30,
              fontFamily: 'Poppins'
          ),
        ),
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFFFFFF),
                Color(0xff009fe0),
                Color(0xff0051a0),
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset('assets/Logo.png', width: 150, height: 150,),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                        focusNode: focusNode1,
                        controller: nameController,
                        hintText: 'Fullname',
                        textfieldIcon: Icons.person,
                        obscureText: false,
                        height: 50,
                        width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode2,
                      controller: passController,
                      hintText: 'Password',
                      textfieldIcon: Icons.password,
                      obscureText: true,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode3,
                      controller: emailController,
                      hintText: 'Email',
                      textfieldIcon: Icons.email,
                      obscureText: false,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode3,
                      controller: managerController,
                      hintText: "Manager's Name",
                      textfieldIcon: Icons.person_2_outlined,
                      obscureText: false,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode5,
                      controller: manageremailController,
                      hintText: "Manager's Email",
                      textfieldIcon: Icons.email_outlined,
                      obscureText: false,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode6,
                      controller: deptController,
                      hintText: 'Department',
                      textfieldIcon: Icons.people,
                      obscureText: false,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyTextField(
                      focusNode: focusNode7,
                      controller: userTypeController,
                      hintText: 'User Type (HR, Trainee, Manager)',
                      textfieldIcon: Icons.personal_injury_sharp,
                      obscureText: false,
                      height: 50,
                      width: 320,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    MyButton(
                    onTap: (){
                        _databaseService.register(nameController.text,emailController.text,passController.text,managerController.text,deptController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Registration Success!!'))
                      );
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                      },
                        width: 320,
                        height: 50,
                        color: Color(0xFFAAFF00),
                        btnHint: 'Register')

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    ),
  );
}
  Widget _taskList() {
    return FutureBuilder<List<Task>>(
      future: _databaseService.getTask(), // Ensure this fetches a List<Task>
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData && snapshot.data != null) {
          final tasks = snapshot.data!;
          if (tasks.isEmpty) {
            return Center(child: Text('No tasks found.'));
          }
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return ListTile(
                title: Text(task.fn), // Display the full name (fn field)
                subtitle: Text(
                  'Email: ${task.email}\nDept: ${task.dept}', // Additional details
                ),
                isThreeLine: true,
              );
            },
          );
        } else {
          return Center(child: Text('No tasks available.'));
        }
      },
    );
  }
}