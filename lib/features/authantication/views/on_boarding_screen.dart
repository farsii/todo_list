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
                 WhiteSpace(height: 30),
               
                Text("Todolist App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500, 
                ),
                ),
                WhiteSpace(height: 10),
                Text("WELCOME TO OUR APP"),
                Container(
                  
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [                   
                      Row(                        
                        children: [
                          //icon and skip 
                          //                          
                          IconButton(
                            iconSize: 30,
                            onPressed: (){}, 
                          icon: Icon(Icons.next_plan_rounded),color: Colors.blue,),
                          WhiteSpace(width: 5,),
                         Text("SKIP",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500, 
                        ),),
                      

                        ],
                        

                      ),
                      //dot tow button
                      Placeholder(fallbackHeight: 20,fallbackWidth: 20,),
                      
                        ],
                      
                    
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
