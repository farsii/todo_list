import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/round_button.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';
import 'package:myapp/features/authantication/views/otp_verify_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal:30),
          children: [
            Image.asset(Imageres.todo),
            WhiteSpace(height: 20,),
            Text("Log in With Mobile Number",
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3532102179.
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            ),
            WhiteSpace(height: 20,),
            TextField(
              keyboardType: TextInputType.phone,
              
              style: TextStyle(
                
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
               ),
                filled: true,
              
                hintText: "Mobile Number",
                hintStyle: TextStyle(
                  fontSize: 20,
                  
                  color: Color.fromARGB(255, 124, 124, 124),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            WhiteSpace(height: 30,),
            RoundButton(text: "Send Code", onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerifyScreen(),));
              
            },)



          ],

        ) ,
      ),
    );
  }
}