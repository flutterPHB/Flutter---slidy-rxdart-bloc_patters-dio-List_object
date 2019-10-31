import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.network(
            "https://global-uploads.webflow.com/5baa6d3edd67526178ba288f/5c0e9a83498ec71a0cc9a45e_flutter_hearts.png"));
  }
}
