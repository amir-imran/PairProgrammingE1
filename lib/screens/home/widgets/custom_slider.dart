import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider({state}) : _state = state;

  final _state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Slider(
                    value: _state.red,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (value) {
                      _state.red = value;
                    }),
                flex: 1,
              ),
              Container(
                height: 60,
                width: 70,
                padding: EdgeInsets.only(right: 10),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _state.green = 0.0;
                    _state.red = 255.0;
                    _state.blue = 0.0;
                  },
                  label: Text('${_state.red.round()}'),
                  backgroundColor: Colors.red,
                  //floatingActionButton : Container(height:20. width:20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Slider(
                    value: _state.green,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (value) {
                      _state.green = value;
                    }),
              ),
              Container(
                height: 60,
                width: 70,
                padding: EdgeInsets.only(right: 10),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _state.green = 255.0;
                    _state.red = 0.0;
                    _state.blue = 0.0;
                  },
                  label: Text('${_state.green.round()}'),
                  //child: CircleAvatar(backgroundColor: Colors.green),
                  backgroundColor: Colors.green,
                  //floatingActionButton : Container(height:20. width:20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Slider(
                    value: _state.blue,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (value) {
                      _state.blue = value;
                    }),
              ),
              Container(
                height: 60,
                width: 70,
                padding: EdgeInsets.only(right: 10),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _state.green = 0.0;
                    _state.red = 0.0;
                    _state.blue = 255.0;
                  },
                  label: Text('${_state.blue.round()}'),
                  // child: CircleAvatar(backgroundColor: Colors.blue),
                  backgroundColor: Colors.blue,
                  //floatingActionButton : Container(height:20. width:20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
