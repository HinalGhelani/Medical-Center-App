import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Global.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool IsEye = true;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 150, bottom: 15, right: 20, left: 20),
        child: Form(
          key: GlobalVar.signUp,
          child: Column(
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff4ACACB),
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: h / 50),
              // const Text(
              //   "Welcome back at More",
              //   style: TextStyle(
              //     fontSize: 15,
              //     color: Colors.black,
              //   ),
              // ),
              SizedBox(height: h / 20),
              Container(
                height: h / 15,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffEDFAF7)),
                child: TextFormField(
                  controller: GlobalVar.signUpEmail,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "please enter this";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      GlobalVar.uEmail = val;
                    });
                  },
                  decoration: const InputDecoration(
                      fillColor: Colors.indigo,
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: "User Name",
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 20)),
                ),
              ),
              SizedBox(
                height: h / 40,
              ),
              Container(
                height: h / 15,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffEDFAF7)),
                child: TextFormField(
                  controller: GlobalVar.signUpPassword,
                  obscureText: (IsEye == true) ? true : false,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "please enter this";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      GlobalVar.uPassword = val;
                    });
                  },
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        icon: (IsEye == false) ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {
                          setState(() {
                            IsEye = !IsEye;
                          });
                        },
                      ),
                      fillColor: Colors.indigo,
                      hintStyle: const TextStyle(fontSize: 14),
                      hintText: "Password",
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 14, horizontal: 20)),
                ),
              ),
              SizedBox(
                height: h / 40,
              ),
              GestureDetector(
                onTap: () async {
                  if (GlobalVar.signUp.currentState!.validate()) {
                    GlobalVar.signUp.currentState!.save();

                    Navigator.of(context).pushReplacementNamed('signIn');

                  }

                },
                child: Container(
                  height: h / 15,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff22C093),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: h / 30,
              ),
              SizedBox(
                height: h / 40,
              ),
              const Text(
                "-----------------------       OR       -----------------------",
                style: TextStyle(color: Color(0xff22C093)),
              ),
              SizedBox(
                height: h / 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('homeScreen');
                },
                child: Container(
                  height: h / 16,
                  width: w / 1.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffEDFAF7),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.facebook,
                        color: Colors.indigo,
                        size: 28,
                      ),
                      SizedBox(
                        width: w / 20,
                      ),
                      const Text(
                        "Sign In with facebook",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h / 35),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('homeScreen');
                },
                child: Container(
                  height: h / 16,
                  width: w / 1.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffEDFAF7),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        color: Colors.red,
                        size: 28,
                      ),
                      SizedBox(
                        width: w / 20,
                      ),
                      const Text(
                        "Sign In with google",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, 'signIn');
                      });
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Color(0xff22C093),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
