import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText; 
  final String? labelText; 
  final String? helperText; 
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool obscure;
  final String formProperty;
  final Map<String, String> formValues;
  
  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.inputType, this.obscure = false, required this.formProperty, required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: null,
      keyboardType: inputType,
      obscureText: obscure,
      textCapitalization: TextCapitalization.words,
      onChanged: ( value ) => formValues[ formProperty ] = value,
      validator: ( value ) {
        if( value == null || value.isEmpty ) return 'Este campo es requerido';
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        icon: icon != null ? Icon( icon ) : null,
      
      ),
    );
  }
}