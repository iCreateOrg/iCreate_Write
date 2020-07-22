part of note_screen_view;

class _NoteScreenMobile extends StatelessWidget {
  final NoteScreenViewModel viewModel;

  _NoteScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoteScreenMobile')),
    );
  }
}