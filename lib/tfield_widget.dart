import 'package:flutter/material.dart';

typedef MyValueCallback<T> = void Function(T value);

class TFieldWidget extends StatelessWidget {
  final MyValueCallback<String> callback;
  const TFieldWidget({required this.callback, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        callback(value);
      },
    );
  }
}
