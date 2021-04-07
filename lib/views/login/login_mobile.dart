part of login_view;

class _LoginMobile extends HookWidget {
  final LoginViewModel viewModel;

  _LoginMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
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

  Widget _container(
      BuildContext context,
      TextEditingController _emailController,
      TextEditingController _passwordController) {
    return Container(
      width: SizeConfig().yMargin(context, SizeConfig().getYSize(context, 350)),
      height:
          SizeConfig().xMargin(context, SizeConfig().getXSize(context, 600)),
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig().yMargin(context, 10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _logo(context),
              SizedBox(
                height: SizeConfig().yMargin(context, 5),
              ),
              _form(context, _emailController, _passwordController),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: GestureDetector(
                  onTap: () {
                    // navigation.pushTo(context, ForgotPassword());
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password ?',
                        style: GoogleFonts.poppins(
                            fontSize: SizeConfig().textSize(context, 2),
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
              _button(),
              SizedBox(
                height: SizeConfig().yMargin(context, 2),
              ),
              GestureDetector(
                onTap: () {
                  NavigatorService().navigateToPage(
                      MaterialPageRoute(builder: (context) => SigninView()));
                },
                child: Text(
                  'No Account? Sign Up here',
                  style: GoogleFonts.poppins(
                      fontSize: SizeConfig().textSize(context, 2.2),
                      fontWeight: FontWeight.w500),
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
          width: SizeConfig().xMargin(_context, 78),
          height: SizeConfig().yMargin(_context, 7),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            onPressed: () {},
            color: blueColor,
            child: Text(
              'LOGIN',
              style: GoogleFonts.montserrat(
                  fontSize: SizeConfig().textSize(_context, 2.7),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ));
    });
  }

  Widget _form(BuildContext context, TextEditingController _emailController,
      TextEditingController _passwordController) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username:',
            style: GoogleFonts.montserrat(
                fontSize: SizeConfig().textSize(context, 2.7)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 2),
          ),
          TextFieldWidget(password: false, viewModel: viewModel,),
          SizedBox(
            height: SizeConfig().yMargin(context, 2.4),
          ),
          Text(
            'Password:',
            style: GoogleFonts.montserrat(
                fontSize: SizeConfig().textSize(context, 2.7)),
          ),
          SizedBox(
            height: SizeConfig().yMargin(context, 2),
          ),
          _textField(_passwordController, true)
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
        onChanged: (value) {
          password
              ? viewModel.updatePasword(value)
              : viewModel.updateUsername(value);
        },
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
