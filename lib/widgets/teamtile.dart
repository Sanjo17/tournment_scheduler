import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TeamTile extends StatelessWidget {
  Function(BuildContext)? delete;
  Function() rename;

  String teamname;
  TeamTile(
      {super.key,
      required this.teamname,
      required this.delete,
      required this.rename});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Slidable(
          endActionPane: ActionPane(motion: const StretchMotion(), children: [
            SlidableAction(
              onPressed: delete,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(8),
            )
          ]),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(9)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 5, left: 50),
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(teamname),
                      ),
                      IconButton(
                          onPressed: rename, icon: const Icon(Icons.edit)),
                    ]),
              )),
        ));
  }
}
