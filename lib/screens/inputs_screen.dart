import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Luis angel',
      'last_name': 'Santos Medina',
      'email': 'lusi@gmail.com',
      'password': '12345',
      'role': 'Admin',
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
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre Usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido Usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del Usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del Usuario',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  value: formValues['role'],
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value.toString();
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido.');
                      return;
                    }

                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
