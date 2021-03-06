import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class ModalEntry extends StatelessWidget {
  const ModalEntry({
    Key? key,
    this.onClose,
    this.menu,
    this.visible,
    this.menuAnchor,
    this.childAnchor,
    this.child,
  }) : super(key: key);

  final VoidCallback? onClose;
  final Widget? menu;
  final bool? visible;
  final Widget? child;
  final Alignment? menuAnchor;
  final Alignment? childAnchor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: visible! ? onClose : null,
      child: PortalEntry(
        visible: visible!,
        portal: menu,
        portalAnchor: menuAnchor,
        childAnchor: childAnchor,
        child: IgnorePointer(
          ignoring: visible!,
          child: child,
        ),
      ),
    );
  }
}
