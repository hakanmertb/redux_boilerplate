import 'package:flutter/material.dart';

class RapiderButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final ButtonShape shape;
  final ButtonSize size;
  final ButtonColorType colorType;
  final IconData? icon;
  final IconPlacement iconPlacement;
  final bool transparent;
  final bool loading;
  final bool block;
  final bool disabled;
  final String? redirectUrl;
  final ButtonRedirectTarget redirectTarget;
  final String? tooltipText;
  final TooltipPlacement tooltipPlacement;
  final BorderConfig? borderSettings;
  final SpacingConfig? marginSettings;
  final SpacingConfig? paddingSettings;
  final BoxShadowConfig? shadowSettings;
  final ColorConfig? customColorSettings;
  final SizeConfig? customSizeSettings;
  final String? popconfirmTitle;
  final bool emitWithoutPopconfirm;
  final String? popconfirmCancelText;
  final String? popconfirmOkText;
  final bool popconfirmOkDanger;
  final VoidCallback? onConfirm;
  final VoidCallback? onPopconfirmCancel;

  const RapiderButton({
    super.key,
    this.text,
    this.onPressed,
    this.type = ButtonType.default_,
    this.shape = ButtonShape.default_,
    this.size = ButtonSize.default_,
    this.colorType = ButtonColorType.default_,
    this.icon,
    this.iconPlacement = IconPlacement.left,
    this.transparent = false,
    this.loading = false,
    this.block = false,
    this.disabled = false,
    this.redirectUrl,
    this.redirectTarget = ButtonRedirectTarget.page,
    this.tooltipText,
    this.tooltipPlacement = TooltipPlacement.top,
    this.borderSettings,
    this.marginSettings,
    this.paddingSettings,
    this.shadowSettings,
    this.customColorSettings,
    this.customSizeSettings,
    this.popconfirmTitle,
    this.emitWithoutPopconfirm = true,
    this.popconfirmCancelText,
    this.popconfirmOkText,
    this.popconfirmOkDanger = false,
    this.onConfirm,
    this.onPopconfirmCancel,
  });

  @override
  Widget build(BuildContext context) {
    Widget buttonContent = _buildButtonContent();

    if (loading) {
      buttonContent = const CircularProgressIndicator();
    }

    Widget button = SizedBox(
      height: customSizeSettings == null ? customSizeSettings!.height : null,
      width: customSizeSettings == null ? customSizeSettings!.width : null,
      child: ElevatedButton(
        onPressed: disabled ? null : _handleButtonPress,
        style: _getButtonStyle(context),
        child: buttonContent,
      ),
    );

    if (tooltipText != null) {
      button = Tooltip(
        message: tooltipText!,
        preferBelow: tooltipPlacement == TooltipPlacement.bottom,
        child: button,
      );
    }

    if (block) {
      button = SizedBox(width: double.infinity, child: button);
    }

    return Padding(
      padding: _getPadding(),
      child: button,
    );
  }

  Widget _buildButtonContent() {
    List<Widget> children = [];
    if (icon != null) {
      children.add(Icon(icon));
    }
    if (text != null) {
      children.add(Text(
        text!,
        style: const TextStyle(),
      ));
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: iconPlacement == IconPlacement.left
          ? children
          : children.reversed.toList(),
    );
  }

  void _handleButtonPress() {
    if (emitWithoutPopconfirm ||
        popconfirmTitle == null ||
        popconfirmTitle!.isEmpty) {
      onPressed?.call();
      onConfirm?.call();
      _handleRedirect();
    } else {
      // Implement popconfirm logic here
      // This would typically involve showing a dialog and calling onConfirm or onPopconfirmCancel based on user action
    }
  }

  void _handleRedirect() {
    if (redirectUrl != null && redirectTarget != ButtonRedirectTarget.page) {
      // Implement external URL opening logic here
      // This might involve using a plugin like url_launcher
    }
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor:
          transparent ? Colors.transparent : _getButtonColor(context),
      shape: _getButtonShape(),
      padding: _getPadding(),
      elevation: transparent ? 0 : null,
    ).copyWith(
      side: _getBorderSide(),
      shadowColor:
          WidgetStateProperty.resolveWith((states) => shadowSettings?.color),
    );
  }

  Color _getButtonColor(BuildContext context) {
    if (customColorSettings != null) {
      return customColorSettings!.color ?? Theme.of(context).primaryColor;
    }
    switch (colorType) {
      case ButtonColorType.primary:
        return Theme.of(context).primaryColor;
      case ButtonColorType.danger:
        return Colors.red;
      case ButtonColorType.success:
        return Colors.green;
      default:
        return Theme.of(context).buttonTheme.colorScheme!.primary;
    }
  }

  OutlinedBorder _getButtonShape() {
    double radius = borderSettings?.radius ?? 4.0;
    switch (shape) {
      case ButtonShape.round:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
      case ButtonShape.circle:
        return const CircleBorder();
      default:
        return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius));
    }
  }

  WidgetStateProperty<BorderSide?>? _getBorderSide() {
    if (borderSettings != null) {
      return WidgetStateProperty.all(BorderSide(
        color: borderSettings!.color ?? Colors.transparent,
        width: borderSettings!.width ?? 1,
      ));
    }
    return null;
  }

  EdgeInsets _getPadding() {
    if (paddingSettings != null) {
      return EdgeInsets.fromLTRB(
        paddingSettings!.left ?? 0,
        paddingSettings!.top ?? 0,
        paddingSettings!.right ?? 0,
        paddingSettings!.bottom ?? 0,
      );
    }
    return EdgeInsets.zero;
  }
}

enum ButtonType { default_, primary, dashed, link }

enum ButtonShape { default_, round, circle }

enum ButtonSize { default_, small, large, extraSmall }

enum ButtonColorType { default_, primary, danger, success }

enum IconPlacement { left, right }

enum ButtonRedirectTarget { page, self, blank }

enum TooltipPlacement { top, bottom }

class BorderConfig {
  final Color? color;
  final double? width;
  final double? radius;

  BorderConfig({this.color, this.width, this.radius});
}

class SpacingConfig {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  SpacingConfig({this.left, this.top, this.right, this.bottom});
}

class BoxShadowConfig {
  final Color? color;
  final double? blurRadius;
  final Offset? offset;

  BoxShadowConfig({this.color, this.blurRadius, this.offset});
}

class ColorConfig {
  final Color? color;

  ColorConfig({this.color});
}

class SizeConfig {
  final double? width;
  final double? height;

  SizeConfig({this.width, this.height});
}
