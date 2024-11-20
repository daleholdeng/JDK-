import 'package:flutter/material.dart';
import '../Pages/ViewPage.dart';
import '../Components/MyButton.dart';
import '../Components/MyTextField.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FocusNode focus1 = FocusNode();
  final FocusNode focus2 = FocusNode();


  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
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

          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset('assets/Logo.png', width: 150, height: 150,),
                    ),
                    const SizedBox(height: 10,),
                    Text('Launchpad Timesheet Tracker',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Poppins'
                      ),
                    ),

                    const SizedBox(height: 30,),
                    // Email TextField
                    MyTextField(
                      focusNode: focus1,
                      controller: emailController,
                      hintText: 'Email',
                      textfieldIcon: Icons.email,
                      obscureText: false,

                    ),

                    const SizedBox(height: 20,),
                    // Password Text Field
                    MyTextField(
                      focusNode: focus2,
                      controller: passwordController,
                      hintText: 'Password',
                      textfieldIcon: Icons.password,
                      obscureText: true,
                    ),

                    const SizedBox(height: 40,),
                    MyButton(
                        color: Color(0xff009fe0),
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login Successful!')),
                          );

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ViewPage()));
                        },
                        width: 320,
                        height: 50,
                        btnHint: 'Login')


                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
