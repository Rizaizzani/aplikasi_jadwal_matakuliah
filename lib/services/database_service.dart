import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/schedule_model.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._();
  static Database? _database;

  DatabaseService._();

  static DatabaseService get instance => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('schedules.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE schedules(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            day TEXT,
            startTime TEXT,
            endTime TEXT
          )
        ''');
      },
    );
  }

  Future<int> addSchedule(ScheduleModel schedule) async {
    final db = await database;

    final conflicts = await db.query(
      'schedules',
      where: 'day = ? AND ((startTime BETWEEN ? AND ?) OR (endTime BETWEEN ? AND ?))',
      whereArgs: [schedule.day, schedule.startTime, schedule.endTime, schedule.startTime, schedule.endTime],
    );

    if (conflicts.isNotEmpty) {
      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 1,
          channelKey: 'schedule_conflict',
          title: 'Konflik Jadwal!',
          body: 'Jadwal "${schedule.title}" bertabrakan dengan jadwal lain.',
        ),
      );
      return -1;
    }

    return db.insert('schedules', schedule.toMap());
  }

  Future<List<ScheduleModel>> getSchedules() async {
    final db = await database;
    final result = await db.query('schedules');
    return result.map((map) => ScheduleModel.fromMap(map)).toList();
  }

  Future<int> deleteSchedule(int id) async {
    final db = await database;
    return db.delete('schedules', where: 'id = ?', whereArgs: [id]);
  }
}
