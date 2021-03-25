
import 'package:flutter/material.dart';
import 'package:wave_slider/wave_slider.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _dragValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Flutter Wave Slider Demo"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WaveSlider(
            color: Colors.teal,
            sliderHeight: 70,
            displayTrackball: true,
            onChanged: (double dragUpdate) {
              setState(() {
                _dragValue = dragUpdate*150;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Drag Value',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_dragValue',
              style: TextStyle(fontSize: 16,
                color: Colors.red,),
            ),
          )
        ],
      ),
    );
  }
}