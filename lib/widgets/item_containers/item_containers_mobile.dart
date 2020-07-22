part of item_containers_widget;

class _ItemContainersMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.blue,
      color: Color(0xffF6F8F9),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        // color: Color(0xffF6F8F9),
        width: SizeConfig().xMargin(context, 45),
        height: SizeConfig().yMargin(context, 25),
        child: Column(
          children: [
            Container(
              width: SizeConfig().xMargin(context, 43),
              margin: const EdgeInsets.only(bottom: 6.0),
              decoration: BoxDecoration(
                  color: Color(0xffF6F8F9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: SizeConfig().yMargin(context, 10),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig().yMargin(context, 2.3)),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'MY FIRST TIME',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000693),
                                fontSize: SizeConfig().textSize(context, 2.4)),
                          ),
                        ),
                      ),
                    ),

                    // SizedBox(height: SizeConfig().yMargin(context, 4)),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig().xMargin(context, 16.3),
                          height: 1,
                          color: Colors.black45,
                        ),
                        Expanded(
                            child: Text(
                          '(Note)',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                            fontSize: SizeConfig().textSize(context, 1.7),
                          ),
                        )),
                        Container(
                          width: SizeConfig().xMargin(context, 16.3),
                          height: 1,
                          color: Colors.black45,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig().yMargin(context, 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Length: ',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8A8C92),
                              fontSize: SizeConfig().textSize(context, 1.8)),
                        ),
                        Text(
                          '250 words',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff27282B),
                              fontSize: SizeConfig().textSize(context, 1.8)),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig().yMargin(context, 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Created: ',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8A8C92),
                              fontSize: SizeConfig().textSize(context, 1.4)),
                        ),
                        // Spacer(),
                        // SizedBox(width: SizeConfig().xMargin(context, 7)),
                        Text(
                          '21st May, 2020',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff27282B),
                              fontSize: SizeConfig().textSize(context, 1.3)),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig().yMargin(context, 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shared: ',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8A8C92),
                              fontSize: SizeConfig().textSize(context, 1.4)),
                        ),
                        Spacer(),
                        Expanded(
                          child: Text(
                            'Not yet',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff27282B),
                                fontSize: SizeConfig().textSize(context, 1.6)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig().yMargin(context, 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last modified: ',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8A8C92),
                              fontSize: SizeConfig().textSize(context, 1.4)),
                        ),
                        // Spacer(),
                        Expanded(
                          child: Text(
                            '1st July, 2020',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff27282B),
                                fontSize: SizeConfig().textSize(context, 1.3)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
