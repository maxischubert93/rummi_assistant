import 'package:flutter/material.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class NewGameCard extends StatelessWidget {
  const NewGameCard({
    required this.onStartGame,
    super.key,
  });

  final VoidCallback onStartGame;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: context.geometry.maxContentWidth,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colors.secondary,
            context.colors.tertiary,
          ],
        ),
        borderRadius: context.geometry.radiusLarge,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow.withValues(alpha: 0.1),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: PlatformClickListener(
        onTap: onStartGame,
        child: Padding(
          padding: context.geometry.largePadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Decorative tiles at the top
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _RummikubTile(
                    number: '1',
                    color: context.colors.secondary,
                  ),
                  context.geometry.spacingSmall.horizontalBox,
                  _RummikubTile(
                    number: '2',
                    color: context.colors.tertiary,
                  ),
                  context.geometry.spacingSmall.horizontalBox,
                  _RummikubTile(
                    number: '3',
                    color: context.colors.primary,
                  ),
                ],
              ),
              context.geometry.spacingMedium.verticalBox,

              // Start button
              Container(
                padding: context.geometry.mediumPadding,
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: context.geometry.radiusMedium,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.casino_outlined,
                      color: context.colors.onPrimary,
                      size: 32,
                    ),
                    context.geometry.spacingMedium.horizontalBox,
                    Text(
                      context.localizations.newGameCardStartGame,
                      style: context.typography.titleLarge.copyWith(
                        color: context.colors.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RummikubTile extends StatelessWidget {
  const _RummikubTile({
    required this.number,
    required this.color,
  });

  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 64,
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: context.geometry.radiusSmall,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: context.typography.headlineMedium.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
            fontFamily: 'LuckiestGuy',
          ),
        ),
      ),
    );
  }
}
