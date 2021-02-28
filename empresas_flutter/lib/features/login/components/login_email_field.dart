import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:flutter/material.dart';

class LoginEmailField extends StatelessWidget {
  final Function(String, String) onSaved;

  LoginEmailField({
    Key key,
    this.onSaved,
  }) : super(key: key);

  final defaultOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  );

  final errorOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Email',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          validator: (value) => value.isEmpty ? 'Campo obrigatório' : null,
          onSaved: (value) => onSaved('email', value),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              focusedBorder: defaultOutlineBorder,
              enabledBorder: defaultOutlineBorder,
              focusedErrorBorder: errorOutlineBorder,
              errorBorder: errorOutlineBorder,
              filled: true,
              fillColor: AppColors.background),
        ),
      ],
    );
  }
}
