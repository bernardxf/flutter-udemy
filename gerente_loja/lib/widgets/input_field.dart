import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;
  final Stream<String> stream;
  final Function(String) onChanged;

  const InputField({Key key, this.hint, this.obscure, this.icon, this.stream, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot){
        return TextField(
          onChanged: onChanged,
          obscureText: obscure,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.white),        
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent)
            ),
            contentPadding: EdgeInsets.only(left: 5, right: 20, bottom: 20, top: 20),
            errorText: snapshot.hasError ? snapshot.error : null
          ),
        );
      },
    );
  }
}