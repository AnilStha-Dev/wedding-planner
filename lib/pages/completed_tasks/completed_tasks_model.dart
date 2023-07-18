import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/create_task_new/create_task_new_widget.dart';
import '/components/empty_list_tasks/empty_list_tasks_widget.dart';
import '/custom/custom_animations.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_toggle_icon.dart';
import '/custom/custom_util.dart';
import '/pages/task_details/task_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class CompletedTasksModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.
  PagingController<DocumentSnapshot?, ToDoListRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    streamSubscriptions.forEach((s) => s?.cancel());
  }

  /// Additional helper methods are added here.

}
