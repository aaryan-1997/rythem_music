import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rythem_music/view/view1.dart';
import 'package:rythem_music/utils/extension.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Item> items = [
    Item(name: 'apple', quantity: 2),
    Item(name: 'orange', quantity: 1),
    Item(name: 'banana', quantity: 3),
    Item(name: 'apple', quantity: 1),
  ];

  @override
  void initState() {
    List<Item> distinctItems = items.distinctBy((e) => e.quantity).toList();
    for (var person in distinctItems) {
      log(person.name);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Greet(),
                Date(),
                SizedBox(
                  height: 25.0,
                ),
                SearchField(),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: 10,
                    //offset: Offset.infinite,
                  ),
                ],
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    35.0,
                  ),
                  topRight: Radius.circular(
                    35.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BottomSheetHeaderTitle(
                      titleText: 'Category',
                    ),
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisCount: 2,
                        children: [
                          CategoryGrid(
                            category: 'Relationship',
                            color: Colors.purple.shade500,
                          ),
                          CategoryGrid(
                            category: 'Career',
                            color: Colors.blue.shade300,
                          ),
                          CategoryGrid(
                            category: 'Education',
                            color: Colors.orange.shade500,
                          ),
                          CategoryGrid(
                            category: 'Other',
                            color: Colors.red.shade500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const BottomSheetHeaderTitle(
                      titleText: 'Consultant',
                    ),
                    Expanded(
                      child: ListView(
                        //how to use ListView.builder in this?
                        children: const [
                          ExerciseTile(
                            exercise: 'Bobby Singer',
                            subExercise: 'Education',
                            icon: Icons.my_library_music,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            exercise: 'Dean Winchester',
                            subExercise: 'Career',
                            icon: Icons.badge_outlined,
                            color: Colors.red,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.umbrella,
                            color: Colors.red,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.book,
                            color: Colors.yellow,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.music_note,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.mobile_friendly,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class Item {
  final String name;
  final int quantity;

  Item({required this.name, required this.quantity});
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.category,
    required this.color,
  });

  final String category;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: color,
        ),
        child: Center(
            child: Text(
          category,
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
