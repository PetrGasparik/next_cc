import 'package:flutter/material.dart';

class PlayCC extends StatefulWidget {
  const PlayCC({Key? key}) : super(key: key);

  @override
  State<PlayCC> createState() => _PlayCCState();
}

class _PlayCCState extends State<PlayCC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s rock!'),
      ),
    );
  }
}
