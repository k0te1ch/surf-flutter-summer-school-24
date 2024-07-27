import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/uikit/colors/app_color_scheme.dart';
import 'package:surf_flutter_summer_school_24/uikit/text/app_text_scheme.dart';

/// A mixin with [AppColorScheme].
/// Used with [WidgetModel] subclasses.
mixin ThemeWMMixin<W extends ElementaryWidget, M extends ElementaryModel> on WidgetModel<W, M>
    implements ThemeIModelMixin {
  late AppColorScheme _colorScheme;
  late AppTextScheme _textScheme;

  @override
  AppColorScheme get colorScheme => _colorScheme;

  @override
  AppTextScheme get textScheme => _textScheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _colorScheme = context.appColorScheme;
    _textScheme = context.appTextScheme;
  }
}

/// A mixin for [ThemeWMMixin] for get [AppColorScheme].
mixin ThemeIModelMixin implements IWidgetModel {
  /// App color scheme.
  AppColorScheme get colorScheme;

  /// App text style scheme.
  AppTextScheme get textScheme;
}
