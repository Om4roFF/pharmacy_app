part of 'bars.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topAppPadding =
        MediaQuery.of(context).padding.top + kToolbarHeight + 1;
    return Drawer(
      child: Column(children: [
        SizedBox(
            height: 150,
            child: Center(
                child: Image.asset(
              'assets/logo.png',
              scale: 4,
            ))),
        StyledTile(
          icon: Icons.category_outlined,
          text: 'Каталог',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Catalog()));
          },
          image: '',
          endText: '',
        ),
        StyledTile(
          icon: Icons.person_outline_sharp,
          text: 'Профиль',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          image: '',
          endText: '',
        ),
        const StyledTile(
          icon: Icons.disc_full_outlined,
          text: 'Скидки',
          onTap: null,
          image: '',
          endText: '',
        ),
        const StyledTile(
          icon: Icons.location_on_outlined,
          text: 'Аптеки',
          onTap: null,
          endText: '',
          image: '',
        ),
        const StyledTile(
          icon: Icons.headset_mic_outlined,
          text: 'Служба поддержки',
          image: '',
          endText: '',
        ),
        const StyledTile(
          icon: Icons.mail_outline_outlined,
          text: 'Контакты',
          image: '',
          endText: '',
        ),
        const StyledTile(
          icon: Icons.assignment_outlined,
          text: 'Конфидициальность',
          endText: '',
          image: '',
        ),
      ]),
    );
  }
}

class StyledTile extends StatelessWidget {
  final IconData icon;
  final String image;
  final String text;
  final String endText;
  final onTap;

  const StyledTile(
      {Key? key,
      required this.icon,
      required this.text,
      required this.image,
      required this.endText,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Divider(height: 1),
          Container(
            height: 60,
            color: Colors.black12.withOpacity(0.01),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(image),
                    Icon(icon),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(text),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text(endText),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}
