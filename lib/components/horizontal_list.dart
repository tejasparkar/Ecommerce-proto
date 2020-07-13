import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(8.0),
            child: NeuCard(
               child: Text('One',textAlign: TextAlign.center,),
              bevel: 1,
             color: Colors.white12,
                width: 150,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeuCard(
            child: Text('Two',textAlign: TextAlign.center,),
            bevel: 1,
            color: Colors.white12,
            width: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeuCard(
            child: Text('Three',textAlign: TextAlign.center,),
            bevel: 1,
            color: Colors.white12,
            width: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeuCard(
            child: Text('Four',textAlign: TextAlign.center,),
            bevel: 1,
            color: Colors.white12,
            width: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeuCard(
            child: Text('Five',textAlign: TextAlign.center,),
            bevel: 1,
            color: Colors.white12,
            width: 150,
          ),
        ),
      ],
      ),
    );
  }
}
