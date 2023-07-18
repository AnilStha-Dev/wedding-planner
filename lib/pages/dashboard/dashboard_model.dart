import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/create_task_new/create_task_new_widget.dart';
import '/components/empty_list_tasks/empty_list_tasks_widget.dart';
import '/custom/custom_animations.dart';
import '/custom/custom_icon_button.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_timer.dart';
import '/custom/custom_toggle_icon.dart';
import '/custom/custom_util.dart';
import '/custom/custom_widgets.dart';
import '/main.dart';
import '/pages/navbar/navbar_widget.dart';
import '/pages/task_details/task_details_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  int timerMilliseconds = 11111111;
  String timerValue =
      StopWatchTimer.getDisplayTime(11111111, milliSecond: false);
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for ListView widget.
  PagingController<DocumentSnapshot?, ToDoListRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerController.dispose();
    streamSubscriptions.forEach((s) => s?.cancel());
  }

  /// Additional helper methods are added here.

}
