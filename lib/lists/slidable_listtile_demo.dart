import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class SlidableListTileDemo extends StatefulWidget {
  const SlidableListTileDemo({super.key});

  @override
  State<SlidableListTileDemo> createState() => _SlidableListTileDemoState();
}

class _SlidableListTileDemoState extends State<SlidableListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Slidable(
        // Specify a key if the Slidable is dismissible.
        key: ValueKey(0),
        // The start action pane is the one at the left or the top side.
        startActionPane: ActionPane(
          // A motion is a widget used to control how the pane animates.
          motion: ScrollMotion(),

          // A pane can dismiss the Slidable.
          //dismissible: DismissiblePane(onDismissed: () {}),
          // All actions are defined in the children parameter.
          children: [
            // A SlidableAction can have an icon and/or a label.
            SlidableAction(
              onPressed: null,
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
            SlidableAction(
              onPressed: null,
              backgroundColor: Color(0xFF21B7CA),
              foregroundColor: Colors.white,
              icon: Icons.share,
              label: 'Share',
            ),
          ],
        ),

        // The end action pane is the one at the right or the bottom side.
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              // An action can be bigger than the others.
              flex: 2,
              onPressed: null,
              backgroundColor: Color(0xFF7BC043),
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Archive',
            ),
            SlidableAction(
              onPressed: null,
              backgroundColor: Color(0xFF0392CF),
              foregroundColor: Colors.white,
              icon: Icons.save,
              label: 'Save',
            ),
          ],
        ),

        // The child of the Slidable is what the user sees when the
        // component is not dragged.
        child: ListTile(title: Text('Slide me')),
      ),
    );
  }
}
