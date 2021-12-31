import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

// int val = 0;
class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent.withOpacity(0.5),
          elevation: 0,
          title: const Text("Otp Verification"),
        ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                child: Wrap(
                  children: const[
                     Text("You Have Get 5 Digit OTP on your registered email address , enter you OTP"
                      ,style:TextStyle(color: Colors.white,fontSize: 18) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 50,
                      child:const TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        style:  TextStyle(color: Colors.white),
                        decoration:   InputDecoration(
                              disabledBorder:OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(width: 1,color: Colors.white),),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            border:   OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                )),
                            hintText: "0",
                           counterText: "",
                            hintStyle:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          keyboardType:TextInputType.number,

                      )
                    ),
                    Container(
                        height: 70,
                        width: 50,
                        child:const TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style:  TextStyle(color: Colors.white),
                          decoration:   InputDecoration(
                            disabledBorder:OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            border:   OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                )),
                            hintText: "0",
                            counterText: "",
                            hintStyle:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          keyboardType:TextInputType.number,

                        )
                    ),
                    Container(
                        height: 70,
                        width: 50,
                        child:const TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style:  TextStyle(color: Colors.white),
                          decoration:   InputDecoration(
                            disabledBorder:OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            border:   OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                )),
                            hintText: "0",
                            counterText: "",
                            hintStyle:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          keyboardType:TextInputType.number,

                        )
                    ),
                    Container(
                        height: 70,
                        width: 50,
                        child:const TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style:  TextStyle(color: Colors.white),
                          decoration:   InputDecoration(
                            disabledBorder:OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            border:   OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                )),
                            hintText: "0",
                            counterText: "",
                            hintStyle:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          keyboardType:TextInputType.number,

                        )
                    ),
                    Container(
                        height: 70,
                        width: 50,
                        child:const TextField(
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style:  TextStyle(color: Colors.white),
                          decoration:   InputDecoration(
                            disabledBorder:OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1,color: Colors.white),),
                            border:   OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                )),
                            hintText: "0",
                            counterText: "",
                            hintStyle:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          keyboardType:TextInputType.number,

                        )
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  children: [
                    const Text("Didn't recive OTP? ",style: TextStyle(color: Colors.white)),
                    TextButton(onPressed: (){}, child: const Text("Resend OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                child: ButtonTheme(
                    height: 47,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: RaisedButton(
                      color: Colors.white70,
                      onPressed: (){},child:const Text("Verify & Create Account",style: TextStyle(color: Colors.white70,fontSize: 20),) ,)),
              ),



            ],
          ),
        ));
  }
}
