import 'package:flutter/material.dart';

class ListSearchField extends StatelessWidget {
  final Function(String) onSubmit;

  const ListSearchField({
    Key key,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => value.isEmpty ? 'Campo obrigatório' : null,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: onSubmit,
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
          prefixIcon: Icon(Icons.search_rounded),
          filled: true,
          fillColor: Color(int.parse('0xffF5F5F5'))),
    );
  }
}
