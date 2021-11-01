part of 'bars.dart';

@immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({required Key key, this.title = 'false'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Appbar rebuild');
    return AppBar(
      // automaticallyImplyLeading: true,
      // leading: Icon(Icons.menu_outlined),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      // actions: [
      //   isCartPage?Container():GestureDetector(
      //     onTap: (){
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
      //     },
      //     child: Padding(
      //       padding: EdgeInsets.only(right: 14, top: 2),
      //       child: Center(
      //         child: Badge(
      //             badgeColor: Colors.black,
      //             badgeContent: Row(
      //               children: [
      //                 Text('0',
      //                   style: TextStyle(color: Colors.white, ),textAlign: TextAlign.start,),
      //               ],
      //             ),
      //             child: Icon(Icons.shopping_cart_outlined) ),
      //       ),
      //     ),
      //   )
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
