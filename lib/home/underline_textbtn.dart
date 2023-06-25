import 'package:flutter/material.dart';

import 'package:ynclasshouse/consts/colors.dart';

class UnderlinedTextButton extends StatefulWidget {
  final Item item;

  const UnderlinedTextButton({super.key, required this.item});

  @override
  State createState() => _UnderlinedTextButtonState();
}

class _UnderlinedTextButtonState extends State<UnderlinedTextButton> {
  bool _isHovered = false;
  double _underlineWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        onTap: widget.item.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.item.name,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.only(top: 8),
                height: _isHovered ? 2 : 2,
                width: _underlineWidth,
                color: _isHovered || widget.item.isSelected ? kSecondryColor : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _underlineWidth = context.size!.width - 22;
      });
    });
  }
}

class Item {
  final String name;
  final bool isSelected;
  final VoidCallback onPressed;

  Item(this.name, this.isSelected, this.onPressed);
}
