import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCodeText extends StatefulWidget {
  const PinCodeText({Key? key}) : super(key: key);

  @override
  _PinCodeTextState createState() => _PinCodeTextState();
}

class _PinCodeTextState extends State<PinCodeText> {
  StreamController<ErrorAnimationType>? errorController;
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }
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
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child:PinCodeTextField(
                    animationCurve:Curves.easeIn,
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 5,
                    // obscureText: true,
                    // obscuringCharacter: '*',
                    // obscuringWidget: FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor:Colors.white ,
                      inactiveColor: Colors.green,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white60,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      activeFillColor: Colors.white10,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    textStyle: const TextStyle(fontSize: 20, height: 1.6,color: Colors.white),
                    keyboardType: TextInputType.number,
                    boxShadows:const [
                       BoxShadow(
                        offset:  Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
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
