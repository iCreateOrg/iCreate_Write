part of splashscreen_view;

class _SplashscreenTablet extends StatelessWidget {
  final SplashscreenViewModel viewModel;

  _SplashscreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: gradient
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _logo(context)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: SizeConfig().yMargin(context, 4)),
              child: _text(context)))
        ],
      ),
    );
  }

  Widget _logo(BuildContext context){
    return Container(
      width: SizeConfig().xMargin(context, SizeConfig().getXSize(context, 290)),
      height: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 250)),
      // color: Colors.white,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/lf30_AGoC3n.json].png'))
      ),
    );
  }

  Widget _text(BuildContext context){
    return Container(
      width: SizeConfig().xMargin(context, SizeConfig().getXSize(context, 250)),
      height: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 75)),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/Group 11 (1).png'))
      ),
    );
  }
}