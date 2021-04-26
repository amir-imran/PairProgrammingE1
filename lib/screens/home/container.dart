import 'package:e1/screens/home/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  Contain({state}) : _state = state;

  final _state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
          size: _state.size - 50.0,
          caption: '-',
          state: _state,
        ),
        CustomButton(
          size: 100.0,
          caption: 'S',
          state: _state,
        ),
        CustomButton(
          size: 300.0,
          caption: 'M',
          state: _state,
        ),
        CustomButton(
          size: 400.0,
          caption: 'L',
          state: _state,
        ),
        CustomButton(
          size: _state.size + 50.0,
          caption: '+',
          state: _state,
        ),
      ],
    );
  }
}
