import 'package:flutter/material.dart';
import '../ui/shared/custom_app_menu.dart';
import '../ui/shared/custom_flat_button.dart';


class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int Counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [


         Text('Contador Stateful', style: TextStyle(fontSize:20)),


        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Text(
              'Contador:$Counter',
              style:TextStyle(fontSize: 80, fontWeight: FontWeight.bold ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incrementar',
                onPressed: () => setState(() => Counter++)
            ),

            CustomFlatButton(
                text: 'Decrementar',
                onPressed: () => setState(() => Counter--)
            )
          ],
        ),
      ],
    );
  }
}
