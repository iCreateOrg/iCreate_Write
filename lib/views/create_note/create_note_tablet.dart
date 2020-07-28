part of create_note_view;

class _CreateNoteTablet extends StatelessWidget {
  final CreateNoteViewModel viewModel;

  _CreateNoteTablet(this.viewModel);

 @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF1F3F5),
      appBar: AppBar(
        title: Text('WRITE'),
        backgroundColor: newBlue,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => NavigatorService().pop()),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: McGyver.rsDoubleW(context, 5)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: McGyver.rsDoubleH(context, 4),
                ),
                Row(
                  children: [
                    Container(
                      width: McGyver.rsDoubleW(context, 13),
                      height: McGyver.rsDoubleH(context, 13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF6F8F9),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.cancel,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: McGyver.rsDoubleW(context, 13),
                      height: McGyver.rsDoubleH(context, 13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF6F8F9),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.done,
                        size: 40,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 2),
                ),
                Row(
                  children: [
                    Text(
                      'TITLE: ',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: SizeConfig().textSize(context, 2.4)),
                    ),
                    SizedBox(
                      width: McGyver.rsDoubleW(context, 10),
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(24, 197, 217, 1),
                                width: 1.0),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 2),
                ),
                Row(
                  children: [
                    Text(
                      'TYPE: ',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: SizeConfig().textSize(context, 2.4)),
                    ),
                    Spacer(),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black38, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DropdownButton(
                          // itemHeight: 100,
                          elevation: 0,
                          underline: Container(),
                          hint: Text(
                              'Please choose a location'), // Not necessary for Option 1
                          value: viewModel.currentType,
                          onChanged: (newValue) {
                            viewModel.setState(newValue);
                          },
                          items: viewModel.type.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '3rd July, 2020',
                      style: GoogleFonts.montserrat(
                        fontSize: SizeConfig().textSize(context, 2),
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: GestureDetector(
                    onTap: () => viewModel.setBool(true),
                    child: Container(
                      width: width,
                      height: McGyver.rsDoubleH(context, 70),
                      decoration: BoxDecoration(
                        color: Color(0xffF7F8F9),
                        border: Border.all(color: Color(0xffd4dff4), width: 1),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: !viewModel.typing
                          ? Center(
                              child: Text(
                                'Type here...',
                                style: GoogleFonts.montserrat(
                                  fontSize: SizeConfig().textSize(context, 3),
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xffDCCECE),
                                  letterSpacing: 2,
                                ),
                              ),
                            )
                          : TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              maxLengthEnforced: false,
                              minLines: null,
                              expands: true,
                              decoration: InputDecoration(
                                  // labelText: "Type here...",
                                  // // alignLabelWithHint: true,
                                  // labelStyle: GoogleFonts.montserrat(
                                  //   fontSize: SizeConfig().textSize(context, 3),
                                  //   fontWeight: FontWeight.normal,
                                  //   fontStyle: FontStyle.normal,
                                  //   color: Color(0xffDCCECE),
                                  //   letterSpacing: 2,
                                    
                                  // ),
                                  border: InputBorder.none),
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 3),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
