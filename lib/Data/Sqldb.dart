import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDB{

static Database? _db ;
Future<Database?> get db async {
  if(_db==null)
    {
      _db=  await initialD();
return _db;
    }
  else
     return _db;
}
String pathData='';
  initialD()async
  {
    String dataBaseBath=await getDatabasesPath();
    String path=join(dataBaseBath,'NoteApp.db');
    pathData=path;
    Database noteAppDb=await openDatabase(path,onCreate: _onCreat,version:1 ,onUpgrade: _onUpgrade);
    return noteAppDb;
  }
deltedate()async
{
  print("delete");
  await deleteDatabase(pathData);
}
//تابع للتحديث على الداتا بيز (مممكن التحديث يكون اضافة جدول جديد
  //فانت مابصير تكريت جدول وترجع تستدعيoncreat
  //لازم تستدعي ال upgrade
  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    if (oldVersion < newVersion) {
      print('upgrage');
      // you can execute drop table and create table
      db.execute("ALTER TABLE Note ADD COLUMN Date TEXT;");



    }
  }
  _onCreat(Database db , int version)
  async {
  /*
  ملاحظات
  يفضل مايكون اسم العامود نفس اسم الداتا بيز 1
  يفضل الاوتوانكرمينت تنحط اخر شي 2
   */
    await db.execute(

        'CREATE TABLE "Note" (id INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT, titleNotes TEXT, notes TEXT, isDone TEXT, isStart TEXT,importance TEXT,day TEXT,typeMission TEXT,startTime TEXT,endTime TEXT,Date TEXT)');
  }



  readData(String sql)async
  {
    Database? mydb=await db;

    List<Map<String, Object?>> response=await mydb!.rawQuery(sql);

    return response;
  }


insertData(String sql)async
{
  Database? mydb=await db;

  print('the sql string is ${sql}');
  int response=await mydb!.rawInsert(sql);
  return response;
}

updateData(String sql)async
{
  Database? mydb=await db;

  int response=await mydb!.rawUpdate(sql);
  return response;
}

deleteData(String sql)async
{
  Database? mydb=await db;

  int response=await mydb!.rawDelete(sql);
  return response;
}

deleteTable(String nameTable)async
{
  Database? mydb=await db;
 int response= await mydb!.delete('Note');
 return response;
}

}