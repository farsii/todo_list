import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
import 'package:myapp/core/res/image_res.dart';
import 'package:myapp/features/authantication/views/widgets/first_page.dart';
import 'package:myapp/features/authantication/views/widgets/second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController =PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        body: 
        SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [

            
            PageView(
              controller: pageController,
              children: [
            
               FirstPage(),
              //2nd onboarding page
              SecondPage(),
              
                    
                  ],
              ),


                   //skip buttons
                    Padding
                    (
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        
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
                              color: Colors.white,
                              fontWeight: FontWeight.w500, 
                            ),),                   
                          
                            ],
                            
                          ),
                          SmoothPageIndicator(controller: pageController, count: 2,),
                        ],
                      ),
                    ),
                    
                 
              ],
            ),
                   ),
    
        
        );
  }
}
