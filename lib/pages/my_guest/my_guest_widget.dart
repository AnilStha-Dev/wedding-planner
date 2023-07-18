import '/backend/backend.dart';
import '/components/create_guest_new/create_guest_new_widget.dart';
import '/components/empty_list_tasks/empty_list_tasks_widget.dart';
import '/custom/custom_animations.dart';
import '/custom/custom_icon_button.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_util.dart';
import '/main.dart';
import '/pages/guest_details/guest_details_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'my_guest_model.dart';
export 'my_guest_model.dart';

class MyGuestWidget extends StatefulWidget {
  const MyGuestWidget({Key? key}) : super(key: key);

  @override
  _MyGuestWidgetState createState() => _MyGuestWidgetState();
}

class _MyGuestWidgetState extends State<MyGuestWidget>
    with TickerProviderStateMixin {
  late MyGuestModel _model;

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
    _model = createModel(context, () => MyGuestModel());

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
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            barrierColor: Color(0x230E151B),
            context: context,
            builder: (bottomSheetContext) {
              return Padding(
                padding: MediaQuery.of(bottomSheetContext).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 1.0,
                  child: CreateGuestNewWidget(),
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
          size: 28.0,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).accent3,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.menu,
            color: FlutterFlowTheme.of(context).success,
            size: 30.0,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavbarWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Guest List',
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Total Guests',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 18.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            200.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.refresh_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'myGuest'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: PagedListView<DocumentSnapshot<Object?>?, GuestRecord>(
                  pagingController: () {
                    final Query<Object?> Function(Query<Object?>) queryBuilder =
                        (guestRecord) => guestRecord.orderBy('created_time');
                    if (_model.pagingController != null) {
                      final query = queryBuilder(GuestRecord.collection);
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
                    _model.pagingQuery = queryBuilder(GuestRecord.collection);
                    _model.pagingController!
                        .addPageRequestListener((nextPageMarker) {
                      queryGuestRecordPage(
                        queryBuilder: (guestRecord) =>
                            guestRecord.orderBy('created_time'),
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
                  builderDelegate: PagedChildBuilderDelegate<GuestRecord>(
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
                      final listViewGuestRecord =
                          _model.pagingController!.itemList![listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GuestDetailsWidget(
                                  guestRef: listViewGuestRecord.reference,
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
                                          listViewGuestRecord.displayName!,
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
                                                listViewGuestRecord
                                                    .phoneNumber!,
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
