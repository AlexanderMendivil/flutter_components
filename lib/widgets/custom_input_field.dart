import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText; 
  final String? labelText; 
  final String? helperText; 
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool obscure;
  
  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.inputType, this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: null,
      keyboardType: inputType,
      obscureText: obscure,
      textCapitalization: TextCapitalization.words,
      onChanged: ( value ) {
        print(value);
      },
      validator: ( value ) {
        print(value.runtimeType);
        if( value == null || value.isEmpty ) return 'Este campo es requerido';
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