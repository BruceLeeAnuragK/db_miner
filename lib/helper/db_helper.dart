import 'package:db_miner/model/QuotesModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBhelper {
  DBhelper._private();
  static final DBhelper dbHelper = DBhelper._private();
  late Database database;

  String tableQt = "QuotesTable";
  String tableBl = "Balance";
  String tableCt = "Category";

  String qtId = "Id";
  String qtAuthor = "Author";
  String qtImage = "Images";
  String qtQuotes = "Quotes";

  initDB() async {
    String dbPath = await getDatabasesPath();
    String dbName = "DB1.db";
    String path = join(dbPath, dbName);
    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, ver) {
        db.execute(
            'CREATE TABLE IF NOT EXISTS $tableQt($qtId INTEGER PRIMARY KEY AUTOINCREMENT,$qtQuotes TEXT, $qtImage INTEGER,  $qtAuthor TEXT)');
      },
    );
  }

  Future<int> insertQuotes({required QuotesModel quotesModel}) async {
    String query =
        "INSERT INTO $tableQt($qtId,$qtQuotes, $qtAuthor, $qtImage) VALUES(?,?,?,?)";
    List args = [
      quotesModel.id,
      quotesModel.quotes,
      quotesModel.author,
      quotesModel.image,
    ];
    return await database.rawInsert(query, args);
  }
  //'CREATE TABLE IF NOT EXISTS $tableTr($trId INTEGER PRIMARY KEY AUTOINCREMENT,$trRemarks TEXT,$trAmt INTEGER,$trType TEXT CHECK($trType IN("INCOME","EXPANSE")),$trCat TEXT,$trDate TEXT)'
}
