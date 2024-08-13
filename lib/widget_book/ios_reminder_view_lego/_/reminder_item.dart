import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:styled_widget/styled_widget.dart';

class ReminderItemView extends StatefulWidget {
  ReminderItemView(
      {super.key,
        required this.tagColor,
        required this.ReminderName,
        required this.numberOfTodos});

  final Color tagColor;
  final String ReminderName;
  final String numberOfTodos;

  @override
  State<ReminderItemView> createState() => _ReminderItemViewState();
}

class _ReminderItemViewState extends State<ReminderItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Gap(20),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: widget.tagColor),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        widget.ReminderName,maxLines: 1, overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ).expanded(),
                  ],
                ).expanded(),
                Container(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.numberOfTodos),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
                Gap(5),
              ],
            ),
          )
        ],
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: ReminderItemView(
      numberOfTodos: "3",
      ReminderName: "Reminder",
      tagColor: Colors.orange,
    ).center(),
  ));
}
