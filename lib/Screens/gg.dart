import 'package:flutter/material.dart';

void main() => runApp(const TournamentApp());

class TournamentApp extends StatelessWidget {
  const TournamentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tournament App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TournamentHomePage(),
    );
  }
}

class TournamentHomePage extends StatefulWidget {
  const TournamentHomePage({super.key});

  @override
  _TournamentHomePageState createState() => _TournamentHomePageState();
}

class _TournamentHomePageState extends State<TournamentHomePage> {
  final List<String> tournaments = [
    'Tournament 1',
    'Tournament 2',
    'Tournament 3',
  ];

  List<String> userData = [];

  void addUserData(String data) {
    setState(() {
      userData.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournaments'),
      ),
      body: ListView.builder(
        itemCount: tournaments.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(tournaments[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TournamentDetailsPage(
                    tournamentName: tournaments[index],
                    addUserData: addUserData,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog to add user data
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add User Data'),
                content: TextField(
                  onChanged: (value) {
                    // Store the entered data
                    // You can perform validation or data manipulation here
                    // before saving it to the userData list
                    // For simplicity, we're directly adding it to the list
                    userData.add(value);
                  },
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Add'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Call the addUserData function to update the UI
                      addUserData(userData.last);
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TournamentDetailsPage extends StatelessWidget {
  final String tournamentName;
  final Function addUserData;

  const TournamentDetailsPage(
      {super.key, required this.tournamentName, required this.addUserData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(tournamentName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Details for $tournamentName'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Show a dialog to add user data
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Add User Data'),
                        content: TextField(
                          onChanged: (value) {
                            // Store the entered data
                            // You can perform validation or data manipulation here
                            // before saving it to the userData list
                            // For simplicity, we're directly adding it to the list
                            addUserData(value);
                          },
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Add'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Add User Data'),
              ),
            ],
          ),
        ));
  }
}
