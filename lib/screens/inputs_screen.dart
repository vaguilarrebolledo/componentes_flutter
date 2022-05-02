import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Victor',
      'last_name': 'Aguilar',
      'email': 'victor@meta.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: 'Apellido',
                      helperText: 'Apellido del usuario'),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: 'Email',
                      helperText: 'Correo del usuario',
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: 'Password',
                      helperText: 'Password del usuario',
                      isPassword: true),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ),
                    onPressed: () {
                      //desactivar teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario No Valido");
                        return;
                      }
                      //*imprimiendo valores de formulario
                      print(formValues);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
