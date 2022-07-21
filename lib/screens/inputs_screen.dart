import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Carlos',
      'last_name': 'Guzmán',
      'email': 'blas@gmail.com',
      'password': '123456',
      'role': 'admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'SuperUser', child: Text('SuperUser')),
                        DropdownMenuItem(
                            value: 'Developer', child: Text('Developer')),
                        DropdownMenuItem(
                            value: 'Jr. Developer',
                            child: Text('Jr. Developer')),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // sacar el teclado de pantalla luego de darle enviar
                      FocusScope.of(context).requestFocus(FocusNode());
                      // activar validaciones si fuera necesario
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }
                      // imprimir formvalue
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
