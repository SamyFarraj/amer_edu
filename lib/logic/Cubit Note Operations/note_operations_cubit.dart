import 'package:bloc/bloc.dart';
import 'package:cron/cron.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../../Data/Sqldb.dart';
import '../../services/local notification service.dart';

part 'note_operations_state.dart';

class NoteOperationsCubit extends Cubit<NoteOperationsState> {
  NoteOperationsCubit() : super(NoteOperationsInitial());

  static NoteOperationsCubit get(context) {
    return BlocProvider.of(context);
  }

  TextEditingController titleNotes = new TextEditingController();
  TextEditingController notes = new TextEditingController();
  TextEditingController desNote = new TextEditingController();
  TextEditingController isDone = new TextEditingController();
  TextEditingController isStart = new TextEditingController();
  String importance = 'very important';
  int idPriority = 0;
  String typeMission = 'Work';
  int idTypeMission = 0;
  SqlDB sqlDB = SqlDB();
  List<String> priority = ['very important', 'Important', 'Normal'];
  List<String> typeMissionList = [
    'Work',
    'Study',
    'Family',
    'Game',
    'Other',
  ];




  List<Map<String, Object?>> allNotes = [];

  List<Map<String, Object?>> notesCompleted = [];
  List<Map<String, Object?>> notesInProcess = [];
  List<Map<String, Object?>> notesUncompleted = [];
  List<Map<String, Object?>> allNotesResecived = [];
  List<Map<String, Object?>> veryImportantNotes = [];
  List<Map<String, Object?>> importantNotes = [];
  List<Map<String, Object?>> normalNotes = [];

  late String showedDate = 'select Date';
  late String showedStartTime = '';
  late String showedEndTime = '';

  DateTime date = DateTime(
    2001,
    1,
    1,
  );

  TimeOfDay _time = TimeOfDay.now();
  late TimeOfDay picked=TimeOfDay.now();
  LocalNotificationService notificationService =LocalNotificationService();
  initailenotifaction(LocalNotificationService notificationService)
  {
    this.notificationService=notificationService;
  }

  getAllNoteFromTable() async {
    List<Map<String, Object?>> response = await sqlDB.readData("SELECT * FROM 'Note'");
    allNotesResecived = response;
    veryImportantNotes.clear();
    importantNotes.clear();
    normalNotes.clear();


    for (int i = 0; i < response.toList().length; i++) {
      if (response[i]['importance'] == 'very important') {
        veryImportantNotes.add(response[i]);
        print('sfsdfsd');
      } else if (response[i]['importance'] == 'Important') {
        importantNotes.add(response.toList()[i]);
      } else if (response[i]['importance'] == 'Normal') {
        normalNotes.add(response[i]);
      }
    }
    print('the data is ${veryImportantNotes.toList().length}');
    print('the data is  $veryImportantNotes');
    emit(RefreshNoteState());

/*
    for(int i=0;i<response.toList().length;i++)
      {
        print('1111');
        print('the data is ${ response.toList()[i]['titleNotes']}');

            allNotes[i].titleNotes=response.toList()[i]!['titleNotes'].toString();
            allNotes[i].notes=response.toList()[i]['notes'].toString();
            allNotes[i].importance=response.toList()[i]['importance'].toString();
            allNotes[i].isStart=response.toList()[i]['isStart'].toString();
            allNotes[i].isDone=response.toList()[i]['isDone'].toString();
            allNotes[i].startTime=response.toList()[i]['startTime'].toString();
            allNotes[i].endTime=response.toList()[i]['endTime'].toString();
            allNotes[i].typeMission=response.toList()[i]['typeMission'].toString();


      }


 */

    //print(allNotes[0].titleNotes);
  }


  getAllNoteFromTableByStatus() async {
    List<Map<String, Object?>> response = await sqlDB.readData("SELECT * FROM 'Note'");
    allNotesResecived = response;
    notesCompleted.clear();
    notesUncompleted.clear();
    notesInProcess.clear();


    for (int i = 0; i < response.toList().length; i++) {
      if (response[i]['isDone'] == 'true') {
        notesCompleted.add(response[i]);
        print('sfsdfsd');
      } else if (response[i]['isDone'] == 'false') {
        notesUncompleted.add(response.toList()[i]);
      } else if (response[i]['isDone'] == '') {
        notesInProcess.add(response[i]);
      }
    }
    print('the data is ${veryImportantNotes.toList().length}');
    print('the data is  $veryImportantNotes');
    emit(RefreshNoteState());

/*
    for(int i=0;i<response.toList().length;i++)
      {
        print('1111');
        print('the data is ${ response.toList()[i]['titleNotes']}');

            allNotes[i].titleNotes=response.toList()[i]!['titleNotes'].toString();
            allNotes[i].notes=response.toList()[i]['notes'].toString();
            allNotes[i].importance=response.toList()[i]['importance'].toString();
            allNotes[i].isStart=response.toList()[i]['isStart'].toString();
            allNotes[i].isDone=response.toList()[i]['isDone'].toString();
            allNotes[i].startTime=response.toList()[i]['startTime'].toString();
            allNotes[i].endTime=response.toList()[i]['endTime'].toString();
            allNotes[i].typeMission=response.toList()[i]['typeMission'].toString();


      }


 */

    //print(allNotes[0].titleNotes);
  }

  void searchByDate(String Date)
  {
    emit(SearchByDateState());
    final suggestions=allNotesResecived.toList().where((element) {
      final datetime=element['Date'].toString();
      return datetime.contains(Date);
    }).toList();
    allNotes=suggestions;

    emit(RefreshNoteState());
  }
  void searchByStatus(String Date)
  {
    getAllNoteFromTable();
    final suggestions=allNotesResecived.toList().where((element) {
      final datetime=element['isDone'].toString();
      return datetime.contains(Date);
    }).toList();
    print("the date i s${Date}");
    if(Date=="true")
    {
      notesCompleted=suggestions;

    }
    else if(Date=="false")
    {
      notesUncompleted=suggestions;

    }
    else if(Date =='')
    {
      notesInProcess=suggestions;

    }


    emit(RefreshNoteState());
  }


  showSelectedDate() {
    if (date != DateTime(2021)) {
      showedDate = DateFormat("yyyy/MM/dd").format(date);
    }
    emit(ChangeDateNoteAppState());
  }

  Future<Null> selectTime(BuildContext context) async {
    picked = (await showTimePicker(
      context: context,
      initialTime: _time,
    ))!;
    //  setState(() {
    _time = picked;
    showedStartTime="${picked.hourOfPeriod.toString()}:${picked.minute.toString()}  ${picked.period.name.toString()}";

    emit(ChangeDateNoteAppState());
    print(picked);
    //   });
  }
  Future<Null> selectEndTime(BuildContext context) async {
    picked = (await showTimePicker(
      context: context,
      initialTime: _time,
    ))!;
    //  setState(() {
    _time = picked;
    //showedEndTime="${picked.hourOfPeriod.toString()}:${picked.minute.toString()}";
    showedEndTime="${picked.hourOfPeriod.toString()}:${picked.minute  .toString()}  ${picked.period.name.toString()}";

    emit(ChangeDateNoteAppState());
    print(picked);
    //   });
  }

  selectTypeMission(String typeMission) {
    for (int i = 0; i < typeMissionList.length; i++) {
      if (typeMission == typeMissionList[i]) {
        typeMission = typeMissionList[i];
        idTypeMission = i;
        print('the id type mission ${typeMissionList[i]}');

        print('the id type mission ${idTypeMission}');

        break;
      }
    }
    emit(ChoseSelectTypeNoteState());
    emit(RefreshNoteState());
  }

  selectPriorityType(String prioritys) {
    for (int i = 0; i < priority.length; i++) {
      if (prioritys == priority[i]) {
        importance = priority[i];
        idPriority = i;
        print('the id pro ${idPriority}');

        break;
      }
    }
    emit(ChosePriorityNoteState());
    emit(RefreshNoteState());
  }

  deleteData() async {
    sqlDB.deltedate();
  }

  insertIntoTable() async {
    emit(AddNoteState());
    print("the type is ${typeMission}");
    DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    int response = await sqlDB.insertData(
        "INSERT INTO 'Note'('titleNotes','notes','isDone','isStart','importance','typeMission','startTime','endTime','Date') VALUES ('${titleNotes.text}','${desNote.text}','${isDone.text}','${isStart.text}','${importance}','${typeMission}','${showedStartTime}','${showedEndTime}','${showedDate}')");
    titleNotes.clear();
    notes.clear();
    desNote.clear();
    isDone.clear();
    isStart.clear();

    getAllNoteFromTable();
    final cron=Cron();

    /*

  * النجوم هنا تشير الى انه
  *
  النجمة الاولى من اليسار ثواني بعدين دقائق بعدين ساعات
  ببعدين ايام بعدين اشهر بعدين سنوات
  في المثال تحت انا حاطط انو كل ثانية يطبع جملة evrey seconde


  الشكل التالي بخليها تعمل ل
  خمس دقايق اول ما يشتغل التطبيق فقط
  ( ' 1,2,3,4,5 * * * *)

  الشكل التالي لنخي التابع يشتغل كل احد بشهر ماي مثلا
  ( ' * * * May Sunday
  * */
    cron.schedule(Schedule.parse('263 18 * * *'), () async=> {
    notificationService.sendNotifivation("Missions", "New Missions")

    }

    );

    print(response);
  }


  deleteFromTable(String id) async {
    int response = await sqlDB.deleteData("DELETE FROM 'Note' WHERE id= ${id}");
    emit(RefreshNoteState());
    getAllNoteFromTable();
    print('the data is $response');
  }

  updateValueTable(String isDone, String id) async {
    int response = await sqlDB.updateData(
        "UPDATE  'Note' SET isDone= '${isDone}' WHERE id = ${id}");
    print('the data is $response');
  }
}
