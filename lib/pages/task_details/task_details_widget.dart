import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/create_task_edit/create_task_edit_widget.dart';
import '/custom/custom_icon_button.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_util.dart';
import '/custom/custom_widgets.dart';
import '/pages/completed_tasks/completed_tasks_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_details_model.dart';
export 'task_details_model.dart';

class TaskDetailsWidget extends StatefulWidget {
  const TaskDetailsWidget({
    Key? key,
    this.toDoNote,
  }) : super(key: key);

  final DocumentReference? toDoNote;

  @override
  _TaskDetailsWidgetState createState() => _TaskDetailsWidgetState();
}

class _TaskDetailsWidgetState extends State<TaskDetailsWidget> {
  late TaskDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ToDoListRecord>(
      stream: ToDoListRecord.getDocument(widget.toDoNote!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final taskDetailsToDoListRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.edit_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    barrierColor: Color(0x230E151B),
                    context: context,
                    builder: (bottomSheetContext) {
                      return Padding(
                        padding: MediaQuery.of(bottomSheetContext).viewInsets,
                        child: CreateTaskEditWidget(
                          todoRef: taskDetailsToDoListRecord,
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    taskDetailsToDoListRecord.toDoName!,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: StreamBuilder<ToDoListRecord>(
                                    stream: ToDoListRecord.getDocument(
                                        taskDetailsToDoListRecord.reference),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      final textToDoListRecord = snapshot.data!;
                                      return Text(
                                        textToDoListRecord.toDoDescription!,
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 4.0,
                            thickness: 1.0,
                            indent: 16.0,
                            endIndent: 16.0,
                            color: FlutterFlowTheme.of(context).lineColor,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Due',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  dateTimeFormat('MMMEd',
                                      taskDetailsToDoListRecord.toDoDate!),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    dateTimeFormat('jm',
                                        taskDetailsToDoListRecord.toDoDate!),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (!taskDetailsToDoListRecord.toDoState!)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final toDoListUpdateData =
                                      createToDoListRecordData(
                                    toDoState: true,
                                    completedDate: getCurrentTimestamp,
                                  );
                                  await taskDetailsToDoListRecord.reference
                                      .update(toDoListUpdateData);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'You successfully completed a task!',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  );
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 250),
                                      reverseDuration:
                                          Duration(milliseconds: 250),
                                      child: CompletedTasksWidget(),
                                    ),
                                  );
                                },
                                text: 'Mark As Complete',
                                options: FFButtonOptions(
                                  width: 300.0,
                                  height: 56.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
