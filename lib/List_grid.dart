import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  _ListGridState createState() => _ListGridState(); // Fixed class name here
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', 'apple', 'banana', 'mango'];
  Map fruits_person = {
    'fruits': ['orange', 'apple', 'banana', 'mango'],
    'names': ['enni', 'fareha', 'samira', 'pinki'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and Grid'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: GridView.builder(
                itemCount: fruits.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        onTap: () {
                          print((fruits_person['fruits'][index]));
                        },
                        leading: Icon(Icons.food_bank),
                        trailing: Icon(Icons.dangerous),
                        title: Text(fruits_person['fruits'][index]),
                        subtitle: Text(fruits_person['names'][index]),
                      )
                  );
                },
              ),
            ),
        
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        print((fruits_person['fruits'][index]));
                      },
                      leading: Icon(Icons.person),
                      title: Text(fruits_person['fruits'][index]),
                      subtitle: Text(fruits_person['names'][index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
