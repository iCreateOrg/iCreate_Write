part of splashscreen_view;

class _SplashscreenDesktop extends StatelessWidget {
  final SplashscreenViewModel viewModel;

  _SplashscreenDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SplashscreenDesktop')),
    );
  }
}