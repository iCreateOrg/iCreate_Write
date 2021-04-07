part of drawer_widget;

class _DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: SizeConfig().xMargin(context, 100),
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
          DrawerItemRow(
            text: 'Settings',
            onTap: () => Navigation().pushTo(SettingsView()),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;

  const DrawerItem({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig().yMargin(context, 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig().textSize(context, 2.6),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerItemRow extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;

  const DrawerItemRow({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
          child: Container(
          height: SizeConfig().yMargin(context, 8),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig().textSize(context, 2.6),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Icon(Icons.account_circle),
              )
            ],
          )),
    );
  }
}
