import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsTabRow extends StatefulWidget {
  const IconsTabRow({super.key});

  @override
  State<IconsTabRow> createState() => _IconsTabRowState();
}

class _IconsTabRowState extends State<IconsTabRow> {
  final _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      scrollDirection: Axis.horizontal,
      itemCount: _icons.length,
      itemBuilder: (context, index) {
        final icon = _icons[index];
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconsTabItem(
              icon: icon,
              isSelected: _selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}

class IconsTabItem extends StatelessWidget {
  const IconsTabItem({
    required this.icon,
    required this.isSelected,
    super.key,
  });

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).colorScheme.secondary
            : const Color(0xFFE7EBEE),
        shape: BoxShape.circle,
      ),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Icon(
          icon,
          size: 25,
          color: isSelected
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}
