import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/singlesetup.dart';

class Screen_singleintro extends StatelessWidget {
  const Screen_singleintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tournment app"),
      ),
      body: Column(children: [
        const Text("Single elimination"),
        const Text(
            '''A single elimination tournament, also known as a knockout tournament, is a type of competition where participants are eliminated after losing a single game or match. In this type of tournament, the winner of each match advances to the next round while the loser is eliminated from the competition. The tournament continues in this fashion until there is only one player or team remaining, who is declared the winner of the tournament.

Single elimination tournaments are commonly used in a variety of sports, such as tennis, basketball, and soccer. They are also used in other types of competitions, such as video game tournaments and academic competitions.

One of the advantages of a single elimination tournament is that it is relatively easy to organize and manage, as there are no complicated schedules or multiple rounds to coordinate. However, one of the disadvantages is that it can be less fair than other types of tournaments, as a single loss can knock out a strong team or player who may have gone on to win in a double elimination or round-robin format.

Overall, single elimination tournaments can be exciting and intense, with high stakes and a sense of urgency for participants.'''),
        ElevatedButton(
          onPressed: ()=>gotosinglesetup(context),
          child: Text("setup"),
        ),
      ]),
    );
  }

  gotosinglesetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_singlesetup(),
      ),
    );
  }
}
