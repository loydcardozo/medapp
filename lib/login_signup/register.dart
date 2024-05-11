import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medapp/component/auth_social_login.dart';
import 'package:medapp/login_signup/login.dart';
import 'package:medapp/pages/login_signup.dart';
import 'package:medapp/component/Auth_text_field.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
        onPressed: () {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.leftToRight, child: login()));
    },
          icon: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Icon(Icons.arrow_back)
        ),
        ),
        title: Text(
          "Sign up",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  textAlign: TextAlign.start,
                  textInputAction: TextInputAction.none,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      focusColor: Colors.black26,
                      fillColor: Color.fromARGB(255, 247, 247, 247),
                      filled: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Icon(Icons.person),
                      ),
                      prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                      label: Text(
                        "Enter your email",
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
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
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Auth_text_field(text: "Enter your name", icon: Icon(Icons.email)),
            const SizedBox(
              height: 5,
            ),
            Auth_text_field(
                text: "Enter your password", icon: Icon(Icons.lock)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Checkbox(
            //       value: false,
            //       onChanged: (bool? value) {},
            //     ),
            //     Text(
            //       "I agree to the terms and conditions",
            //       style: GoogleFonts.poppins(
            //         fontSize: 14,
            //         color: Colors.black87,
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  // Perform verification or other actions here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 3, 190, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Create account",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
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
                  "Already have an account? ",
                  style:
                  GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            child: login()));
                  },
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 3, 190, 150),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(
              height: 10,
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
                text: "Sign in with facebook")
          ]),
        ),
      ),
    );
  }
}