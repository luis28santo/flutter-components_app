import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (String value) {
        print('Valor del input: $value');
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';

        return value.length < 3 ? 'Minimo 3 caracteres.' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null
            ? null
            : Icon(suffixIcon, color: AppTheme.primaryColor),
        icon: icon == null ? null : Icon(icon, color: AppTheme.primaryColor),
      ),
    );
  }
}
