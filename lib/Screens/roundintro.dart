import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/roundsetup.dart';

class Screen_roundintro extends StatelessWidget {
  const Screen_roundintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tournment app"),
      ),
      body: Column(children: [
        const Text("Round Robin"),
        const Text(
            '''A round-robin tournament is a type of competition where each participant plays against every other participant in the tournament. In this type of tournament, each participant plays the same number of matches, and the winner is determined based on the total number of wins and losses or points earned throughout the tournament.

Round-robin tournaments are commonly used in a variety of sports, such as soccer, tennis, and golf, as well as in other types of competitions, such as academic competitions. They are often seen as a fairer alternative to single elimination tournaments, as every participant has an equal chance to play against every other participant and prove themselves.

One advantage of a round-robin tournament is that it provides a more complete and balanced view of each participant's performance, as they have to play against every other participant in the tournament. It also reduces the impact of luck and chance, as a single loss does not necessarily eliminate a participant from the competition. However, one disadvantage is that it can be more time-consuming and difficult to organize, as each participant has to play multiple matches.

Overall, round-robin tournaments can provide a fair and balanced competition format that allows every participant to showcase their skills and abilities. They can also be exciting and intense, with participants competing against each other multiple times throughout the tournament.'''),
        ElevatedButton(
          onPressed: () => gotoroundsetup(context),
          child: const Text("setup"),
        ),
      ]),
    );
  }

  gotoroundsetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_roundsetup(),
      ),
    );
  }
}
