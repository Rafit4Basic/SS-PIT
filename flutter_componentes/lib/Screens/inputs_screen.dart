import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'Nombre': 'Rafa',
      'Apellido': 'xD',
      'email': 'xD@xD.com',
      'pass': 'askjdhaskjdh',
      'cargo': 'xD',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
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
                    formProperty: 'Nombre',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'Apellido',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formProperty: 'pass',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                ////////////////////////COMBOBOX
                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Root', child: Text('Root')),
                      DropdownMenuItem(
                          value: 'Desarrollador', child: Text('Desarrollador')),
                      DropdownMenuItem(value: 'chalán', child: Text('chalán')),
                    ],
                    //xD
                    onChanged: (value) {
                      print(value);
                      formValues['cargo'] = value ?? 'Admin';
                    }),
                ////////////////////////COMBOBOX
                ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario inválido');
                        return;
                      }
                      print(formValues);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
