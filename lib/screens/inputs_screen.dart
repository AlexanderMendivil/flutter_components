import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: ( value ) {
                  print(value);
                },
                validator: ( value ) {
                  if( value == null ) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  prefixIcon: Icon(Icons.gradient_outlined),
                  suffixIcon: Icon(Icons.gradient_outlined),
                  icon: Icon(Icons.admin_panel_settings),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                  )
                ),
              )
            ]),
         ),
      ),
    );
  }
}