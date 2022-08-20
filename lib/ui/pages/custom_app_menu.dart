import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20, vertical: 10 ),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () =>Navigator.pushNamed(context, 'stateful'),
            color: Colors.black,
          ),

          SizedBox(
            width: 10),
          CustomFlatButton(
            text: 'Contador provider',
            onPressed: () =>Navigator.pushNamed(context, 'provider'),
            color: Colors.black,
          ),
          SizedBox(
              width: 10),
          CustomFlatButton(
            text: 'Contador provider',
            onPressed: () =>Navigator.pushNamed(context, 'abc123'),
            color: Colors.black,
          )
        ],
      ),

    );
  }
}
