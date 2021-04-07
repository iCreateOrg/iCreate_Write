part of create_note_view;

class _CreateNoteDesktop extends StatelessWidget {
  final CreateNoteViewModel viewModel;

  _CreateNoteDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CreateNoteDesktop')),
    );
  }
}