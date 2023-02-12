import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues ={
      'first_name': 'Alexander',
      'last_name': 'Araujo',
      'email': 'Alexander@gmail.com',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

          child: Form(
            key: myFormKey,
            child: Column(
              children: <Widget>[
                const CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario',),
                const SizedBox( height: 20,),
                const CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario',),
                const SizedBox( height: 20,),
                const CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', inputType: TextInputType.emailAddress,),
                const SizedBox( height: 20,),
                const CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscure: true, ),
                const SizedBox( height: 20,),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Press'))),

                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      print(formValues);
                       return;
                       }
                  }, 
                  ),
              ]),
          ),
         ),
      ),
    );
  }
}
