import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:yoga_app_1/MODEL/yoga_model.dart';

class YogaDatabase {
  static final YogaDatabase instance = YogaDatabase._init();
  Database? _database;
  YogaDatabase._init();
  Future<Database> initializeDatabase(String filePth) async {
    final db = await getDatabasesPath();
    String path = join(db, filePth);
    return await openDatabase(db, version: 1, onCreate: _createDb);
  }

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initializeDatabase("YogaDatabase");
    return _database;
  }

  Future _createDb(Database db, int version) async {
    final idType = "PRIMARY INTEGER KEY AUTOINCREMENT";
    final textType = "TEXT NOT NULL";
    final boolType = "BOOLEAN NOT NULL";
    await db.execute('''
     CREATE TABLE ${YogaModel.FirstYoga}(
     ${YogaModel.IDName} $idType,
     ${YogaModel.ImageNme} $textType,
     ${YogaModel.SecondsOrNot} $boolType,
     ${YogaModel.YogaName} $textType
     )
     
     ''');
    await db.execute('''
    CREATE TABLE ${YogaModel.SecondYoga}(
     ${YogaModel.YogaName} $textType,
     ${YogaModel.SecondsOrNot} $boolType,
     ${YogaModel.ImageNme} $textType,
     ${YogaModel.IDName} $idType
     )
   
    ''');
    await db.execute('''
      CREATE ${YogaModel.ThirdYoga}(
     ${YogaModel.IDName} $idType,
     ${YogaModel.ImageNme} $textType,
     ${YogaModel.SecondsOrNot} $boolType,
     ${YogaModel.YogaName} $textType
     )
    
    ''');
    await db.execute('''
      CREATE ${YogaModel.YogaWorkOutSummary}(
     ${YogaModel.IDName} $idType,
     ${YogaModel.BackImage} $textType,
     ${YogaModel.TimeTaken} $textType,
     ${YogaModel.TotalNoOfWorkout} $textType
     ${YogaModel.YogaWorkOutName} $textType
     )
    
    ''');
  }

  Future<Yoga?> insert(Yoga yoga) async {
    final db = await instance.database;
    final id = db!.insert(YogaModel.FirstYoga, yoga.toJason());
    return yoga.Copy(id: id);
  }

  Future<List<Yoga>> readAllJason() async {
    final db = await instance.database;
    final orderby = "${YogaModel.IDName} ASC";
    final query = await db!.query(YogaModel.FirstYoga, orderBy: orderby);
    return query.map((jason) => Yoga.fromJason(jason)).toList();
  }

  Future<Yoga?> readOneYoga(int id) async {
    final db = await instance.database;
    final map = await db!.query(YogaModel.YogaName,
        columns: YogaModel.FirstYogaColumnName,
        where: '${YogaModel.IDName}=?',
        whereArgs: [id]);
    if(map.isNotEmpty)
      {
        return Yoga.fromJason(map.first);

      }
    else{
      return null;
    }
  }
  Future<YogaSummary?> insertYogaSummary(YogaSummary yogaSummary) async{
    final db=await instance.database;
    final orderby=db!.insert(YogaModel.YogaWorkOutSummary, yogaSummary.toJason());
    return yogaSummary.Copy(id:id);

  }
  Future<List<YogaSummary>> readAllYogaSummary() async{
    final db=await instance.database;
    final orderby='${YogaModel.YogaWorkOutSummary} ASC';
    final query=db!.query(YogaModel.YogaWorkOutSummary,orderBy: orderby);
    return query.map((jason) => YogaSummary.fromJason(jason)).toList();

  }
}
