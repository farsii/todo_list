import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';
import 'package:pinput/pinput.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 163, 163),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),

        child:Column(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1459123810.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Imageres.todo), 
            WhiteSpace(height: 20,),
            Pinput(
              length: 6,
            
              onCompleted: (pin) {
                
              },
              defaultPinTheme: PinTheme(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  
              ),
              
                
              ),
            ),

            
         
// Suggested code may be subject to a license. Learn more: ~LicenseLog:315578994.
          ],
        )
         ),
      ),

    );
  }
}