import 'package:flutter/material.dart';

class LoginEmailField extends StatelessWidget {
  final Function(String, String) onSaved;

  const LoginEmailField({
    Key key,
    this.onSaved,
  }) : super(key: key);

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
              filled: true,
              fillColor: Color(int.parse('0xffF5F5F5'))),
        ),
      ],
    );
  }
}
