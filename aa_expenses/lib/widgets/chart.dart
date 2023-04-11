import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        color: Colors.blue,
        child: Text('CHART'),
      ),
    );
  }
}
