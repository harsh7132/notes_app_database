import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app_database/new_note.dart';

import 'dbHelper.dart';


void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Main_page(),
        theme: ThemeData(primaryColor: Colors.blue),
      ),
  );
}

class Main_page extends StatefulWidget {

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {

  @override
  void initState() {
    super.initState();
    getAllData();
  }
  List<Map<String, dynamic>> arrnotes = [];

  void getAllData() async {
    arrnotes = await dbHelper().fetchNotes();
    setState(() {});
  }
  /*final colors = [
    Colors.pink,
    Colors.yellow,
    Colors.blue,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.orangeAccent,
    Colors.deepPurpleAccent,
    Colors.red,
    Colors.redAccent,
    Colors.lightBlueAccent,
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: SizedBox(
        height: 800,
        width: 400,
        child: Stack(
          children: [
            StaggeredGrid.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 9,
                        children: arrnotes.map((note) =>  StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: note[dbHelper().Columnid]%3==0? 4 : 2,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      'hiiii', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ]))),).toList()

                ),
            Container(
              height: 50,
              width: 50,
              child: IconButton(icon: Icon(Icons.add),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => New_notes()));
              }),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(50)),
            )
          ],
        )
        ),
      );
  }
}
