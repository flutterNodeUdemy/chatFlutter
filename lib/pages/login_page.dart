// ignore_for_file: avoid_print

import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';

import '../widgets/custum_input.dart';
import '../widgets/labels.dart';
import '../widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * .9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Logo(
                    titulo: 'Messenger',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'register',
                    text1: '¿No tienescuenta?',
                    text2: 'crea una ahora!',
                  ),
                  Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustumInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyInputType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustumInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            keyInputType: TextInputType.emailAddress,
            textController: passwordController,
            isPasword: true,
          ),
          BotonAzul(
            text: 'Ingrese',
            onPressed: () => {print('object')},
          )
        ],
      ),
    );
  }

  void changeData() {}

  void selectHandler() {
    print('object');
  }
}
