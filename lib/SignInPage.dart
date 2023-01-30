import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Global.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _HomePageState();
}

class _HomePageState extends State<SignInPage> {

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
          key: GlobalVar.login,
          child: Column(
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff4ACACB),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: h / 50),
              const Text(
                "Welcome back at More",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: h / 20),
              Container(
                height: h / 15,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffEDFAF7)),
                child: TextFormField(
                  controller: GlobalVar.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "please enter this";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    setState(() {
                      GlobalVar.iEmail = val;
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
                  controller: GlobalVar.password,
                  obscureText: (IsEye == true) ?  true : false,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "please enter this";
                    }
                    return null;
                  },
                  onChanged: (val) {
                    GlobalVar.iPassword = val;
                  },
                  decoration:  InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        IsEye = !IsEye;
                      });
                    },
                        icon: (IsEye == false) ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined)),
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
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      fontSize: 12, decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: h / 20,
              ),
              InkWell(
                onTap: () async {
                  if (GlobalVar.login.currentState!.validate()) {
                    GlobalVar.login.currentState!.save();

                    if (GlobalVar.email.text == GlobalVar.signUpEmail.text &&
                        GlobalVar.password.text == GlobalVar.signUpPassword.text) {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setBool('login', true);
                      Navigator.of(context).pushReplacementNamed('homeScreen');
                    }
                    else{
                      Navigator.of(context).pushNamed('signup');
                    }
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
                    "LOGIN ACCOUNT",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: h / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pushReplacementNamed('signup');
                      });
                    },
                    child: const Text(
                      "Sign up",
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
