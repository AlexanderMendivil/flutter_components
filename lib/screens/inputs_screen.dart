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
                CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox( height: 20,),
                CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox( height: 20,),
                CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', inputType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox( height: 20,),
                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscure: true, formProperty: 'password', formValues: formValues, ),
                const SizedBox( height: 20,),
          

                DropdownButtonFormField(items: 
                const [
                   DropdownMenuItem(value: 'Admin',child: Text("Admin"),),
                   DropdownMenuItem(value: 'Super user',child: Text("Super user"),),
                   DropdownMenuItem(value: 'Developer',child: Text("Developer"),)
                  ],
                  onChanged: ( value ){
                    formValues['role'] = value ?? 'Admin';
                  }),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Press'))),

                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
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
