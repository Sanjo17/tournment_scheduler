import 'package:flutter/material.dart';
Widget buildMatchTile(Match match) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(match.team1.name),
        Text(match.team2.name),
      ],
    ),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Score: ${match.team1Score}'),
        Text('Score: ${match.team2Score}'),
      ],
    ),
    trailing: IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            TextEditingController team1ScoreController =
                TextEditingController(text: match.team1Score.toString());
            TextEditingController team2ScoreController =
                TextEditingController(text: match.team2Score.toString());

            return AlertDialog(
              title: const Text('Update Scores'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: team1ScoreController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: match.team1.name),
                  ),
                  TextField(
                    controller: team2ScoreController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: match.team2.name),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Update'),
                  onPressed: () {
                    setState(() {
                      match.team1Score = int.parse(team1ScoreController.text);
                      match.team2Score = int.parse(team2ScoreController.text);
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    ),
  );
}
