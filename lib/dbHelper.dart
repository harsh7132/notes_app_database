import 'dart:core';
import 'dart:core';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class dbHelper {
  var NoteTable = 'note';
  var Columnid = 'note_id';
  var ColumnTitle = 'note_title';
  var ColumnDesc = 'note_desc';

  Future<Database> openDb() async {
    var directory = await getApplicationDocumentsDirectory();

    directory.create(recursive: true);

    var Path = directory.path + 'notes_db.db';

    return await openDatabase(
      Path,
      version: 1,
      onCreate: (db, version) {
        db.execute('create table $NoteTable ('
            '$Columnid integer Primary Key autoincrement,'
            '$ColumnTitle text,'
            '$ColumnDesc text)');
      },
    );
  }

  Future<int> addNote(title, desc) async {
    var myDB = await openDb();

    return myDB.insert(NoteTable, {ColumnTitle: title, ColumnDesc: desc});
  }

  Future<List<Map<String, dynamic>>> fetchNotes() async {
    var myDB = await openDb();
    return myDB.query(NoteTable);
  }


  Future<int> update(change, id) async {
    final myDb = await openDb();
    return myDb.update(NoteTable, {ColumnTitle: change,ColumnDesc:change},
        where: '$Columnid = ?', whereArgs: ['$id']);
  }

  Future<int> delete(int id) async {
    final db = await openDb();
    return await db.delete(
      NoteTable,
      where: '${Columnid} = ?',
      whereArgs: [id],
    );
  }/*
  // for updating
  Future<int> updateData(change, id) async {
    var myDB = await openDb();
    return myDB.update(NoteTable, {ColumnTitle: change},
        where: '$Columnid = ?', whereArgs: ['$id']);
  }

  // for delet
  Future<int> deletData(id) async {
    var myDB = await openDb();
    return myDB.delete(NoteTable,where: ColumnTitle='?',whereArgs: Columnid='?');
  }*/
}
