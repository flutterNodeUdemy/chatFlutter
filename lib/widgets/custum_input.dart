import 'package:flutter/material.dart';

class CustumInput extends StatelessWidget {
  // const CustumInput({Key? key}) : super(key: key);

  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyInputType;
  final bool isPasword;

  const CustumInput(
      {Key? key,
      required this.icon,
      required this.placeholder,
      required this.textController,
      this.keyInputType = TextInputType.text,
      this.isPasword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ]),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyInputType,
        obscureText: isPasword,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: placeholder),
      ),
    );
  }
}
