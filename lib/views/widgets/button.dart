import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton({Key? key, required this.btnText, required this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      height: 40,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(btnText, style: const TextStyle(color: Colors.white, 
        fontSize: 15.5,
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}