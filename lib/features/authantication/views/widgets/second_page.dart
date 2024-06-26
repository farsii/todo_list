import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';

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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(

                        ),
                        onPressed: (){}, 
                      
                      child: Text(
                        "Login with Phone",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500, 
                        ),

                      ),
                      ),
                     ],
                ),
                
                
              );
  }
}