import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../widgets/card_contact.dart';
import '../widgets/drawer_widget.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contact';
  final faker = Faker();

  ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: false,
      ),
      drawer: const DrawerWidget(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return CardContact(
            imageUrl: "https://picsum.photos/id/$index/160/160",
            name: faker.person.name(),
            message: faker.lorem.sentence(),
          );
        },
      ),
    );
  }
}
