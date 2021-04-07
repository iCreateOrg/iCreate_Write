part of drawer_widget;

class _DrawerTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: SizeConfig().xMargin(context, 140),
            height: kToolbarHeight,
            color: newBlue,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'WRITE',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig().textSize(context, 3.5),
                  ),
                ),
              ),
            ),
          ),
          DrawerItem(text: 'Show all documents'),
          DrawerItem(text: 'Show notes only'),
          DrawerItem(text: 'Show tasks only'),
          Spacer(),
          DrawerItemRow(text: 'Profile'),
          DrawerItemRow(text: 'Favorites'),
          DrawerItemRow(text: 'Reminders'),
          DrawerItemRow(text: 'Settings'),
        ],
      ),
    );
  }
}
