import 'package:flutter/material.dart';

import 'otp_screen.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  final String _name = '';
  String _password = '';
  String _confirmPass = '';
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
              child:   Text("Register With Us",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8,left: 40),
              child: Text("Spacing Co-Working",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Form(
                  key:_formKey ,
                  child: Column(
                    children: [
                      TextFormField(
                        key: const ValueKey("name"),
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
                          labelText: "Full Name",
                          labelStyle:const  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val!.isEmpty ||val.length < 10) {
                            return 'Valid Email Address';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          _email = val!;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        key: const ValueKey("Email"),
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
                      const SizedBox(height: 10),
                      TextFormField(
                        key: const ValueKey("password"),
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
                      const SizedBox(height: 10),
                      TextFormField(
                        key: const ValueKey("Confirm"),
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
                          labelText: "Confirm Password",
                          labelStyle:const  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        obscureText: visible,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (val) {
                          if (val!.isEmpty || _password != _confirmPass) {
                            return "please enter match password";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          _confirmPass = val!;
                        },
                      ),
                      const  SizedBox(height: 15),
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
                    onPressed: (){},child:const Text("Login",style: TextStyle(color: Colors.white70,fontSize: 20),) ,)),
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
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Do You Have Account ?",style: TextStyle(color: Colors.white),),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child:const  Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))
              ],
            )

          ],
        ),
      ),
    );
  }
}
