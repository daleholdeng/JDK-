import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/task.dart';

class DatabaseService{
    static Database? _db;
    static final DatabaseService instance = DatabaseService._constructor();

    final String _tablename = "account";
    final String _id = "accountID";
    final String _fname = "firstName";
    final String _lname = "lastName";
    final String _email = "email";
    final String _password = "password";
    final String _manager = "manager";
    final String _dept = "department";
    final String _usertype = "userType";

    DatabaseService._constructor();

    Future<Database> get database async{
      if (_db !=null) return _db!;
      _db =await getDatabase();
      return _db!;
    }

    Future<Database> getDatabase() async{
      final databaseDirPath = await getDatabasesPath();
      final databasePath= join(databaseDirPath, "timetrackerdb.db");
      final database = await openDatabase(
        databasePath,
        onCreate: (db, version){
          db.execute('''
          CREATE TABLE $_tablename (
          $_id INTEGER PRIMARY KEY NOT NULL,
          $_fname firstName TEXT NOT NULL,
          $_email email TEXT NOT NULL UNIQUE,
          $_password password TEXT NOT NULL,
          $_manager manager TEXT NOT NULL,
          $_dept department TEXT NOT NULL,
          $_usertype userType TEXT NOT NULL
          )
          ''');
        },
      );
      return database;
    }


    void register(String fn, String email, String pass,String manager, String dept) async{
      final db = await database;
      await db.insert(_tablename,
      {
        _fname: fn,
        _email: email,
        _password: pass,
        _manager: manager,
        _dept: dept,
        _usertype: 0
      },


      );
    }

    Future<List<Task>> getTask() async {

      final db = await database;
      final data = await db.query(_tablename);
      List<Task> tasks= data.map((e) => Task(id: e["id"] as int, fn: e["fn"] as String, email: e["email"]as String, pass: e["pass"]as String, manager: e["manager"]as String, dept: e["dept"]as String, user: e["user"]as String)).toList();
      return tasks;
    }
}