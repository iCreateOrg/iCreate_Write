part of note_screen_view;

class _NoteScreenDesktop extends StatelessWidget {
  final NoteScreenViewModel viewModel;

  _NoteScreenDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoteScreenDesktop')),
    );
  }
}