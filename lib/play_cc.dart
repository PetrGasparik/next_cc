import 'dart:math';

import 'package:flutter/material.dart';

var rng = Random();

class PlayCC extends StatefulWidget {
  const PlayCC({Key? key}) : super(key: key);

  @override
  State<PlayCC> createState() => _PlayCCState();
}

class _PlayCCState extends State<PlayCC> {
  bool showLootBoxes = false;
  Map<String, int> components = {};

  showLoot() {
    setState(() {
      showLootBoxes = true;
    });
  }

  getLoot(String componentId) {
    int? pieces = components[componentId];
    setState(() {
      components[componentId] = pieces == null ? 1 : pieces + 1;
      showLootBoxes = false;
    });
    debugPrint(components.toString());
  }

  String printInventory() {
    String inventoryString = "";
    components.forEach((key, value) {
      inventoryString += "$key: $value | ";
    });
    return "Inventory | $inventoryString";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s rock!'),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[500],
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
                    onPressed: showLoot,
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
                  displayComponent(),
                  displayComponent(),
                  displayComponent(),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: printInventory(), // default text style
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton displayComponent() {
    var componentId = rng.nextInt(10) + 1;
    var componentName = 'Component $componentId';
    return TextButton(
      onPressed: () => getLoot(componentName),
      child: Text(componentName),
    );
  }
}
