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
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            fillColor: Color(
              int.parse('0xffF5F5F5'),
            ),
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
