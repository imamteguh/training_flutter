import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool switchStatus = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing: Switch.adaptive(
              activeColor: Colors.blue,
              value: switchStatus,
              onChanged: (value) {
                setState(() {
                  switchStatus = !switchStatus;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Alert"),
            trailing: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm"),
                      content: Text("Apa ini sebuah alert dialog?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Tidak"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Benar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Show"),
            ),
          ),
        ],
      ),
    );
  }
}
