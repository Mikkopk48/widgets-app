import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>[
  {'elevation':0.0, 'label':'Elevation 0'},
  {'elevation':1.0, 'label':'Elevation 1'},
  {'elevation':2.0, 'label':'Elevation 2'},
  {'elevation':3.0, 'label':'Elevation 3'},
  {'elevation':4.0, 'label':'Elevation 4'},
  {'elevation':5.0, 'label':'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen'),),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
        (card)=>_CardType1(label: card['lebel'], elevation:card['elevation'] ))
      ],
    );
  }
}
class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:Padding(padding: EdgeInsets.fromLTRB(10,5,10,10),
      child: Column(children: [
        Icon(Icons.more_vert_outlined)
      ],),),
    );
  }
}