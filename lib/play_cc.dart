import 'package:flutter/material.dart';

class PlayCC extends StatefulWidget {
  const PlayCC({Key? key}) : super(key: key);

  @override
  State<PlayCC> createState() => _PlayCCState();
}

class _PlayCCState extends State<PlayCC> {
  bool showLootBoxes = false;

  handleLoot() {
    setState(() {
      showLootBoxes = !showLootBoxes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s rock!'),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: !showLootBoxes,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(
                    onPressed: handleLoot,
                    child: const Text('Loot!'),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: showLootBoxes,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(
                    onPressed: handleLoot,
                    child: const Text('Component 1'),
                  ),
                  TextButton(
                    onPressed: handleLoot,
                    child: const Text('Component 2'),
                  ),
                  TextButton(
                    onPressed: handleLoot,
                    child: const Text('Component 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
