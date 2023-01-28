import 'package:flutter/material.dart';
import 'package:notes_app_database/dbHelper.dart';

class New_notes extends StatefulWidget {
  const New_notes({Key? key}) : super(key: key);

  @override
  State<New_notes> createState() => _New_notesState();
}

class _New_notesState extends State<New_notes> {
  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void addData(title, desc) {
    dbHelper().addNote(title, desc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [Colors.yellowAccent, Colors.orangeAccent],
          radius: 0.5,
          center: Alignment.bottomCenter,
        )),
        child: Column(
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
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      var title = titleController.text.toString();
                      var desc = descController.text.toString();
                      addData(title, desc);

                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white38),
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: titleController,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: descController,
                maxLines: null,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    hintText: 'Type something...',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
