import 'package:flutter/material.dart';

class GlobalappbarComponent extends StatelessWidget implements PreferredSizeWidget {
  const GlobalappbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 199, 153, 17),
      title: Text("CPU Socials"),
      actions: [Icon(Icons.donut_large_rounded)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
