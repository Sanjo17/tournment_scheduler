import 'package:flutter/material.dart';
import 'package:tournment_scheduler/widgets/button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String buttontext1;
  final String buttontext2;
  final TextEditingController controller;
  final Function() save;
  VoidCallback cancel;
  DialogBox(
      {Key? key,
      required this.controller,
      required this.save,
      required this.cancel,
      required this.buttontext1,
      required this.buttontext2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            Row(
              children: [
                Buttons(text: buttontext1, onpressed: save),
                const SizedBox(
                  width: 30,
                ),
                Buttons(text: buttontext2, onpressed: cancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
