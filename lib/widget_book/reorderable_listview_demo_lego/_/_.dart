import 'package:flutter/material.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final List<String> _items = List.generate(10, (index) => 'Item ${index + 1}');
  bool _isReOrderAble = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReOrderAble ListView Demo'),
        actions: [
          Switch(
            value: _isReOrderAble,
            onChanged: (value) {
              setState(() {
                _isReOrderAble = value;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          ReorderableListView(
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (newIndex > oldIndex) {
                  newIndex -= 1;
                }
                final String item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
            proxyDecorator: (Widget child, int index, Animation<double> animation) {
              return Material(
                child: Opacity(
                  opacity: 0.8,
                  child: child,
                ),
              );
            },
            children: _items.asMap().entries.map((entry) {
              int index = entry.key;
              String item = entry.value;
              return ListTile(
                key: ValueKey(item),
                title: Text(item),
                trailing: _isReOrderAble
                    ? ReorderableDragStartListener(
                  index: index,
                  child: Icon(Icons.drag_handle),
                )
                    : null,
              );
            }).toList(),
          ),
          if (!_isReOrderAble)
            Center(
              child: Text(
                'Reordering is disabled',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
