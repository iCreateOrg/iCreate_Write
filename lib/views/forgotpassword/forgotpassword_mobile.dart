part of forgotpassword_view;

class _ForgotpasswordMobile extends HookWidget {
  final ForgotpasswordViewModel viewModel;

  _ForgotpasswordMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(gradient: authGradient),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage('assets/images/Vector 1.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage('assets/images/Vector 2.png'),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _container(context, _emailController),
          )
        ],
      ),
    );
  }

  Widget _container(
      BuildContext context,
      TextEditingController _emailController) {
    return Container(
      width: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 350)),
      height:
          SizeConfig().xMargin(context, SizeConfig().getXSize(context, 600)),
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig().yMargin(context, 10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig().yMargin(context, 5),
              ),
              Text('Forgot Your Password ?', style: GoogleFonts.poppins(
                fontSize: SizeConfig().textSize(context, 3),
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: SizeConfig().yMargin(context, 10),
              ),
              _form(context, _emailController),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
             
              SizedBox(
                height: SizeConfig().yMargin(context, 6),
              ),
              _button(),
              SizedBox(
                height: SizeConfig().yMargin(context, 12),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                                child: Text('Go Back', style: GoogleFonts.poppins(
                    fontSize: SizeConfig().textSize(context, 3),
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Builder(builder: (BuildContext _context) {
      return Container(
          width: SizeConfig().xMargin(_context, 80),
          height: SizeConfig().yMargin(_context, 7),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            onPressed: () {},
            color: blueColor,
            child: Text(
              'RESET PASSWORD',
              style: GoogleFonts.montserrat(
                  fontSize: SizeConfig().textSize(_context, 2.7),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ));
    });
  }

  Widget _form(BuildContext context, TextEditingController _email) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address:',
            style:
                GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().textSize(context, 2.4)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          TextFieldWidget(password: false,),
          
        ],
      ),
    );
  }

  Widget _textField(TextEditingController controller, bool password) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: password
                ? IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {})
                : SizedBox(),
            border: InputBorder.none),
      ),
    );
  }
}