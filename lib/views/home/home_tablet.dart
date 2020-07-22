part of home_view;

class _HomeTablet extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('WRITE'),
          backgroundColor: newBlue,
          actions: [
            SvgPicture.asset('assets/images/Group 19.svg'),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
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
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      height: SizeConfig().yMargin(context, 14),
                      width: width,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: newBlue)),
                                    child: CircleAvatar(
                                      radius: 23,
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Good morning, iCreate!',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          SizeConfig().textSize(context, 2)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8, top: SizeConfig().yMargin(context, 2)),
                        child: Text(
                          '10:38AM SUN',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig().textSize(context, 2)),
                        ),
                      )),
                ],
              ),
              Container(
                width: width,
                // height: height,
                child: Center(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                      ItemContainersWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: viewModel.increment,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
