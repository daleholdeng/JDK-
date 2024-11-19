import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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
          $_lname lastName TEXT NOT NULL,
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


    void addTask(String content,) async{
      final db = await database;
      await db.insert(_tablename,
      {
        _fname: content,
        _lname: content,
        _email: content,
        _password: content,
        _manager: content,
        _dept: content,
        _usertype: 0
      },


      );
    }
}