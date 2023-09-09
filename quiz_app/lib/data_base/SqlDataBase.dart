import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqlDataBase
{
  static Database? _db;
Future<Database?> get db async
{
  if(_db==null) {
    _db = await initialDb();
    return _db;
  }
  else
    return _db;


}
//Quizapp.db
  initialDb() async
  {
   String dataBasePath = await getDatabasesPath();
   String path = join(dataBasePath,'Quizappeee.db',);
   Database mydb = await openDatabase(path,onCreate: _onCreat,version: 1,onUpgrade: _upgrade);
  return mydb;
  }

  _onCreat(Database db, int version) async
  {
    await db.execute('''
    CREATE TABLE 'levels'
    (
    "id" TEXT NOT NULL,
    "lock" TEXT NOT NULL,
     "grade" TEXT NOT NULL
 )
    ''');
    print('creat database=============================');




  }
readData(String sql) async
{
  Database? mydb= await db;
  List<Map> response =await mydb!.rawQuery(sql);
  return response;
}
  insertData(String sql) async
  {
    Database? mydb= await db;
    int response =await mydb!.rawInsert(sql);
    return response;
  }
  deleteData(String sql) async
  {
    Database? mydb= await db;
    int response =await mydb!.rawDelete(sql);
    return response;
  }
  updateData(String sql) async
  {
    Database? mydb= await db;
    int response =await mydb!.rawUpdate(sql);
    return response;
  }



   _upgrade(Database db, int oldVersion, int newVersion)
  {
    print('upgrade=====================================');
  }
}