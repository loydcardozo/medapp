import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medapp/login_signup/forgot_pass.dart';
import 'package:medapp/pages/Main_layoutPage.dart';
import 'package:medapp/pages/login_signup.dart';
import 'package:medapp/login_signup/register.dart';
// import 'package:medapp/pages/Homepage.dart';
import 'package:medapp/component/Auth_text_field.dart';
import 'package:medapp/component/auth_social_login.dart';
import 'package:medapp/providers/dio_provider.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // bool _isEmailValid = true;
  bool obsecurePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: login_signup()));
          },
          icon: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Login",
          style: GoogleFonts.inter(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: 0),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),

              Auth_text_field(text: "Enter you email", icon: Icon(Icons.email)),
              const SizedBox(
                height: 5,
              ),
              //Text field Password
              TextFormField(
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.none,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                obscureText: obsecurePass,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: 'password',
                  focusColor: Colors.black26,
                  fillColor: Color.fromARGB(255, 247, 247, 247),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  prefixIconColor: Color.fromARGB(255, 3, 190, 150),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecurePass =!obsecurePass;
                      });
                    },
                    icon: obsecurePass
                        ? Icon(Icons.visibility_off_outlined,
                        color: Color.fromARGB(255, 3, 190, 150))
                        : Icon(Icons.visibility_outlined,
                        color: Color.fromARGB(255, 3, 190, 150)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            child: forgot_pass()));
                  },
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 3, 190, 150),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ]),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 190, 150),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: GestureDetector(
                  onTap: () async {
                    final token = await DioProvider().getToken(emailController.text, passwordController.text);
                    print(token);
                    if (_formKey.currentState!.validate()) {
                      String enteredEmail = emailController.text;
                      String enteredPassword = passwordController.text;
                      print('Email: $enteredEmail, Password: $enteredPassword');
                      // Navigator.pushReplacement(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.fade, child: MainLayout()));
                    }
                  },
                  child: Center(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255,255, 255, 255),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style:
                    GoogleFonts.poppins(fontSize: 15, color: Colors.black87),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: register()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 3, 190, 150),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              auth_social_logins(
                  logo: Icon(
                    MdiIcons.google,
                    color: Colors.red,
                  ),
                  text: "Sign in with Google"),
              const SizedBox(
                height: 20,
              ),
              auth_social_logins(
                  logo:  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  text: "Sign in with facebook"),

            ]),
          ),
        ),
      ),
    );
  }
}