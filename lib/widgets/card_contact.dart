import 'package:flutter/material.dart';

class CardContact extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;

  CardContact({
    required this.imageUrl,
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      visualDensity: VisualDensity.comfortable,
      subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text("10:10"),
      dense: true,
    );
  }
}
