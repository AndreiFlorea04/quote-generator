import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quote_generator/common/common.dart';
import 'package:quote_generator/common/l10n/l10n.dart';

class EmptySearchQuoteScreen extends StatelessWidget {
  const EmptySearchQuoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: Dimensions.iconSizeLarger,
          )
              .animate(
                onPlay: (controller) => controller.repeat(),
              )
              .scale(
                duration: 3.seconds,
                curve: Curves.elasticInOut,
              ),
          Dimensions.kVerticalSpaceSmall,
          Text(
            l10n.searchQuoteEmptyScreenTitle,
            style: theme.textTheme.headlineSmall,
          ),
          Dimensions.kVerticalSpaceSmallest,
          Text(
            l10n.searchQuoteEmptyScreenDescritpion,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
