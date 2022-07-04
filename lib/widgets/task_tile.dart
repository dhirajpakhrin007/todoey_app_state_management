import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function(bool?) checkboxCallback;
  final Function() delectTask;
  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.name,
    required this.checkboxCallback,
    required this.delectTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: delectTask,
      trailing: Checkbox(
        activeColor: Color(0xFF070133),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}

// (bool? checkboxState) {
//           setState(() {
//             isChecked = checkboxState!;
//           });
//         },

