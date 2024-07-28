import 'package:flutter/material.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final List<String> items = [
    'Seoul', 'Gothenburg', 'Berlin', 'New York', 'Tokyo', 'Beijing', 'London', 'Paris', 'Rome', 'Moscow'
  ];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  bool showDeleteButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Deletion/Animation Demo'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text('Show/Hide Delete Button'),
            value: showDeleteButton,
            onChanged: (bool value) {
              setState(() {
                showDeleteButton = value;
              });
            },
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: items.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(items[index], index, animation);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String item, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: showDeleteButton ? 48.0 : 0.0,
            child: showDeleteButton
                ? IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {
                _removeItem(index);
              },
            )
                : Container(),
          ),
          Expanded(
            child: ListTile(
              title: Text(item),
            ),
          ),
        ],
      ),
    );
  }

  void _removeItem(int index) {
    final removedItem = items[index];
    _listKey.currentState!.removeItem(
      index,
          (context, animation) => _buildRemovedItem(removedItem, animation),
      duration: Duration(milliseconds: 300),
    );
    setState(() {
      items.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$removedItem removed')));
  }

  Widget _buildRemovedItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 48.0,
            child: IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(item),
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
