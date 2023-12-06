// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart'
    show Axis, WrapAlignment, WrapCrossAlignment, immutable;

import '../../../widgets/toolbar/base_toolbar.dart';
import 'toolbar_shared_configurations.dart';

@immutable
class QuillToolbarConfigurations extends QuillSharedToolbarProperties {
  const QuillToolbarConfigurations({
    this.childrenBuilder,
    super.axis = Axis.horizontal,
    super.toolbarSize = kDefaultIconSize * 2,
    super.toolbarSectionSpacing = kToolbarSectionSpacing,
    super.toolbarIconAlignment = WrapAlignment.center,
    super.toolbarIconCrossAlignment = WrapCrossAlignment.center,
    super.color,
    super.sectionDividerColor,
    super.sectionDividerSpace,
    super.linkDialogAction,
    super.multiRowsDisplay = true,
    super.decoration,

    /// Note this only used when you using the quill toolbar buttons like
    /// `QuillToolbarHistoryButton` inside it
    super.buttonOptions = const QuillToolbarButtonOptions(),
  });

  final QuillBaseToolbarChildrenBuilder? childrenBuilder;

  @override
  List<Object?> get props => [];

  QuillToolbarConfigurations copyWith({
    QuillBaseToolbarChildrenBuilder? childrenBuilder,
  }) {
    return QuillToolbarConfigurations(
      childrenBuilder: childrenBuilder ?? this.childrenBuilder,
    );
  }
}
