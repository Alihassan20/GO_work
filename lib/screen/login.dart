import 'package:flutter/material.dart';
import 'package:go_working/screen/pincode.dart';
import 'package:go_working/screen/signup.dart';

import 'home.dart';
import 'otp_screen.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool visible = true;
  final _passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/backk.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: ListView(
          children: [
           const Padding(
             padding:  EdgeInsets.only(top: 60,left: 40),
             child:   Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20),),
           ),
            const Padding(
              padding: EdgeInsets.only(top: 8,left: 40),
              child: Text("Spacing Co-Working",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child: Form(
                key:_formKey ,
                  child: Column(
                    children: [
                      TextFormField(

                        style:const  TextStyle(color: Colors.white),
                        decoration:  InputDecoration(
                          focusedBorder:const  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.white,
                              )),
                          errorBorder:const  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          border:const   OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.white,
                              )),
                          labelText: "E_Mail",
                          labelStyle:const  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val!.isEmpty || !val.contains('@')) {
                            return 'Valid Email Address';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          _email = val!;
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        style:const  TextStyle(color: Colors.white),
                        decoration:  InputDecoration(
                          focusedBorder:const  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.white,
                              )),
                          errorBorder:const  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                          filled: true,
                          suffixIcon: GestureDetector(
                            child: Icon(
                              visible
                                  ?Icons.visibility
                                  :  Icons.visibility_off,
                              color: Colors.white,
                            ),
                            onTap: () {
                              setState(() {

                                visible = !visible;
                              });
                            },
                          ),
                          fillColor: Colors.white.withOpacity(0.2),
                          border:const  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.white,
                              )),
                          labelText: "Password",
                          labelStyle:const  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        obscureText: visible,
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (val) {
                          if (val!.isEmpty || val.length < 5) {
                            return 'Password Is too Short';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          _password = val!;
                        },
                      ),
                     const  SizedBox(height: 18),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return const PinCodeText();
                          }));
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
                          child: const Text("Forgot Password ?",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ButtonTheme(
                height: 47,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: RaisedButton(
                    color: Colors.white70,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_){
                        return Home();
                      }));
                    },child:const Text("Login",style: TextStyle(color: Colors.white70,fontSize: 20),) ,)),
            ),
            const SizedBox(height: 10),
            const Center(child:  Text("or continue via",style: TextStyle(color: Colors.white),)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:const  BorderSide(color: Colors.white)
                        )
                      )


                    ),
                  child:const Text("   Google   ",style: TextStyle(color: Colors.white),)

                ),
                TextButton(onPressed: (){},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:const  BorderSide(color: Colors.white)
                            )
                        )


                    ),
                    child:const Text(" FaceBook ",style: TextStyle(color: Colors.white),)

                ),

              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Are You Come First Time ?",style: TextStyle(color: Colors.white),),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                      return const SignUp();
                    }));
                  },
                      child:const  Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
