import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/doublesetup.dart';

class Screen_doubleintro extends StatelessWidget {
  const Screen_doubleintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tournment app"),
      ),
      body: Column(children: [
        const Text("Double elimination"),
        const Text(
            '''A double elimination tournament is a type of competition where participants have to lose two games or matches in order to be eliminated from the competition. In this type of tournament, each participant has two chances to stay in the tournament: if they lose one match, they are placed in a loser's bracket and have to win their next match to stay in the competition. If they lose again, they are eliminated from the tournament.

Double elimination tournaments are commonly used in a variety of sports, such as baseball, softball, and pool, as well as in video game competitions and academic competitions. They are often seen as a fairer alternative to single elimination tournaments, as participants have more than one chance to prove themselves and a single loss does not automatically eliminate them from the competition.

One advantage of a double elimination tournament is that it can be more fair than a single elimination tournament, as participants have a second chance to advance in the competition. However, one disadvantage is that it can be more complicated to organize and manage, as there are multiple rounds and schedules to coordinate.

Overall, double elimination tournaments can be exciting and intense, with high stakes and a sense of urgency for participants, while also providing a fairer and more balanced competition format.'''),
        ElevatedButton(
          onPressed: ()=>gotodoublesetup(context),
          child: const Text("setup"),
        ),
      ]),
    );
  }
  gotodoublesetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_doublesetup(),
      ),
    );
  }
}
