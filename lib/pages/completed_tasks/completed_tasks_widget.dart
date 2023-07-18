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
import 'completed_tasks_model.dart';
export 'completed_tasks_model.dart';

class CompletedTasksWidget extends StatefulWidget {
  const CompletedTasksWidget({Key? key}) : super(key: key);

  @override
  _CompletedTasksWidgetState createState() => _CompletedTasksWidgetState();
}

class _CompletedTasksWidgetState extends State<CompletedTasksWidget>
    with TickerProviderStateMixin {
  late CompletedTasksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 70.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletedTasksModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            barrierColor: Color(0x230E151B),
            context: context,
            builder: (bottomSheetContext) {
              return Padding(
                padding: MediaQuery.of(bottomSheetContext).viewInsets,
                child: Container(
                  height: double.infinity,
                  child: CreateTaskNewWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        backgroundColor: FlutterFlowTheme.of(context).primary,
        elevation: 8.0,
        child: Icon(
          Icons.add_rounded,
          color: FlutterFlowTheme.of(context).white,
          size: 32.0,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        title: Text(
          'Completed Tasks',
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).white,
              ),
        ),
        actions: [],
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
                Image.asset(
                  'assets/images/waves@2x.png',
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child:
                    PagedListView<DocumentSnapshot<Object?>?, ToDoListRecord>(
                  pagingController: () {
                    final Query<Object?> Function(Query<Object?>) queryBuilder =
                        (toDoListRecord) => toDoListRecord
                            .where('user', isEqualTo: currentUserReference)
                            .where('toDoState', isEqualTo: true)
                            .orderBy('completedDate', descending: true);
                    if (_model.pagingController != null) {
                      final query = queryBuilder(ToDoListRecord.collection);
                      if (query != _model.pagingQuery) {
                        // The query has changed
                        _model.pagingQuery = query;
                        _model.streamSubscriptions.forEach((s) => s?.cancel());
                        _model.streamSubscriptions.clear();
                        _model.pagingController!.refresh();
                      }
                      return _model.pagingController!;
                    }

                    _model.pagingController =
                        PagingController(firstPageKey: null);
                    _model.pagingQuery =
                        queryBuilder(ToDoListRecord.collection);
                    _model.pagingController!
                        .addPageRequestListener((nextPageMarker) {
                      queryToDoListRecordPage(
                        queryBuilder: (toDoListRecord) => toDoListRecord
                            .where('user', isEqualTo: currentUserReference)
                            .where('toDoState', isEqualTo: true)
                            .orderBy('completedDate', descending: true),
                        nextPageMarker: nextPageMarker,
                        pageSize: 25,
                        isStream: true,
                      ).then((page) {
                        _model.pagingController!.appendPage(
                          page.data,
                          page.nextPageMarker,
                        );
                        final streamSubscription =
                            page.dataStream?.listen((data) {
                          data.forEach((item) {
                            final itemIndexes = _model
                                .pagingController!.itemList!
                                .asMap()
                                .map((k, v) => MapEntry(v.reference.id, k));
                            final index = itemIndexes[item.reference.id];
                            final items = _model.pagingController!.itemList!;
                            if (index != null) {
                              items.replaceRange(index, index + 1, [item]);
                              _model.pagingController!.itemList = {
                                for (var item in items) item.reference: item
                              }.values.toList();
                            }
                          });
                          setState(() {});
                        });
                        _model.streamSubscriptions.add(streamSubscription);
                      });
                    });
                    return _model.pagingController!;
                  }(),
                  padding: EdgeInsets.zero,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<ToDoListRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                    noItemsFoundIndicatorBuilder: (_) => Center(
                      child: EmptyListTasksWidget(),
                    ),
                    itemBuilder: (context, _, listViewIndex) {
                      final listViewToDoListRecord =
                          _model.pagingController!.itemList![listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskDetailsWidget(
                                  toDoNote: listViewToDoListRecord.reference,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x230E151B),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 0.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewToDoListRecord.toDoName!,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'MMMEd',
                                                    listViewToDoListRecord
                                                        .completedDate!),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'jm',
                                                    listViewToDoListRecord
                                                        .completedDate!),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: ToggleIcon(
                                        onPressed: () async {
                                          final toDoListUpdateData = {
                                            'toDoState': !listViewToDoListRecord
                                                .toDoState!,
                                          };
                                          await listViewToDoListRecord.reference
                                              .update(toDoListUpdateData);
                                        },
                                        value:
                                            listViewToDoListRecord.toDoState!,
                                        onIcon: Icon(
                                          Icons.check_circle,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 25.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.radio_button_off,
                                          color: Color(0xFF2B343A),
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
