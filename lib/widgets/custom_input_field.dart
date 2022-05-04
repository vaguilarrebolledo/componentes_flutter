import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.isPassword = false,
    required this.formProperty, // campos oblitatorios
    required this.formValues, // campo obligatorio
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType, //para agregar @ al teclado
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        //return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      //modificando el input
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 caracteres',
        //prefixIcon: Icon(Icons.verified_user),
        //const Icon(Icons.group_outlined) :Icon(suffixIcon),
        suffixIcon: suffixIcon == null? null: Icon(suffixIcon), 
        icon: icon == null? null: Icon(icon), 
       //const Icon(Icons.assignment_ind_outlined)
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        // border: OutlineInputBorder(borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(10),
        //   topRight: Radius.circular(10),

        //   )
        // ),
      ),
    );
  }
}
