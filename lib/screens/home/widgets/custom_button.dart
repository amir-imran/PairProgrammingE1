import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({size, caption, state})
      : _size = size,
        _caption = caption,
        _state = state;

  final _caption;
  final _size;
  final _state;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.white)),
      child: SizedBox(
        height: 35.0,
        width: 40.0,
        child: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Text(_caption),
            onPressed: () {
              if (_size >= 50 && _size < 600) _state.size = _size;
            }),
      ),
    );
  }
}
