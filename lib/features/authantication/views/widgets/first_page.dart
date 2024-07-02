import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding:  EdgeInsets.symmetric(horizontal:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                     Image.asset(Imageres.todo),
                     const WhiteSpace(height: 50),
                  
                   
                     const Text("Todolist App",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500, 
                    ),
                    ),
                    const WhiteSpace(height: 10),
                    const Text("WELCOME TO THE APP",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                    Spacer(),
                     ],
                ),
                
              );
  }
}