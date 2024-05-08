import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: 
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
                 Image.asset(Imageres.todo),
                 WhiteSpace(height: 100),
               
                Text("Todolist App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500, 
                ),
                ),
                WhiteSpace(height: 10),
                Text("WELCOME TO OUR APP"),
                
              ],
            ),
          ),
        ));
  }
}
