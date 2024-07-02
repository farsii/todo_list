import 'package:flutter/material.dart';
import 'package:myapp/core/common/widgets/white_space.dart';
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
                      padding: EdgeInsets.symmetric(horizontal: 20,).copyWith(bottom: 10),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              pageController.nextPage(
                                duration: Duration(milliseconds: 500), curve: Curves.easeIn,
                              );
                            },
                            child:
                              const Row(        
                                                
                                children: [
                                   
                                  //icon and skip 
                                  //                          
                                   Icon(Icons.arrow_circle_right,size: 30, color: Colors.white,),

                                  const WhiteSpace(width: 2,),
                                 const Text("SKIP",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500, 
                                ),
                                ),                   
                              
                                ],
                                
                              ),
                          ),
                              //swip indicator
                               SmoothPageIndicator(
                                controller: pageController,
                                 count: 2,),
                             
                            
                          
                        ],
                      ),
                      
                    ),
                    
                 
              ],
            ),
                   ),
    
        
        );
  }
}
