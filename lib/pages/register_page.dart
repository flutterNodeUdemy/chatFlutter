// ignore_for_file: avoid_print

import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';

import '../widgets/custum_input.dart';
import '../widgets/labels.dart';
import '../widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                    titulo: 'Register',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'login',
                    text1: 'Con cuenta',
                    text2: 'iniciar sesión',
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
  final nombreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustumInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyInputType: TextInputType.text,
            textController: nombreController,
          ),
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
            onPressed: () => {},
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
