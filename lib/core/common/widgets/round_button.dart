import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({ this.onpressed, required this.text, super.key});
  final VoidCallback ? onpressed;
  final String text ;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(size.width * .8, size.height* .07),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),

                        ),
                        onPressed: onpressed, 
                      
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500, 
                        ),

                      ),
                      );
  }
}