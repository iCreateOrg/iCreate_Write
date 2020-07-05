import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:write/UI/widgets/drawer/drawer.dart';
import 'dart:math' as math;

import 'package:write/services/utils/color.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          
        ],
        backgroundColor: blueColor,
        title: Text('WRITE', style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700
        ),
        
        ),
      ),
      drawer: HomeDrawer(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: _SliverAppBarDelegate(
                  minHeight: 60.0,
                  maxHeight: 200.0,
                ),
              )
            ];
          },
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    );
  }
}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);

//   final TabBar _tabBar;

//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;

  _SliverAppBarDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = maxHeight - shrinkOffset;
    final proportion = 2 - (maxHeight / appBarSize);
    final photoToButton = 160 * proportion;
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;

    return new SizedBox.expand(
      child: Container(
        color: blackColor,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: 10.0,
              child: CircleAvatar(
                minRadius: 20.0,
                maxRadius: 75.0 * proportion > 20 ? 75.0 * proportion : 20.0,
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/75.jpg'),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: photoToButton,
              child: Opacity(
                opacity: percent,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Some guy',
                    style: TextStyle(
                        color: Colors.blue, fontSize: 14.0 * proportion),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: appBarSize - 1.0 > 59.0 ? appBarSize - 1 : 59.0,
              child: const Divider(
                // color: Colors.grey,
                height: 1,
                thickness: 0.5,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight;
  }
}
