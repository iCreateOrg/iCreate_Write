part of create_note_view;

class _CreateNoteTablet extends StatelessWidget {
  final CreateNoteViewModel viewModel;

  _CreateNoteTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CreateNoteTablet')),
    );
  }
}