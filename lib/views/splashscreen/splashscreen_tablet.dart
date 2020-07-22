part of splashscreen_view;

class _SplashscreenTablet extends StatelessWidget {
  final SplashscreenViewModel viewModel;

  _SplashscreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SplashscreenTablet')),
    );
  }
}