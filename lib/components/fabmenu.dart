import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class FabMenu extends StatefulWidget {
  const FabMenu({Key? key}) : super(key: key);

  @override
  State<FabMenu> createState() => _MyFabMenuState();
}

class _MyFabMenuState extends State<FabMenu>
    with SingleTickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  Color bubbleBackgroundColor = const Color.fromRGBO(97, 167, 167, 1);

  @override
  Widget build(BuildContext context) {
    return FloatingActionBubble(
      items: <Bubble>[
        Bubble(
          title: "Home",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.home,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "Rooms",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.bed,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/rooms', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "Prices & Offers",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.sell,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/prices', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "Gallery",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.photo_album,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/gallery', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "Finishing Touches",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.local_florist,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/finishingtouches', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "Contact",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.smartphone,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/contact', ModalRoute.withName('/'));
          },
        ),
        Bubble(
          title: "About",
          iconColor: Colors.white,
          bubbleColor: bubbleBackgroundColor,
          icon: Icons.info,
          titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/about', ModalRoute.withName('/'));
          },
        ),
      ],
      animation: _animation!,
      onPress: () => _animationController!.isCompleted
          ? _animationController!.reverse()
          : _animationController!.forward(),
      backGroundColor: bubbleBackgroundColor,
      iconColor: Colors.white,
      iconData: Icons.menu,
    );
  }
}
