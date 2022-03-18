import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const BotonAzul({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
          width: double.infinity,
          height: 40,
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ))),
      style: ElevatedButton.styleFrom(
          primary: Colors.blue, shape: StadiumBorder()),
    );
  }
}
