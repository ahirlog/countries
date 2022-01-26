import 'package:flutter/material.dart';

class RegionScreenHeader extends StatelessWidget {
  const RegionScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        "Continents",
        style: TextStyle(
          fontSize: 40,
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
