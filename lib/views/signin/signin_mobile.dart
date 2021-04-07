
part of signin_view;


class _SigninMobile extends HookWidget {
  final SigninViewModel viewModel;

  _SigninMobile(this.viewModel);


  @override
  Widget build(BuildContext context) {
    final _passwordController = useTextEditingController();

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
            child: _container(context, _emailController, _passwordController),
          )
        ],
      ),
    );
  }

  Widget _container(BuildContext context, TextEditingController _email, TextEditingController _password) {
    return Container(
      // color: Colors.white,
      width: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 350)),
      height: SizeConfig().xMargin(context, SizeConfig().getXSize(context, 700)),
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig().yMargin(context, 22)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    // navigation.pushFrom(context, Login());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      child: SvgPicture.asset('assets/images/Vector 6.svg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
              _form(context, _email, _password),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
              _button(_email, _password),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button(TextEditingController _email, TextEditingController _password) {
    return Builder(builder: (BuildContext _context) {
      return Container(
          width: SizeConfig().xMargin(_context, 70),
          height: SizeConfig().yMargin(_context, 7),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            onPressed: () {},
            color: blueColor,
            child: Text(
              'SIGN UP',
              style: GoogleFonts.montserrat(
                  fontSize: SizeConfig().textSize(_context, 2.7),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ));
    });
  }

  Widget _form(BuildContext context, TextEditingController _email, TextEditingController _password) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address:',
            style:
                GoogleFonts.montserrat(fontSize: SizeConfig().textSize(context, 2.4)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          TextFieldWidget(password: false,),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          Text(
            'Create a username:',
            style:
                GoogleFonts.montserrat(fontSize: SizeConfig().textSize(context, 2.4)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          TextFieldWidget(password: false,),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          Text(
            'Password:',
            style:
                GoogleFonts.montserrat(fontSize: SizeConfig().textSize(context, 2.4)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
          TextFieldWidget(password: true,),
          SizedBox(
            height: SizeConfig().yMargin(context, 2.4),
          ),
          Text(
            'Confirm Password:',
            style:
                GoogleFonts.montserrat(fontSize: SizeConfig().textSize(context, 2.4)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 1),
          ),
         TextFieldWidget(password: true),
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

  Widget _logo(BuildContext context) {
    return Container(
      width: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 200)),
      height: SizeConfig().xMargin(context, SizeConfig().getXSize(context, 80)),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/Group 11 (2).png'),
      )),
    );
  }
}
