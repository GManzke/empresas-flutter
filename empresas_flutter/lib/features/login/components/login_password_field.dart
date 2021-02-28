import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPasswordField extends StatefulWidget {
  final Function(String, String) onSaved;

  const LoginPasswordField({
    Key key,
    this.onSaved,
  }) : super(key: key);

  @override
  _LoginPasswordFieldState createState() => _LoginPasswordFieldState();
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool _isVisible = false;

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
          'Senha',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          validator: (value) => value.isEmpty ? 'Campo obrigatório' : null,
          onSaved: (value) => widget.onSaved('password', value),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: !_isVisible,
          decoration: InputDecoration(
            focusedBorder: defaultOutlineBorder,
            enabledBorder: defaultOutlineBorder,
            focusedErrorBorder: errorOutlineBorder,
            errorBorder: errorOutlineBorder,
            fillColor: AppColors.background,
            suffixIcon: GestureDetector(
                onTap: changeVisibility,
                child: Icon(
                  _isVisible
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                  size: 26,
                )),
            filled: true,
          ),
        ),
      ],
    );
  }

  void changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}
