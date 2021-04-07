part of text_field_widget;

class _TextFieldMobile extends StatelessWidget {
  final bool password;
  final LoginViewModel viewModel;
  const _TextFieldMobile({Key key, this.password, this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print(viewModel.username);
    // print(viewModel.password);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        // controller: controller,
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
}