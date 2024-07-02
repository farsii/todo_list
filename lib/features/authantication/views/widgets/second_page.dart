import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/round_button.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';
import 'package:myapp/features/authantication/views/sign_in_screen.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Padding(
                padding:  EdgeInsets.symmetric(horizontal:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                 
                     Image.asset(Imageres.notification),
                      WhiteSpace(height: 50),
                      RoundButton(text: "Login with Phone",
                      onpressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),
                        ));
                        
                      },)
                     ],
                ),
                
                
              );
  }
}