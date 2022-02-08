import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../user_data/user_data_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateExpenseWidget extends StatefulWidget {
  const CreateExpenseWidget({Key key}) : super(key: key);

  @override
  _CreateExpenseWidgetState createState() => _CreateExpenseWidgetState();
}

class _CreateExpenseWidgetState extends State<CreateExpenseWidget> {
  String dropDownValue1;
  TextEditingController textController1;
  String dropDownValue2;
  TextEditingController textController2;
  TextEditingController textController3;
  String dropDownValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE6E6E6),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 300),
                reverseDuration: Duration(milliseconds: 300),
                child: UserDataWidget(),
              ),
              (r) => false,
            );
          },
        ),
        title: Text(
          'Add Transaction',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 200, 15, 0),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController1',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Amount you have spent',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF5D3FD3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF5D3FD3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    suffixIcon: textController1.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => textController1.clear(),
                            ),
                            child: Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.bodyText1,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: FlutterFlowDropDown(
                options: ['Income', 'Expense'].toList(),
                onChanged: (val) => setState(() => dropDownValue1 = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF303030),
                ),
                hintText: 'Transaction Type',
                icon: Icon(
                  Icons.arrow_drop_down_circle,
                  size: 15,
                ),
                fillColor: Color(0xFFE6E6E6),
                elevation: 2,
                borderColor: Color(0xFF5D3FD3),
                borderWidth: 0,
                borderRadius: 10,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: FlutterFlowDropDown(
                options: [
                  'Sundry Expense',
                  'Salary',
                  'Rent',
                  'Electricity Bills',
                  'Others',
                  'Hair Cut ',
                  'Pedicure & Manicure',
                  'Hair Dressing(Plaiting, Retouch & Cleansing)'
                ].toList(),
                onChanged: (val) => setState(() => dropDownValue2 = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF303030),
                ),
                hintText: 'Tag',
                icon: Icon(
                  Icons.arrow_drop_down_circle_rounded,
                  size: 15,
                ),
                fillColor: Color(0xFFE6E6E6),
                elevation: 2,
                borderColor: Color(0xFF5D3FD3),
                borderWidth: 0,
                borderRadius: 10,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: TextFormField(
                onChanged: (_) => EasyDebounce.debounce(
                  'textController2',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'When',
                  hintText: 'Date Of Transaction Entry',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF5D3FD3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF5D3FD3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.access_time_outlined,
                  ),
                  suffixIcon: textController2.text.isNotEmpty
                      ? InkWell(
                          onTap: () => setState(
                            () => textController2.clear(),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: TextFormField(
                onChanged: (_) => EasyDebounce.debounce(
                  'textController3',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                controller: textController3,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Note',
                  hintText: 'Any Other Info',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF5D3FD3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF5D3FD3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  suffixIcon: textController3.text.isNotEmpty
                      ? InkWell(
                          onTap: () => setState(
                            () => textController3.clear(),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: FlutterFlowDropDown(
                options:
                    ['Nateete', 'Makerere', 'Ntinda', 'Bugoloobi'].toList(),
                onChanged: (val) => setState(() => dropDownValue3 = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF303030),
                ),
                hintText: 'Location',
                icon: Icon(
                  Icons.add_location_alt,
                  size: 15,
                ),
                fillColor: Color(0xFFE6E6E6),
                elevation: 2,
                borderColor: Color(0xFF5D3FD3),
                borderWidth: 0,
                borderRadius: 10,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(70, 30, 70, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Save Transaction',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.tertiaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF303030),
                    fontWeight: FontWeight.w600,
                  ),
                  elevation: 12,
                  borderSide: BorderSide(
                    color: Color(0xFF5D3FD3),
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
