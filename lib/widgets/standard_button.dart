import 'package:methylene/theme.dart';
import 'package:flutter/material.dart';


class StandardButton extends StatefulWidget {
  final VoidCallback? onClick;
  final VoidCallback? onDoubleClick;
  final IconData? icon;
  final double? iconSize;
  final String? text;
  final Thematic? themeOverride;

  const StandardButton(
      {super.key,
        this.onClick,
        this.onDoubleClick,
        this.icon,
        this.iconSize,
        this.text,
        this.themeOverride,
      });
  @override
  State<StatefulWidget> createState() => _StandardButtonState();
}

class _StandardButtonState extends State<StandardButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    bool themeOverwritten = widget.themeOverride != null;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (O) => setState(() {isHover = true;}),
      onExit: (O) => setState(() {isHover = false;}),
      child: GestureDetector(
        onTap: widget.onClick,
        onDoubleTap: widget.onDoubleClick,
        child: Container(
          width: (widget.iconSize != null ? widget.iconSize! * 1.1 : 0) + (widget.text != null ? widget.text!.length * 11.4 : 0) + (widget.text != null && widget.iconSize != null ? 14 : 0),
          decoration: BoxDecoration(
            color:
            theme.,

            borderRadius:
            widget.themeOverride?.geometryOverride != null ? widget.themeOverride!.geometryOverride!.borderRadius : BorderRadius.all(Radius.circular(6 * (w ThematicStyles.borderRadiusFactor))),

          ),
          child: Padding(
            padding:
            themeOverwritten ? widget.themeOverride!.edgeInsets : EdgeInsets.all(0),


            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (
                    widget.icon != null
                        ? Padding(
                          padding: themeOverwritten ? widget.themeOverride!.edgeInsets : EdgeInsets.symmetric(horizontal: 3 * ThematicStyles.edgeInsetsFactor),
                          child: Icon(
                                                widget.icon,
                                                size: widget.iconSize != null ? widget.iconSize : 16,
                                                color: isHover
                            ? themeOverwritten
                              ? widget.themeOverride!.itemColorSelected
                              : ThematicColors.elementSelected
                            : themeOverwritten
                              ? widget.themeOverride!.itemColorUnselected
                              : ThematicColors.elementUnselected,
                                              ),
                        )
                        : SizedBox()
                ),
                (
                    widget.text != null
                        ? Padding(
                          padding: themeOverwritten ? widget.themeOverride!.edgeInsets : EdgeInsets.symmetric(horizontal: 6 * ThematicStyles.edgeInsetsFactor),
                          child: Text(
                                                widget.text!,
                                                textAlign: TextAlign.start,
                                                style: themeOverwritten ? widget.themeOverride!.textStyle : ThematicStyles.text(
                          color: isHover ? ThematicColors.elementSelected : ThematicColors.elementUnselected
                                                ),
                                              ),
                        )
                        : SizedBox()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}