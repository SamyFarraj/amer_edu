part of 'note_operations_cubit.dart';

@immutable
abstract class NoteOperationsState {}

class NoteOperationsInitial extends NoteOperationsState {}
class AddNoteState extends NoteOperationsState{}
class DeleteNoteState extends NoteOperationsState{}
class UpdateNoteState extends NoteOperationsState{}
class LoadingNoteState extends NoteOperationsState{}
class ChosePriorityNoteState extends NoteOperationsState{}
class RefreshNoteState extends NoteOperationsState{}
class ChangeDateNoteAppState extends NoteOperationsState{}
class ChoseSelectTypeNoteState extends NoteOperationsState{}
class SearchByDateState extends NoteOperationsState{}
