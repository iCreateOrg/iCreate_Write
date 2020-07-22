part of note_screen_view;

class _NoteScreenTablet extends StatelessWidget {
  final NoteScreenViewModel viewModel;

  _NoteScreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NoteScreenTablet')),
    );
  }
}