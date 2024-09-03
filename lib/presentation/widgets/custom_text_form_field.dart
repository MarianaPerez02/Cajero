import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool? enable;
  final TextInputType keyBoardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool showIcon;
  final IconData? icon;
  final void Function()? onIconPressed;
  final VoidCallback? onCalculatePressed; // Nuevo parámetro

  const CustomTextFormField({
    Key? key,
    this.label,
    this.hint,
    this.errorMessage,
    this.enable,
    this.keyBoardType = TextInputType.number,
    this.controller,
    this.onChanged,
    this.validator,
    this.showIcon = false,
    this.icon,
    this.onIconPressed,
    this.onCalculatePressed, // Agregar el nuevo parámetro
  }) : super(key: key); // Se agrega key como parámetro en el constructor

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          enabled: enable,
          onChanged: onChanged,
          validator: validator,
          keyboardType: keyBoardType,
          decoration: InputDecoration(
            enabledBorder: _customBorder(),
            disabledBorder: _customBorder(color: Colors.black12),
            focusedBorder: _customBorder(color: colors.primary),
            errorBorder: _customBorder(color: Colors.red.shade800),
            focusedErrorBorder: _customBorder(color: Colors.red.shade800),
            isDense: true,
            label: label != null ? Text(label!) : null,
            hintText: hint,
            errorText: errorMessage,
            suffixIcon: showIcon
                ? IconButton(
                    icon: Icon(icon),
                    onPressed: onIconPressed,
                  )
                : null,
          ),
        ),
        SizedBox(height: 10), // Espacio entre el campo de texto y el botón
        ElevatedButton(
          onPressed: onCalculatePressed, // Llama a la función al presionar el botón
          child: Text('Calcular'),
        ),
      ],
    );
  }

  InputBorder _customBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? const Color(0xFF000000)),
    );
  }
}
