import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_things/provider/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder:
          (context, secondNumberProvider, child) => Scaffold(
            floatingActionButton: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {
                secondNumberProvider.add();
              },
              child: const Icon(Icons.add),
            ),
            appBar: AppBar(backgroundColor: Colors.blue),
            body: SizedBox(
              child: Column(
                children: [
                  Text(
                    secondNumberProvider.numbers.last.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: secondNumberProvider.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          secondNumberProvider.numbers[index].toString(),
                          style: const TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
