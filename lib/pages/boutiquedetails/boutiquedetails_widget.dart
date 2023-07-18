import '/backend/backend.dart';
import '/custom/custom_theme.dart';
import '/custom/custom_util.dart';
import '/custom/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'boutiquedetails_model.dart';
export 'boutiquedetails_model.dart';

class BoutiquedetailsWidget extends StatefulWidget {
  const BoutiquedetailsWidget({
    Key? key,
    this.boutiquedetails,
  }) : super(key: key);

  final WeddingDressRecord? boutiquedetails;

  @override
  _BoutiquedetailsWidgetState createState() => _BoutiquedetailsWidgetState();
}

class _BoutiquedetailsWidgetState extends State<BoutiquedetailsWidget> {
  late BoutiquedetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoutiquedetailsModel());
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 32.0,
          ),
        ),
        title: Text(
          widget.boutiquedetails!.botiqueName!,
          style: FlutterFlowTheme.of(context).headlineMedium,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        widget.boutiquedetails!.dressImage!,
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 230.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            widget.boutiquedetails!.botiqueName!,
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            widget.boutiquedetails!.boutiquedetails!,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchUrl(Uri(
                          scheme: 'tel',
                          path:
                              widget.boutiquedetails!.boutiquephone!.toString(),
                        ));
                      },
                      text: 'Call Now',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 60.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).info,
                        textStyle:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
