import 'package:flutter/material.dart';
import 'package:notes_app_database/dbHelper.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: lol()));
}

/*class Next_page extends StatefulWidget {
  const Next_page({Key? key}) : super(key: key);

  @override
  State<Next_page> createState() => _Next_pageState();
}

class _Next_pageState extends State<Next_page> {
  @override
  void initState() {
    super.initState();
    getAllData();
  }

  final colors = [
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
  ];

  List<Map<String, dynamic>> arrnotes = [];

  void getAllData() async {
    arrnotes = await dbHelper().fetchNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void sharetext() {
      Share.share(
        dbHelper().ColumnTitle,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(seconds: 1),
                  child: SlideAnimation(
                      verticalOffset: 44.0,
                      child: FadeInAnimation(
                        child: Card(
                          child: StaggeredGrid.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 9,
                              children: [
                                StaggeredGridTile.count(
                                    crossAxisCellCount: 2,
                                    mainAxisCellCount: 3,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: colors[index],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              '$arrnotes[index][dbHelper().ColumnDesc]',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ]))),
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 2,
                                  mainAxisCellCount: 4,
                                  child: InkWell(
                                    onTap: () {
                                      *//*
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                              "$arrnotes[index][dbHelper().ColumnTitle]",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 60, top: 0),
                                            child: Text(
                                              '$arrnotes[index][dbHelper().Columnid]',
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  fontWeight: FontWeight.w200),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      )));
            },
          ),
        ),
      ),
    );
  }

  void updateData(change, changainto) async {
    await dbHelper().updateData(change, changainto);
  }
}*/

/*Scaffold(
        body: Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white38),
                    clipBehavior: Clip.hardEdge,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 180),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    sharetext();
                  },
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white38),
                      clipBehavior: Clip.hardEdge,
                      child: Center(
                          child: Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.white,
                      ))),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
              itemCount: arrnotes.length,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                updateData('hi', 'h1');
                setState(() {});
              },
              child: Text('update'))
        ],
      ),
    ));*/

/* ListTile(
                textColor: Colors.white,
                leading: Text(
                  arrnotes[index][dbHelper().Columnid].toString(),
                ),
                title: Text(
                  arrnotes[index][dbHelper().ColumnTitle],
                ),
                subtitle: Text(
                  arrnotes[index][dbHelper().ColumnDesc],
                ),
              ),*/

class lol extends StatefulWidget {
  const lol({Key? key}) : super(key: key);

  @override
  State<lol> createState() => _lolState();
}

class _lolState extends State<lol> {
  void initState() {
    super.initState();
    getAllData();
  }

  final colors = [
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
  ];

  List<Map<String, dynamic>> arrnotes = [];

  void getAllData() async {
    arrnotes = await dbHelper().fetchNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: List.generate(arrnotes.length, (index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 2,
                child: ScaleAnimation(
                  duration: Duration(milliseconds: 3000),
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: colors[index],
                        child: Center(
                          child: Text(
                            'lol',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
