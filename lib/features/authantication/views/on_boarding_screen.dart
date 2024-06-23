import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: 
        SafeArea(
          child: Stack(
            children: [

            
            PageView(
              children: [
            
               Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                     Image.asset(Imageres.todo),
                     const WhiteSpace(height: 50),
                  
                   
                     const Text("Todolist App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500, 
                    ),
                    ),
                    const WhiteSpace(height: 10),
                    const Text("WELCOME TO OUR APP"),
                    Spacer(),


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
                                  icon: const Icon(Icons.arrow_forward_ios_outlined),color: Colors.blue,),
                                  const WhiteSpace(width: 2,),
                                 const Text("SKIP",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500, 
                                ),),                   
                              
                                ],
                                
                              ),
                            ],
                          ),
                          //dot two button
                          
                          
                            
                          
                        
                      ),
                    
                  ],
                ),
                
              ),
                    
                  ],
              ),
              ],
            ),
                   ),
    
        
        );
  }
}
