import 'package:flutter/material.dart';

class HijoWidget extends StatefulWidget {
  @override
  _HijoWidgetState createState() => _HijoWidgetState();
}


class _HijoWidgetState extends State<HijoWidget> {
   String _value = "0";

  String _numero1 = "0";

  String _numero2 = "0";
  @override
  Widget build(BuildContext context) {
    return  Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (String value){
                        _numero1 = value;
                  },
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (String value){
                        _numero2 = value;
                  },
                ),
                Padding(
                  padding:EdgeInsets.all(15.0),
                   child: Text(
                    _value,
                    style:TextStyle(fontSize:20),
                  ),
                ),
                RaisedButton(
                  onPressed: (){
                    setState((){
                     _value = (int.tryParse(_numero1)+int.tryParse(_numero2)).toString();
                    });
                  },
                  child: Text("Calcular"),
                ),
              ],
            );
  }
}