import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton2({Key? key, required this.btnText, required this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: ElevatedButton(
       
        onPressed: onpressed,
        child: Text(btnText, style: const TextStyle(color: Colors.white, 
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}